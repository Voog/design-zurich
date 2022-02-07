;(function($) {
  // ===========================================================================
  // Binds site search functionality.
  // ===========================================================================
  var bindSiteSearch = function(searchForm, languageCode, noResultsString) {
    if (searchForm) {
      var search = new VoogSearch(searchForm, {
        // This defines the number of results per query.
        per_page: 10,
        // Language code for restricting the search to page language.
        lang: languageCode,
        // If given, an DOM element results are rendered inside that element
        resultsContainer: $('.js-voog-search-modal-inner').get(0),
        // Defines if modal should close on sideclick.
        sideclick: true,
        // Mobile checkpoint
        mobileModeWidth: 480,
        // Updates results on every keypress.
        updateOnKeypress: true,
        // String for feedback if no results are found.
        noResults: noResultsString
      });
    }
  };

  var bindSiteSearchFrontPage = function(searchForm, languageCode, noResultsString) {
    if (searchForm) {
      var search = new VoogSearch(searchForm, {
        // This defines the number of results per query.
        per_page: 10,
        // Language code for restricting the search to page language.
        lang: languageCode,
        // If given, an DOM element results are rendered inside that element
        resultsContainer: $('.js-voog-search-inline-modal-inner').get(0),
        // Defines if modal should close on sideclick.
        sideclick: true,
        // Mobile checkpoint
        mobileModeWidth: 480,
        // Updates results on every keypress.
        updateOnKeypress: true,
        // String for feedback if no results are found.
        noResults: noResultsString
      });
    }
  };

  var editmode = $('html').hasClass('editmode');

  // Function to limit the rate at which a function can fire.
  var debounce = function(func, wait, immediate) {
    var timeout;
    return function() {
      var context = this, args = arguments;
      var later = function() {
        timeout = null;
        if (!immediate) func.apply(context, args);
      };
      var callNow = immediate && !timeout;
      clearTimeout(timeout);
      timeout = setTimeout(later, wait);
      if (callNow) func.apply(context, args);
    };
  };

  var bindSideClicks = function() {
    $('.content, .sections, .footer').on('mousedown', function(event) {
      if (!$(event.target).closest('.js-prevent-sideclick').length) {
        $('.js-popover').removeClass('expanded');

        if ($('body').hasClass('search-open')) {
         $('.js-search-close-btn').trigger('click');
        }
      };
    });
  };

  // Handles mouse clicks on different buttons and sections of the web page.
  var handleElementsClick = function() {
    // Toggles the popover main menu (visible on smalles screens).
    $('.js-menu-btn').click(function(event) {
      event.stopPropagation();
      $(this).toggleClass('open');
      $('.js-menu-main').toggleClass('expanded');

      if ($('.js-search-close-btn').hasClass('open')) {
        $('.js-search-close-btn').trigger('click');
      }
    });

    // Toggles the popover language menu.
    $('.js-menu-lang-btn').click(function(event) {
      event.stopPropagation();
      $('.js-menu-lang-popover').toggleClass('expanded');
    });

    // Opens the search modal.
    $('.js-search-open-btn').click(function(event) {
      event.stopPropagation();
      if ($('.js-menu-main').hasClass('expanded')) {
        $('.js-menu-main').removeClass('expanded');
        $('.js-menu-btn').removeClass('open');
      }

      $(this).addClass('open');
      $('body').addClass('search-open');
      $('.js-search-close-btn').addClass('open');
      $('.js-search').addClass('active');
      $('.js-search-inner').css({'margin-top': '-25px'});
      $('.js-search-input').val('').focus();
    });

    // Closes the search modal.
    $('.js-search-close-btn').click(function(event) {
      $(this).removeClass('open');
      $('body').removeClass('search-open');
      $('.js-search-open-btn').removeClass('open');
      $('.js-search').removeClass('active');
    });

    // Prevents search modal closing on click
    $('.js-search').click(function(event) {
      event.stopPropagation();
    });
  };

  // Scrolls to the comment-form if comment submit failed (to show the error messages to the user)
  var focusFormWithErrors = function() {
    $(document).ready(function() {
      if ($('.comment-form').hasClass('form_with_errors')) {
        $('html, body').scrollTop($('.comment-form').offset().top);
      } else if ($('form').find('.form_error, .form_notice').length > 0) {
        $('html, body').scrollTop($('.form_error, .form_notice').closest('form').offset().top);
      }
    });
  };

  // Wraps tables in the container to support horizontal scrolling for tables that are wider than the content area.
  // TODO: Remove if Voog is going to wrap tables with the container.
  var wrapTables = function() {
    if (editmode === false) {
      $.each($('.content-formatted'), function() {
        if (!$(this).hasClass('js-custom-content-formatted')) {
          $(this).find('table').wrap('<div class="table-container"></div>');
        }
      });
    }
  };

  // Adds/removes active class to search box if input is focused.
  var handleSearchFocus = function() {
    searchForm = $('.js-search-form');
    $('.js-search-input').focus(function() {
      searchForm.addClass('active');
    }).blur(function() {
      searchForm.removeClass('active');
    });
  };

  var handleSearchMobilePosition = function() {
    $('.js-search-form').on('submit', function() {
      searchModalHeight = $('.js-voog-search-modal').height();
      $('.js-modal').css({'top': '40px'});
    });
  };

  // ===========================================================================
  // Toggles language menu mode.
  // ===========================================================================
  var bindLanguageMenuSettings = function(valuesObj) {
    if (!('type' in valuesObj)) {
      valuesObj.type = 'popover';
    }

    if (!('item_state' in valuesObj)) {
      valuesObj.item_state = 'flags_and_names';
    }

    var langSettingsEditor = new Edicy.SettingsEditor($('.js-menu-language-settings-toggle').get(0), {
      menuItems: [
        {
          "titleI18n": "format_desktop_only",
          "type": "radio",
          "key": "type",
          "list": [
            {
              "titleI18n": "dropdown_menu",
              "value": "popover"
            },
            {
              "titleI18n": "expanded_menu",
              "value": "list"
            },
          ]
        },
        {
          "titleI18n": "show",
          "type": "radio",
          "key": "item_state",
          "list": [
            {
              "titleI18n": "flags_only",
              "value": "flags_only"
            },
            {
              "titleI18n": "names_only",
              "value": "names_only"
            },
            {
              "titleI18n": "flags_and_names",
              "value": "flags_and_names"
            }
          ]
        }
      ],

      values: valuesObj,

      buttonTitleI18n: 'settings',

      containerClass: ['js-menu-language-settings-popover', 'js-prevent-sideclick'],

      preview: function(data) {
        var $html = $('html'),
            $languageSettingsMenuElement = $('.js-menu-language-settings');

        if (data.type === 'list') {
          $html.removeClass('language-menu-mode-popover');
          $html.removeClass('menu-language-popover-open');
          $html.addClass('language-menu-mode-list');
        } else {
          $html.removeClass('language-menu-mode-list');
          $html.addClass('language-menu-mode-popover');
          $html.addClass('menu-language-popover-open');

          $('.js-menu-lang-popover').addClass('expanded');
        }

        if (data.item_state === 'flags_only') {
          $html.removeClass('language-flags-disabled');
          $html.removeClass('language-names-enabled');
          $html.addClass('language-flags-enabled');
          $html.addClass('language-names-disabled');
        } else if (data.item_state === 'names_only') {
          $html.removeClass('language-flags-enabled');
          $html.removeClass('language-names-disabled');
          $html.addClass('language-flags-disabled');
          $html.addClass('language-names-enabled');
        } else if (data.item_state === 'flags_and_names') {
          $html.removeClass('language-flags-disabled');
          $html.removeClass('language-names-disabled');
          $html.addClass('language-flags-enabled');
          $html.addClass('language-names-enabled');
        }

        toggleLanguageSettingsLocation();
        this.setPosition();
      },

      commit: function(data) {
        siteData.set('settings_language_menu', data);
      }
    });

    toggleLanguageSettingsLocation();
  };

  var toggleLanguageSettingsLocation = function() {
    var $html = $('html'),
        $languageSettingsMenuElement = $('.js-menu-language-settings');

    if ($(window).width() <= 960 && $languageSettingsMenuElement.closest('.js-menu-lang-mobile').length === 0) {
      $languageSettingsMenuElement.appendTo('.js-menu-lang-mobile');
    } else if ($(window).width() > 960 && $languageSettingsMenuElement.closest('.js-menu-lang-desktop').length === 0) {
      $languageSettingsMenuElement.appendTo('.js-menu-lang-desktop');
    }
  };

  // Adds and removes padding to front page content areas when toggled.
  var togglePadding = function() {
    $('.voog-padding-switcher').on('click', function(event) {
      event.stopPropagation();
      var sectionTarget = $(this).closest('.feature-section');
      var sectionId = sectionTarget.attr('data-section-name');

      $(sectionTarget).toggleClass('section-with-padding');

      if ($(this).closest(sectionTarget).hasClass('section-with-padding')) {
        var sectionWideBool = false;
      } else {
        var sectionWideBool = true;
      }

      pageData.set(sectionId + '_is_wide', sectionWideBool);
    });
  };

  // Toggle visibility for editor buttons
  var btnActivityStateToggle = function() {
    $('.voog-bg-picker-btn').on('click', function(event) {
      $(this).closest('.container').find('.voog-bg-picker-btn.open').not(this).trigger('click').removeClass('open');
      $(this).toggleClass('open');

      event.stopPropagation();
    });
  };

  var btnActivitySideClick = function() {
    $('.container').on('mousedown', function(event) {

      if (!$(event.target).closest('.voog-bg-picker-btn').length) {
        $(this).find('.voog-bg-picker-btn').removeClass('open');
        event.stopPropagation();
      };
    });
  };

  var bindFallbackHeaderLeftWidthCalculation = function() {
    var headerWidth = $('.js-header').width(),
        headerRight = $('.js-header-right'),
        headerRightWidth = headerRight.width(),
        headerRightMargin = parseInt(headerRight.css('margin-left')) + 1;

    $('.js-header-left').css('min-width', headerWidth - headerRightWidth - headerRightMargin);
  };

  // Returns the suitable version of the image depending on the viewport width.
  var getImageByWidth = function(sizes, targetWidth) {
    var prevImage;

    for (var i = 0, max = sizes.length; i < max; i++) {
      if (sizes[i].width < targetWidth) {
        return prevImage || sizes[i];
      }
      prevImage = sizes[i];
    }
    // Makes sure that smallest is returned if all images bigger than targetWidth.
    return sizes[sizes.length - 1];
  };

  var bgPickerImageSizesContains = function(sizes, url) {
    for (var i = sizes.length; i--;) {
      if (url.indexOf(sizes[i].url.trim()) > -1) {
        return true;
      }
    }
    return false;
  };

  // Checks the lightness sum of header background image and color and sets the lightness class depending on it's value.
  var bgPickerContentLightnessClass = function(bgPickerArea, bgPickerColorAlpha) {
    var bgPickerAreaGlobalAttr = bgPickerArea.attr('data-bg-global'),
        bgPickerAreaGlobal = '[data-bg-global="' + bgPickerAreaGlobalAttr + '"]',
        bgPickerAreaGlobalBooleanAttr = bgPickerArea.attr('data-bg-global-boolean'),
        bgPickerAreaGlobalBoolean = '[data-bg-global-boolean="false"]',
        bgPickerAreaMultiSectionAttr = bgPickerArea.attr('data-section-name'),
        bgPickerAreaMultiSection = '[data-section-name="' + bgPickerAreaMultiSectionAttr + '"]';

    if (bgPickerCombinedLightness >= 0.5) {
      $(bgPickerArea).find('.js-background-type').addClass('light-background').removeClass('dark-background');
      $(bgPickerAreaMultiSection).find('.js-background-type').addClass('light-background').removeClass('dark-background');

      if ( $(bgPickerArea).is('[data-bg-global-master="true"]') ) {
        $(bgPickerAreaGlobal).not(bgPickerAreaGlobalBoolean).find('.js-background-type').addClass('light-background').removeClass('dark-background');
      }

    } else {
      $(bgPickerArea).find('.js-background-type').addClass('dark-background').removeClass('light-background');
      $(bgPickerAreaMultiSection).find('.js-background-type').addClass('dark-background').removeClass('light-background');

      if ( $(bgPickerArea).is('[data-bg-global-master="true"]') ) {
        $(bgPickerAreaGlobal).not(bgPickerAreaGlobalBoolean).find('.js-background-type').addClass('dark-background').removeClass('light-background');
      }

    };

    if ( $('body').find('[data-bg-global-master="true"]').find('.js-background-type').hasClass('light-background') ) {
      var bgPickerAreaGlobalClass = 'light-background';
    } else {
      var bgPickerAreaGlobalClass = 'dark-background';
    };

    // Set mobile base bg when main section image bg isn't covering individual content areas.
    $('.container').find('.js-bg-picker-area').removeClass('transparent-dark-background transparent-light-background').addClass('transparent-' + bgPickerAreaGlobalClass);
    $('.container').find(bgPickerAreaGlobal).removeClass('transparent-dark-background transparent-light-background').addClass('transparent-' + bgPickerAreaGlobalClass);

    if ( bgPickerColorAlpha >= 0.5 ) {
      $(bgPickerArea).attr('data-bg-global-boolean', false);
      $(bgPickerAreaMultiSection).attr('data-bg-global-boolean', false);
    } else {
      $(bgPickerArea).attr('data-bg-global-boolean', true);
      $(bgPickerAreaMultiSection).attr('data-bg-global-boolean', true);
      $(bgPickerArea).find('.js-background-type').removeClass('light-background dark-background').addClass(bgPickerAreaGlobalClass);
      $(bgPickerAreaMultiSection).find('.js-background-type').removeClass('light-background dark-background').addClass(bgPickerAreaGlobalClass);
    };
  };

  // Header background image and color preview logic function.
  var bgPickerPreview = function(bgPickerArea, data, bgPicker, bgPickerImageColorDataReturn) {
    // Defines the variables used in preview logic.

    var bgPickerImagePrevious = $(bgPickerArea).find('.js-background-image').css('background-image'),
        bgPickerImageSuitable = data.imageSizes ? getImageByWidth(data.imageSizes, $(window).width()) : null,
        bgPickerImage = (data.image && data.image !== '') ? 'url(' + bgPickerImageSuitable.url + ')' : 'none',
        bgPickerImageSizes = (data.imageSizes && data.imageSizes !== '') ? data.imageSizes : null,
        bgPickerColor = (data.color && data.color !== '') ? data.color : 'rgba(0,0,0,0)',
        bgPickerColorDataLightness = (data.colorData && data.colorData !== '') ? data.colorData.a : 0,
        bgPickerColorAlpha = bgPickerColorDataLightness,
        bgPickerImageColorDataInternal = bgPickerImageColorDataReturn,

        colorExtractImage = $('<img>'),
        colorExtractCanvas = $('<canvas>'),
        colorExtractImageUrl = (data.image && data.image !== '') ? data.image : null;

    if (colorExtractImageUrl) {
      if (bgPickerImageSizesContains(bgPickerImageSizes, bgPickerImagePrevious, bgPickerImageColorDataInternal)) {
        bgPickerCombinedLightness = getCombinedLightness(bgPickerImageColorDataInternal, bgPickerColor);
        bgPickerContentLightnessClass(bgPickerArea, bgPickerColorAlpha);
        bgPickerImageColorData = bgPickerImageColorDataInternal;
      } else {
        colorExtractImage.attr('src', colorExtractImageUrl.replace(/.*\/(photos|voogstock)/g,'/photos'));
        colorExtractImage.on('load', function() {
          ColorExtract.extract(colorExtractImage[0], colorExtractCanvas[0], function(data) {
            bgPicker.bgPickerImageColor = data.bgColor ? data.bgColor : 'rgba(255,255,255,1)';
            bgPickerCombinedLightness = getCombinedLightness(bgPicker.bgPickerImageColor, bgPickerColor);
            bgPickerContentLightnessClass(bgPickerArea, bgPickerColorAlpha);

            bgPickerImageColorData = data.bgColor ? data.bgColor : 'rgba(255,255,255,1)';
            bgPickerImageColorDataInternal = bgPicker.bgPickerImageColor;
          });
        });
      };
    }
     else {
      bgPickerCombinedLightness = getCombinedLightness('rgba(255,255,255,1)', bgPickerColor);
      bgPickerContentLightnessClass(bgPickerArea, bgPickerColorAlpha);
      bgPickerImageColorData = '';
    };

    // Updates the bgPickerContent background image and background color.
    $(bgPickerArea).find('.js-background-image').css({'background-image' : bgPickerImage});
    $(bgPickerArea).find('.js-background-color').css({'background-color' : bgPickerColor});
  };

  var normalizeValue = function(value) {
    if (value == null || (typeof value == 'string' && value.match(/^[\\'"]+$/))) {
      return '';
    } else {
      return value;
    }
  };

  // Header background image and color save logic function.
  var bgPickerCommit = function(dataBgKey, data) {
    var commitData = $.extend(true, {}, data);
    commitData.image = data.image || '';
    commitData.imageSizes = normalizeValue(data.imageSizes);
    commitData.color = data.color || '';
    commitData.combinedLightness = bgPickerCombinedLightness;
    commitData.imageColorData = bgPickerImageColorData || '';

    if (pageType === 'articlePage') {
      if (dataBgKey == 'footer_bg') {
        siteData.set(dataBgKey, commitData);
      } else {
        Edicy.articles.currentArticle.setData(dataBgKey, commitData);
      }
    } else {
      if (pageType === 'contentPage' && (dataBgKey === 'footer_bg') || (dataBgKey === 'body_bg')) {
        siteData.set(dataBgKey, commitData);
      } else {
        pageData.set(dataBgKey, commitData);
      }
    }
  };

  var colorSum = function(bgColor, fgColor) {
    if (bgColor && fgColor) {
      if (typeof bgColor == 'string') {
        bgColor = bgColor.replace(/rgba?\(/,'').replace(/\)/,'').split(',');
        $.each(bgColor, function(n, x) {bgColor[n] = +x;});
      }
      if (typeof fgColor == 'string') {
        fgColor = fgColor.replace(/rgba?\(/,'').replace(/\)/,'').split(',');
        $.each(fgColor, function(n, x) {fgColor[n] = +x;});
      }
      if (typeof bgColor == 'object' && bgColor.hasOwnProperty('length')) {
        if (bgColor.length == 3) { bgColor.push(1.0); }
      }
      if (typeof fgColor == 'object' && fgColor.hasOwnProperty('length')) {
        if (fgColor.length == 3) { fgColor.push(1.0); }
      }
      var result = [0, 0, 0, 0];
      result[3] = 1 - (1 - fgColor[3]) * (1 - bgColor[3]);
      if (result[3] === 0) { result[3] = 1e-6; }
      result[0] = Math.min(fgColor[0] * fgColor[3] / result[3] + bgColor[0] * bgColor[3] * (1 - fgColor[3]) / result[3], 255);
      result[1] = Math.min(fgColor[1] * fgColor[3] / result[3] + bgColor[1] * bgColor[3] * (1 - fgColor[3]) / result[3], 255);
      result[2] = Math.min(fgColor[2] * fgColor[3] / result[3] + bgColor[2] * bgColor[3] * (1 - fgColor[3]) / result[3], 255);
      return $.map(result, function(e) { return Math.floor(e); });
    }
  };

  var getCombinedColor = function(bgColor, fgColor) {
    var sum = colorSum(bgColor || [255,255,255,1], fgColor || [255,255,255,1]);
    return sum;
  };

  var getCombinedLightness = function(bgColor, fgColor) {
    var combinedColor = getCombinedColor(bgColor, fgColor);
    var color = Math.round(((+combinedColor[0]) * 0.2126 + (+combinedColor[1]) * 0.7152 + (+combinedColor[2]) * 0.0722) / 2.55) / 100;
    return color;
  };

  var bgPickerColorScheme = function(lightness) {
    if (typeof lightness != 'undefined') {
      if (lightness > 0.6) {
        $('.header-wrapper').addClass('light').removeClass('dark');
      } else {
        $('.header-wrapper').addClass('dark').removeClass('light');
      }
    }
  };

  // No flexbox fallbacks.
  var noFlexSectionEqualHeight = function() {
    var parentSectionHeight = $('.sections').height();
    $('.feature-section').outerHeight(parentSectionHeight);
  };

  var noFlexMainHeight = function() {
    var vpHeight = $(window).height(),
        calcHeight = vpHeight + $('header').height() - $('footer').height();
    $('main.content').height(calcHeight);
  };

  // Initiates the functions when window is resized.
  var handleWindowResize = function() {
    $(window).resize(debounce(function() {
      toggleLanguageSettingsLocation();
    }, 100));
  };

  // Initiations
  var initFrontPage = function(animation) {
    // Add front page layout specific functions here.
  };

  var initBlogPage = function() {
    // Add blog listing layout specific functions here.
  };

  var initArticlePage = function() {
    // Add single post layout specific functions here.
  };

  var initCommonPage = function() {
    // Add common page specific functions here.
    handleFormFieldClick();
  };

  var init = function() {
    // Add site wide functions here.
    bindSideClicks();
    handleElementsClick();
    focusFormWithErrors();
    handleWindowResize();
    handleSearchFocus();
    handleSearchMobilePosition();
    wrapTables();
    btnActivityStateToggle();
    btnActivitySideClick();

    if (!Modernizr.flexbox && editmode) {
      bindFallbackHeaderLeftWidthCalculation();
    };

    if (!Modernizr.flexbox && !Modernizr.flexwrap) {
      $('html').addClass('no-flexbox');
    }

    if ($('html').hasClass('no-flexbox')) {
      noFlexSectionEqualHeight();

      if ($('body').hasClass('front-page')) {
        noFlexMainHeight();
      }
    }
  };

  // ===========================================================================
  // Sets functions that will be initiated on items list layouts.
  // ===========================================================================
  var initItemsPage = function() {
    if (!editmode()) {
      bindContentItemImageLazyload();
    }
  };

  // ===========================================================================
  // Change product image position on narrower screens (mobile devices)
  // ===========================================================================

  var handleProductPageContent = function () {
    $(document).ready(function () {
      changeProductImagePos();
    });

    $(window).resize(debounce(function () {
      changeProductImagePos();
    }, 25));

    var changeProductImagePos = function () {
      var productGallery = $('.js-product-gallery');
      var productImageContentBox = $('.js-content-item-box');
      var productRightContent = $('.js-product-right-content');

      if ($('.js-buy-btn-content .edy-buy-button-container').length >= 1) {
        if ($(window).width() < 640) {
          if ($('.js-product-right-content + .js-product-gallery').length === 0) {
            productRightContent.append(productGallery);
          }
        } else {
          if ($('.js-content-item-box + .js-product-gallery').length === 0) {
            productImageContentBox.parent().append(productGallery);
          }
        }
      }
    }
  };

  // ===========================================================================
  // Toggles product categories visibility in main menu.
  // ===========================================================================
  var bindRootItemSettings = function(rootItemValuesObj) {
    if (!('show_product_related_pages_in_main_menu' in rootItemValuesObj)) {
      rootItemValuesObj.show_product_related_pages_in_main_menu = false;
    }

    $('.js-root-item-settings-toggle').each(function(index, languageMenuSettingsButton) {
      var rootItemSettingsEditor = new Edicy.SettingsEditor(languageMenuSettingsButton, {
        menuItems: [
          {
            "titleI18n": "show_in_main_menu",
            "type": "checkbox",
            "key": "show_product_related_pages_in_main_menu",
            "states": {
              "on": true,
              "off": false
            }
          }
        ],

        buttonTitleI18n: "settings",

        values: rootItemValuesObj,

        containerClass: ['js-root-item-settings-popover', 'js-prevent-sideclick'],

        preview: function(data) {
          if (!data.show_product_related_pages_in_main_menu === true) {
            $('.js-menu-item-products').addClass('is-hidden');
          } else {
            $('.js-menu-item-products').removeClass('is-hidden');
          }
        },

        commit: function(data) {
          siteData.set('settings_root_item', data);
        }
      });
    });
  };

  // ===========================================================================
  // Binds editmode image drop areas.
  // ===========================================================================
  var bindContentItemImgDropAreas = function(placeholderText) {
    $('.js-content-item-img-drop-area').each(function(index, imgDropAreaTarget) {
      var $imgDropAreaTarget = $(imgDropAreaTarget),
          $contentItemBox = $imgDropAreaTarget.closest('.js-content-item-box'),
          itemId = $contentItemBox.data('item-id'),
          itemType = $contentItemBox.data('item-type'),
          itemData = new Edicy.CustomData({
            type: itemType,
            id: itemId
          });

      var imgDropArea = new Edicy.ImgDropArea($imgDropAreaTarget, {
        positionable: false,
        target_width: 1280,
        placeholder: '<div class="edy-img-drop-area-placeholder">' + placeholderText + '</div>',
        removeBtn: '<div class="edy-img-drop-area-remove-image">' +
                      '<div class="edy-img-drop-area-remove-image-ico">' +
                        '<svg width="16" height="20" viewBox="0 0 26 30" xmlns="http://www.w3.org/2000/svg">' +
                          '<g fill-rule="nonzero" fill="currentColor">' +
                            '<g transform="translate(2 5)">' +
                              '<path d="M0 .997h2V21c0 1 1 2 2 2h14c1 0 2-1 2-2V1h2v20c0 2.25-1.75 4-4 4H4c-2.25 0-4-1.75-4-4V.997z"/>' +
                              '<rect x="10" y="4" width="2" height="16" rx="1"/>' +
                              '<rect x="5" y="4" width="2" height="16" rx="1"/>' +
                              '<rect x="15" y="4" width="2" height="16" rx="1"/>' +
                            '</g>' +
                            '<path d="M26 4v2H0V4h7V2c0-1 1-2 2-2h8c1 0 2 1 2 2v2h7zM9 4h8V3c0-.5-.5-1-1-1h-6c-.5 0-1 .5-1 1v1z"/>' +
                          '</g>' +
                        '</svg>' +
                      '</div>' +
                    '</div>',

        change: function(data) {
          var imageId;

          $imgDropAreaTarget
            .removeClass('is-cropped')
            .addClass('not-cropped')
            .css('opacity', .1)
          ;

          if (data) {
            imageId = data.original_id;

            $contentItemBox
              .removeClass('without-image is-loaded with-error')
              .addClass('with-image not-loaded')
            ;

            setImageOrientation($contentItemBox, data.width, data.height);
          } else {
            imageId = null;

            $contentItemBox
              .removeClass('with-image is-loaded with-error')
              .addClass('without-image not-loaded')
            ;

            $contentItemBox.find('.edy-img-drop-area-placeholder').css('opacity', 0);
          }

          setItemImage($contentItemBox, $imgDropAreaTarget, itemId, imageId, itemType);
        }
      });
    });
  };

  var setImageOrientation = function($contentItemBox, width, height) {
    var $imgDropAreaTarget = $contentItemBox.find('.js-content-item-img-drop-area'),
        $cropToggleButton = $contentItemBox.find('.js-toggle-crop-state');

    if (width > height) {
      $imgDropAreaTarget
        .removeClass('image-landscape image-square image-portrait')
        .addClass('image-landscape')
      ;
    } else if (width === height) {
      $imgDropAreaTarget
        .removeClass('image-landscape image-square image-portrait')
        .addClass('image-square')
      ;
    } else {
      $imgDropAreaTarget
        .removeClass('image-landscape image-square image-portrait')
        .addClass('image-portrait')
      ;
    }

    if ($imgDropAreaTarget.hasClass('image-square')) {
      $cropToggleButton
        .removeClass('is-visible')
        .addClass('is-hidden')
      ;
    } else {
      $cropToggleButton
        .removeClass('is-hidden')
        .addClass('is-visible')
      ;
    }
  };

  var setItemImage = function($contentItemBox, $imgDropArea, itemId, imageId, itemType) {
    var apiType = itemType === 'article' ? 'articles' : 'pages',
        itemData = new Edicy.CustomData({
          type: itemType,
          id: itemId
        });

    $.ajax({
       type: 'PATCH',
       contentType: 'application/json',
       url: '/admin/api/' + apiType +'/' + itemId,
       data: JSON.stringify({'image_id': imageId}),
       dataType: 'json',
       success: function(data) {
         itemData.set('image_crop_state', 'not-cropped');
         $contentItemBox.removeClass('not-loaded with-error').addClass('is-loaded');
         $contentItemBox.find('.edy-img-drop-area-placeholder').css('opacity', 1);
         $imgDropArea.css('opacity', 1);
       },
       timeout: 30000,
       error: function(data) {
         $contentItemBox.removeClass('not-loaded is-loaded with-error').addClass('with-error');
       }
    });
  };

  // ===========================================================================
  // Sets functions that will be initiated globally when resizing the browser
  // window.
  // ===========================================================================
  var bindContentItemImageCropToggle = function() {
    $('.js-toggle-crop-state').on('click', function() {
      var $contentItemBox = $(this).closest('.js-content-item-box'),
          $imgDropAreaTarget = $contentItemBox.find('.js-content-item-img-drop-area'),
          itemId = $contentItemBox.data('item-id'),
          itemType = $contentItemBox.data('item-type'),
          itemData = new Edicy.CustomData({
            type: itemType,
            id: itemId
          }),
          imageCropState;

      if ($imgDropAreaTarget.hasClass('is-cropped')) {
        $imgDropAreaTarget
          .removeClass('is-cropped')
          .addClass('not-cropped')
        ;

        imageCropState = 'not-cropped';
      } else {
        $imgDropAreaTarget
          .removeClass('not-cropped')
          .addClass('is-cropped')
        ;

        imageCropState = 'is-cropped';
      }

      itemData.set('image_crop_state', imageCropState);
    });
  };

  // ===========================================================================
  // Load article cover images only when they are close or appearing in the
  // viewport.
  // ===========================================================================
  var bindContentItemImageLazyload = function() {
    $(document).ready(function() {
      setTimeout(function() {
        $('.js-content-item-box').addClass('not-loaded');
      }, 3000);
    });

    $('.js-lazyload').lazyload({
      threshold : 500,
      effect : "fadeIn",
      placeholder: 'data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==',

      load: function() {
        var $contentItemBox = $(this).closest('.js-content-item-box');

        $contentItemBox.removeClass('not-loaded with-error').addClass('is-loaded');

        setTimeout(function() {
          $contentItemBox.removeClass('not-loaded with-error');
          $contentItemBox.find('.js-loader').remove();
        }, 3000);
      }
    });
  };

  // ===========================================================================
  // Function to detect if site is displayed in editmode.
  // ===========================================================================
  var editmode = function () {
    return $('html').hasClass('editmode');
  };

  // ===========================================================================
  // Sets header menu initial width attribute for menu mode calculation.
  // ===========================================================================
  var setHeaderMenuInitialWidth = function() {
    var $headerMenu = $('.js-header-menu');

    $headerMenu.attr('data-initial-width', $headerMenu.outerWidth(true));
  };

  // Enables the usage of the initiations outside this file.
  // For example add "<script>site.initBlogPage();</script>" at the end of the "Blog & News" page to initiate blog listing view functions.
  window.site = $.extend(window.site || {}, {
    initBlogPage: initBlogPage,
    initArticlePage: initArticlePage,
    initCommonPage: initCommonPage,
    initItemsPage: initItemsPage,
    bindLanguageMenuSettings: bindLanguageMenuSettings,
    togglePadding: togglePadding,
    bgPickerPreview: bgPickerPreview,
    bgPickerCommit: bgPickerCommit,
    bgPickerColorScheme: bgPickerColorScheme,
    bindSiteSearch: bindSiteSearch,
    bindRootItemSettings: bindRootItemSettings,
    bindContentItemImgDropAreas: bindContentItemImgDropAreas,
    bindContentItemImageCropToggle: bindContentItemImageCropToggle,
    bindSiteSearchFrontPage: bindSiteSearchFrontPage,
    handleProductPageContent: handleProductPageContent
  });

  // Initiates site wide functions.
  init();
})(jQuery);
