body {
  font-family: var(--main-font-family);
  color: var(--content-body-text-color);
}

@media screen and (min-width: 961px) {
  .front-page .header-container {
    background-color: var(--header-background-color);
  }
}

@media screen and (min-width: 961px) {
  .front-page .flex-container {
    -webkit-box-pack: var(--header-alignment);
        -ms-flex-pack: var(--header-alignment);
            justify-content: var(--header-alignment);
  }
}

@media screen and (min-width: 961px) {
  .dark-background .menu-front .menu-main-item .menu-link, .dark-background .menu-front .menu-main-item .menu-link.active {
    color: var(--main-color-front);
  }
  .dark-background .menu-front .menu-main-item .menu-link.active {
    border-color: var(--main-color-front);
  }
  .dark-background .menu-front .menu-main-item .menu-link:hover {
    border-color: var(--main-color-front);
    background: var(--main-color-front);
    color: var(--secondary-color-front);
  }
  .light-background .menu-front .menu-main-item .menu-link, .light-background .menu-front .menu-main-item .menu-link.active {
    color: var(--secondary-color-front);
  }
  .light-background .menu-front .menu-main-item .menu-link.active {
    border-color: var(--secondary-color-front);
  }
  .light-background .menu-front .menu-main-item .menu-link:hover {
    border-color: var(--secondary-color-front);
    background: var(--secondary-color-front);
    color: var(--main-color-front);
  }
}

.header-title,
.header-title .header-link {
  font-size: var(--header-body-font-size);
  font-style: var(--header-body-font-style);
  font-weight: var(--header-body-font-weight);
  color: var(--header-body-text-color);
  -webkit-text-decoration: var(--header-body-text-decoration);
          text-decoration: var(--header-body-text-decoration);
  text-transform: var(--header-body-text-transform);
}

.header-title .header-link:hover {
  color: var(--header-body-text-color);
}

.content-topbar,
.content,
.content.two-columns {
  background-color: var(--content-background-color);
}

.menu-main .menu-link {
  font-style: var(--menu-main-font-style);
  font-weight: var(--menu-main-font-weight);
  color: var(--menu-main-color);
  -webkit-text-decoration: var(--menu-main-text-decoration);
          text-decoration: var(--menu-main-text-decoration);
  text-transform: var(--menu-main-text-transform);
}

@media screen and (min-width: 961px) {
  .menu-main .menu-link {
    font-size: var(--menu-main-font-size);
  }
}

.menu-main .menu-link.active {
  font-style: var(--menu-main-active-font-style);
  font-weight: var(--menu-main-active-font-weight);
  color: var(--menu-main-active-color);
  -webkit-text-decoration: var(--menu-main-active-text-decoration);
          text-decoration: var(--menu-main-active-text-decoration);
  text-transform: var(--menu-main-active-text-transform);
}

.menu-main .menu-link:hover {
  font-style: var(--menu-main-hover-font-style);
  font-weight: var(--menu-main-hover-font-weight);
  color: var(--menu-main-hover-color);
  -webkit-text-decoration: var(--menu-main-hover-text-decoration);
          text-decoration: var(--menu-main-hover-text-decoration);
  text-transform: var(--menu-main-hover-text-transform);
}

.menu-sub .menu-link {
  font-size: var(--menu-sub-font-size);
  font-style: var(--menu-sub-font-style);
  font-weight: var(--menu-sub-font-weight);
  color: var(--menu-sub-color);
  -webkit-text-decoration: var(--menu-sub-text-decoration);
          text-decoration: var(--menu-sub-text-decoration);
  text-transform: var(--menu-sub-text-transform);
}

.menu-sub .menu-link.active {
  font-style: var(--menu-sub-active-font-style);
  font-weight: var(--menu-sub-active-font-weight);
  color: var(--menu-sub-active-color);
  -webkit-text-decoration: var(--menu-sub-active-text-decoration);
          text-decoration: var(--menu-sub-active-text-decoration);
  text-transform: var(--menu-sub-active-text-transform);
}

.menu-sub .menu-link:hover {
  font-style: var(--menu-sub-hover-font-style);
  font-weight: var(--menu-sub-hover-font-weight);
  color: var(--menu-sub-hover-color);
  -webkit-text-decoration: var(--menu-sub-hover-text-decoration);
          text-decoration: var(--menu-sub-hover-text-decoration);
  text-transform: var(--menu-sub-hover-text-transform);
}

.menu-horizontal.menu-breadcrumbs .menu-separator {
  color: var(--menu-sub-color);
}

.menu-horizontal.menu-breadcrumbs .menu-item a {
  color: var(--menu-sub-color);
}

.menu-horizontal.menu-breadcrumbs .menu-item a:hover {
  color: var(--menu-sub-color);
}

.menu-horizontal.menu-breadcrumbs .current.menu-item a {
  color: var(--menu-sub-color);
}

.language-menu-mode-list .front-page .dark-background .menu-lang .menu-link {
  color: var(--main-color-front);
}

.language-menu-mode-list .front-page .light-background .menu-lang .menu-link {
  color: var(--secondary-color-front);
}

.post-page .post post-title,
.post .post-title a,
.blog-pate .post-date,
.post-page .post .post-header-inner,
.comments .comments-title {
  color: var(--secondary-color-content);
}

@media screen and (min-width: 1021px) {
  .content .content-formatted {
    line-height: var(--content-body-line-height);
    font-size: var(--content-body-font-size);
  }
}

.footer .content-formatted {
  font-size: var(--footer-body-font-size);
  font-style: var(--footer-body-font-style);
  font-weight: var(--footer-body-font-weight);
  color: var(--footer-body-color);
  -webkit-text-decoration: var(--footer-body-text-decoration);
          text-decoration: var(--footer-body-text-decoration);
  text-transform: var(--footer-body-text-transform);
}

.light-background .content-formatted, .light-background
.content-formatted h1, .light-background
.content-formatted h2, .light-background
.content-formatted h3, .light-background
.content-formatted h4, .light-background
.content-formatted h5, .light-background
.content-formatted h6, .light-background
.content-formatted p, .light-background
.content-formatted ul, .light-background
.content-formatted ol, .light-background
.content-formatted table {
  color: var(--secondary-color-front);
}

.dark-background .content-formatted, .dark-background
.content-formatted h1, .dark-background
.content-formatted h2, .dark-background
.content-formatted h3, .dark-background
.content-formatted h4, .dark-background
.content-formatted h5, .dark-background
.content-formatted h6, .dark-background
.content-formatted p, .dark-background
.content-formatted ul, .dark-background
.content-formatted ol, .dark-background
.content-formatted table {
  color: var(--main-color-front);
}

.content-formatted h1 {
  color: var(--headings-title-color);
}

.content-formatted h1,
.content-formatted h1 a,
.content-formatted h1 a:hover {
  font-size: var(--headings-title-font-size);
  font-style: var(--headings-title-font-style);
  font-weight: var(--headings-title-font-weight);
  line-height: var(--headings-title-line-height);
  text-align: var(--headings-title-text-alignment);
  -webkit-text-decoration: var(--headings-title-text-decoration);
          text-decoration: var(--headings-title-text-decoration);
  text-transform: var(--headings-title-text-transform);
}

.content-formatted h2:not(.comments-title) {
  color: var(--headings-heading-color);
}

.content-formatted h2:not(.comments-title),
.content-formatted h2:not(.comments-title) a,
.content-formatted h2:not(.comments-title) a:hover {
  font-size: var(--headings-heading-font-size);
  font-style: var(--headings-heading-font-style);
  font-weight: var(--headings-heading-font-weight);
  line-height: var(--headings-heading-line-height);
  text-align: var(--headings-heading-text-alignment);
  -webkit-text-decoration: var(--headings-heading-text-decoration);
          text-decoration: var(--headings-heading-text-decoration);
  text-transform: var(--headings-heading-text-transform);
}

.content-formatted h3,
.content-formatted h4,
.content-formatted h5,
.content-formatted h6 {
  color: var(--headings-subheading-color);
}

.content-formatted h3,
.content-formatted h3 a,
.content-formatted h3 a:hover,
.content-formatted h4,
.content-formatted h4 a,
.content-formatted h4 a:hover,
.content-formatted h5,
.content-formatted h5 a,
.content-formatted h5 a:hover,
.content-formatted h6,
.content-formatted h6 a,
.content-formatted h6 a:hover {
  font-size: var(--headings-subheading-font-size);
  font-style: var(--headings-subheading-font-style);
  font-weight: var(--headings-subheading-font-weight);
  line-height: var(--headings-subheading-line-height);
  text-align: var(--headings-subheading-text-alignment);
  -webkit-text-decoration: var(--headings-subheading-text-decoration);
          text-decoration: var(--headings-subheading-text-decoration);
  text-transform: var(--headings-subheading-text-transform);
}

.content-formatted a {
  font-weight: var(--content-link-font-weight);
  font-style: var(--content-link-font-style);
  -webkit-text-decoration: var(--content-link-text-decoration);
          text-decoration: var(--content-link-text-decoration);
  text-transform: var(--content-link-text-transform);
  color: var(--content-link-color);
}

.content-formatted a:hover {
  font-weight: var(--content-link-hover-font-weight);
  font-style: var(--content-link-hover-font-style);
  -webkit-text-decoration: var(--content-link-hover-text-decoration);
          text-decoration: var(--content-link-hover-text-decoration);
  text-transform: var(--content-link-hover-text-transform);
  color: var(--content-link-hover-color);
}

.front-page .content-formatted pre, .front-page
.content-formatted code {
  color: var(--secondary-color-front);
}

.content-formatted table th,
.content-formatted table td {
  padding: var(--table-padding);
  font-size: var(--table-font-size);
  border-top-style: var(--table-border-style);
  border-bottom-style: var(--table-border-style);
}

.content-formatted .custom-btn,
.content-formatted .edy-product-widget-list .edy-product-widget-item-wrap .edy-product-widget-item .edy-product-widget-item-details-wrap .edy-product-widget-item-btn-wrap .edy-product-widget-item-btn {
  padding: calc(var(--content-button-padding) - 12px) var(--content-button-padding);
  font-size: var(--content-button-font-size);
  font-style: var(--content-button-font-style);
  font-weight: var(--content-button-font-weight);
  -webkit-text-decoration: var(--content-button-text-decoration);
          text-decoration: var(--content-button-text-decoration);
  text-transform: var(--content-button-text-transform);
}

.common-page .content-formatted .custom-btn:not(.custom-btn-disabled),
.blog-page .content-formatted .custom-btn:not(.custom-btn-disabled),
.post-page .content-formatted .custom-btn:not(.custom-btn-disabled), .common-page
.content-formatted .edy-product-widget-list .edy-product-widget-item-wrap .edy-product-widget-item .edy-product-widget-item-details-wrap .edy-product-widget-item-btn-wrap .edy-product-widget-item-btn:not(.custom-btn-disabled),
.blog-page
.content-formatted .edy-product-widget-list .edy-product-widget-item-wrap .edy-product-widget-item .edy-product-widget-item-details-wrap .edy-product-widget-item-btn-wrap .edy-product-widget-item-btn:not(.custom-btn-disabled),
.post-page
.content-formatted .edy-product-widget-list .edy-product-widget-item-wrap .edy-product-widget-item .edy-product-widget-item-details-wrap .edy-product-widget-item-btn-wrap .edy-product-widget-item-btn:not(.custom-btn-disabled) {
  color: var(--content-button-color);
  background-color: var(--content-button-background-color);
  border-color: var(--content-button-color);
}

.content-formatted .custom-btn:hover,
.content-formatted .edy-product-widget-list .edy-product-widget-item-wrap .edy-product-widget-item .edy-product-widget-item-details-wrap .edy-product-widget-item-btn-wrap .edy-product-widget-item-btn:hover {
  font-style: var(--content-button-hover-font-style);
  font-weight: var(--content-button-hover-font-weight);
  -webkit-text-decoration: var(--content-button-hover-text-decoration);
          text-decoration: var(--content-button-hover-text-decoration);
  text-transform: var(--content-button-hover-text-transform);
}

.common-page .content-formatted .custom-btn:hover:not(.custom-btn-disabled),
.blog-page .content-formatted .custom-btn:hover:not(.custom-btn-disabled),
.post-page .content-formatted .custom-btn:hover:not(.custom-btn-disabled), .common-page
.content-formatted .edy-product-widget-list .edy-product-widget-item-wrap .edy-product-widget-item .edy-product-widget-item-details-wrap .edy-product-widget-item-btn-wrap .edy-product-widget-item-btn:hover:not(.custom-btn-disabled),
.blog-page
.content-formatted .edy-product-widget-list .edy-product-widget-item-wrap .edy-product-widget-item .edy-product-widget-item-details-wrap .edy-product-widget-item-btn-wrap .edy-product-widget-item-btn:hover:not(.custom-btn-disabled),
.post-page
.content-formatted .edy-product-widget-list .edy-product-widget-item-wrap .edy-product-widget-item .edy-product-widget-item-details-wrap .edy-product-widget-item-btn-wrap .edy-product-widget-item-btn:hover:not(.custom-btn-disabled) {
  color: var(--content-button-hover-color);
  background-color: var(--content-button-hover-background-color);
  border-color: var(--content-button-hover-color);
}

.front-page .dark-background .content-formatted .custom-btn:not(.custom-btn-disabled):hover, .front-page .dark-background
.content-formatted .edy-product-widget-list .edy-product-widget-item-wrap .edy-product-widget-item .edy-product-widget-item-details-wrap .edy-product-widget-item-btn-wrap .edy-product-widget-item-btn:not(.custom-btn-disabled):hover {
  color: var(--main-color-front);
  border-color: var(--main-color-front);
}

.front-page .dark-background .content-formatted .custom-btn:not(.custom-btn-disabled):hover, .front-page .dark-background
.content-formatted .edy-product-widget-list .edy-product-widget-item-wrap .edy-product-widget-item .edy-product-widget-item-details-wrap .edy-product-widget-item-btn-wrap .edy-product-widget-item-btn:not(.custom-btn-disabled):hover {
  color: var(--secondary-color-front);
  background-color: var(--main-color-front);
}

.common-page .dark-background .content-formatted .custom-btn:not(.custom-btn-disabled),
.blog-page .dark-background .content-formatted .custom-btn:not(.custom-btn-disabled),
.post-page .dark-background .content-formatted .custom-btn:not(.custom-btn-disabled), .common-page .dark-background
.content-formatted .edy-product-widget-list .edy-product-widget-item-wrap .edy-product-widget-item .edy-product-widget-item-details-wrap .edy-product-widget-item-btn-wrap .edy-product-widget-item-btn:not(.custom-btn-disabled),
.blog-page .dark-background
.content-formatted .edy-product-widget-list .edy-product-widget-item-wrap .edy-product-widget-item .edy-product-widget-item-details-wrap .edy-product-widget-item-btn-wrap .edy-product-widget-item-btn:not(.custom-btn-disabled),
.post-page .dark-background
.content-formatted .edy-product-widget-list .edy-product-widget-item-wrap .edy-product-widget-item .edy-product-widget-item-details-wrap .edy-product-widget-item-btn-wrap .edy-product-widget-item-btn:not(.custom-btn-disabled) {
  border-color: var(--main-color-front);
  color: var(--main-color-front);
}

.front-page .light-background .content-formatted .custom-btn:not(.custom-btn-disabled), .front-page .light-background
.content-formatted .edy-product-widget-list .edy-product-widget-item-wrap .edy-product-widget-item .edy-product-widget-item-details-wrap .edy-product-widget-item-btn-wrap .edy-product-widget-item-btn:not(.custom-btn-disabled) {
  color: var(--secondary-color-front);
  border-color: var(--secondary-color-front);
}

.front-page .light-background .content-formatted .custom-btn:not(.custom-btn-disabled):hover, .front-page .light-background
.content-formatted .edy-product-widget-list .edy-product-widget-item-wrap .edy-product-widget-item .edy-product-widget-item-details-wrap .edy-product-widget-item-btn-wrap .edy-product-widget-item-btn:not(.custom-btn-disabled):hover {
  color: var(--main-color-front);
  background-color: var(--secondary-color-front);
}

.common-page .light-background .content-formatted .custom-btn:not(.custom-btn-disabled),
.blog-page .light-background .content-formatted .custom-btn:not(.custom-btn-disabled),
.post-page .light-background .content-formatted .custom-btn:not(.custom-btn-disabled), .common-page .light-background
.content-formatted .edy-product-widget-list .edy-product-widget-item-wrap .edy-product-widget-item .edy-product-widget-item-details-wrap .edy-product-widget-item-btn-wrap .edy-product-widget-item-btn:not(.custom-btn-disabled),
.blog-page .light-background
.content-formatted .edy-product-widget-list .edy-product-widget-item-wrap .edy-product-widget-item .edy-product-widget-item-details-wrap .edy-product-widget-item-btn-wrap .edy-product-widget-item-btn:not(.custom-btn-disabled),
.post-page .light-background
.content-formatted .edy-product-widget-list .edy-product-widget-item-wrap .edy-product-widget-item .edy-product-widget-item-details-wrap .edy-product-widget-item-btn-wrap .edy-product-widget-item-btn:not(.custom-btn-disabled) {
  border-color: var(--secondary-color-front);
  color: var(--secondary-color-front);
}

.content-formatted .edy-buy-button-price-container .edy-buy-button-price-original,
.content-formatted .edy-buy-button-price-container .edy-buy-button-effective-price {
  color: var(--content-body-text-color);
}

.front-page .content .content-inner .content-formatted {
  font-size: var(--focus-area-body-font-size);
  line-height: var(--focus-area-body-line-height);
  font-weight: var(--focus-area-body-font-weight);
  font-style: var(--focus-area-body-font-style);
  -webkit-text-decoration: var(--focus-area-body-text-decoration);
          text-decoration: var(--focus-area-body-text-decoration);
  text-transform: var(--focus-area-body-text-transform);
}

.front-page .content .content-inner .content-formatted h1 {
  font-family: var(--secondary-font-family);
  font-size: var(--focus-area-title-font-size);
  line-height: var(--focus-area-title-line-height);
  font-weight: var(--focus-area-title-font-weight);
  font-style: var(--focus-area-title-font-style);
  -webkit-text-decoration: var(--focus-area-title-text-decoration);
          text-decoration: var(--focus-area-title-text-decoration);
  text-transform: var(--focus-area-title-text-transform);
}

.front-page .feature-section .content-formatted {
  font-size: var(--content-body-font-size);
}

.front-page .feature-section .content-formatted {
  line-height: var(--content-body-line-height);
}

.front-page .dark-background .edy-buy-button-price-container .edy-buy-button-price-original,
.front-page .dark-background .edy-buy-button-price-container .edy-buy-button-effective-price {
  color: var(--main-color-front);
}

.front-page .light-background .edy-buy-button-price-container .edy-buy-button-price-original,
.front-page .light-background .edy-buy-button-price-container .edy-buy-button-effective-price {
  color: var(--secondary-color-front);
}

.content-formatted .form_field_textfield,
.content-formatted .form_field_textarea,
.content-formatted .form_field_select {
  font-size: var(--form-field-font-size);
  border-color: var(--form-field-color);
  border-width: var(--form-field-border-width);
}

.dark-background .content-formatted .form_field_textfield, .dark-background
.content-formatted .form_field_textarea, .dark-background
.content-formatted .form_field_select {
  border-color: var(--main-color-front);
}

.light-background .content-formatted .form_field_textfield, .light-background
.content-formatted .form_field_textarea, .light-background
.content-formatted .form_field_select {
  border-color: var(--secondary-color-front);
}

.content-formatted .edy-buy-button-variants .form_field_label,
.content-formatted .edy-buy-button-variants .form_field_select {
  color: var(--form-field-color);
}

.content-formatted .edy-fe-label {
  color: var(--form-field-color);
}

.content-formatted .form_submit input {
  padding: calc(var(--form-button-padding) - 3px) var(--form-button-padding);
  color: var(--form-button-color);
  background-color: var(--form-button-background-color);
}

.product-page .content-header h1 {
  font-size: var(--product-title-size);
  font-weight: var(--product-title-font-weight);
  font-style: var(--product-title-font-style);
  -webkit-text-decoration: var(--product-title-font-text-decoration);
          text-decoration: var(--product-title-font-text-decoration);
  color: var(--product-title-color);
  text-align: var(--product-title-alignment);
}

.product-page .content-formatted .content-product-description {
  color: var(--product-description-color);
  font-size: var(--product-description-size);
  font-weight: var(--product-description-font-weight);
  font-style: var(--product-description-font-style);
  -webkit-text-decoration: var(--product-description-font-text-decoration);
          text-decoration: var(--product-description-font-text-decoration);
}

.product-page .product-price {
  color: var(--product-price-color);
  font-size: var(--product-price-size);
  font-weight: var(--product-price-font-weight);
  font-style: var(--product-price-font-style);
}

.product-page .product-price .product-price-final {
  -webkit-text-decoration: var(--product-price-font-text-decoration);
          text-decoration: var(--product-price-font-text-decoration);
}

.dark-background .edy-product-widget-grid .edy-product-widget-item .edy-product-widget-item-details-wrap .edy-product-widget-item-title,
.dark-background .edy-product-widget-grid .edy-product-widget-item .edy-product-widget-item-details-wrap .edy-product-widget-item-link {
  color: var(--main-color-front);
}

.dark-background .edy-product-widget-grid .edy-product-widget-item .edy-product-widget-item-details-wrap .edy-product-widget-item-description {
  color: var(--main-color-front);
  opacity: .7;
}

.dark-background .edy-product-widget-grid .edy-product-widget-item .edy-product-widget-item-top-outer .edy-product-widget-item-top.edy-product-widget-item-without-image {
  border: 1px solid var(--main-color-front);
  opacity: .5;
}

.dark-background .edy-product-widget-grid .edy-product-widget-item .edy-product-widget-item-details-flex-wrap .edy-product-widget-item-out-of-stock,
.dark-background .edy-product-widget-grid .edy-product-widget-item .edy-product-widget-item-details-flex-wrap .edy-product-widget-item-btn {
  color: var(--main-color-front);
}

.dark-background .edy-product-widget-grid .edy-product-widget-item:hover .edy-product-widget-item-price {
  opacity: 0;
}

.dark-background .edy-product-widget-list .edy-product-widget-item-wrap .edy-product-widget-item .edy-product-widget-item-details-wrap .edy-product-widget-item-header .edy-product-widget-item-title .edy-product-widget-item-link {
  color: var(--main-color-front);
}

.dark-background .edy-product-widget-list .edy-product-widget-item-wrap .edy-product-widget-item .edy-product-widget-item-details-wrap .edy-product-widget-item-header .edy-product-widget-item-out-of-stock {
  color: var(--main-color-front);
}

.dark-background .edy-product-widget-list .edy-product-widget-item-wrap .edy-product-widget-item .edy-product-widget-item-details-wrap .edy-product-widget-item-description {
  color: var(--main-color-front);
}

.dark-background .edy-product-widget-list .edy-product-widget-item-wrap .edy-product-widget-item .edy-product-widget-item-details-wrap .edy-product-widget-item-without-image {
  border: 1px solid var(--main-color-front);
  opacity: .5;
}

.edy-product-widget-filter-sort option {
  color: var(--secondary-color-content);
}

.front-page .edy-product-widget-filter-sort option {
  color: var(--secondary-color-front);
}

.dark-background .edy-product-widget-item-price-original,
.dark-background .edy-product-widget-item-price-final,
.dark-background .edy-product-widget-filter-name,
.dark-background .edy-product-widget-filter-sort,
.dark-background .edy-product-widget-filter-label,
.dark-background .edy-product-widget-filter-search-input {
  color: var(--main-color-front);
}

.dark-background .edy-product-widget-item-price-original {
  opacity: .4;
}
