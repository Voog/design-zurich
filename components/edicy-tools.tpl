{% editorjsblock %}
  <script src='{{ site.static_asset_host }}/libs/edicy-tools/latest/edicy-tools.js'></script>
  <script>
    var siteData = new Edicy.CustomData({
      type: 'site'
    });

    //==========================================================================
    // Initiates the language menu mode toggleing popover.
    //==========================================================================
    var valuesObj;

    {% if site.data.settings_language_menu %}
      valuesObj = {{ site.data.settings_language_menu | json }};
    {% else %}
      valuesObj = {};
    {% endif %};

    site.bindLanguageMenuSettings(valuesObj);

    {% if blog_article_page %}
      var pageType = 'articlePage';
      siteData = new Edicy.CustomData({
        type: 'site'
      });
    {% elsif front_page %}
      var pageType = 'frontPage',
      pageData = new Edicy.CustomData({
        type: 'page',
        id: '{{ page.id }}'
      });
    {% else %}
      var pageType = 'contentPage',
      siteData = new Edicy.CustomData({
        type: 'site'
      });
      pageData = new Edicy.CustomData({
        type: 'page',
        id: '{{ page.id }}'
      });
    {% endif %}

    site.togglePadding();

    $('.js-bg-picker-area').each(function(index, bgPickerArea) {
      var bgPickerButton = $(bgPickerArea).find('.js-background-settings'),
          dataBgKey = $(bgPickerButton).data('bg-key'),
          pictureBoolean = $(bgPickerButton).data('bg-picture-boolean'),
          bgPickerImageColorDataReturn = $(bgPickerButton).data('bg-image-color-data'),
          targetWidth = $(bgPickerButton).data('target-width');
      var bgPicker = new Edicy.BgPicker(bgPickerButton, {
            picture: pictureBoolean,
            target_width: targetWidth,
            color: true,
            showAlpha: true,
        preview: function(data) {
          site.bgPickerPreview($(bgPickerArea), data, bgPicker, bgPickerImageColorDataReturn);
        },
        commit: function(data) {
          site.bgPickerCommit(dataBgKey, data, pageType);
        }
      });
    });
  </script>
 {% endeditorjsblock %}
