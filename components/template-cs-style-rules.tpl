.container {
  font-family: var(--main-font-family);
}
@media screen and (min-width: 961px) {
  .container {
    max-width: var(--container-max-width);
  }
}
.container .content-inner {
  width: var(--content-max-width);
}
.container .content-formatted {
  padding: var(--content-padding);
}

.feature-section {
  min-height: var(--feature-section-min-height);
}
@media screen and (min-width: 960px) {
  .feature-section {
    width: var(--feature-section-width);
  }
  .feature-section.section-with-padding {
    padding: var(--feature-section-padding);
    -webkit-align-items: var(--feature-section-alignment-vertical);
        -ms-flex-align: var(--feature-section-alignment-vertical);
                -ms-grid-row-align: var(--feature-section-alignment-vertical);
            align-items: var(--feature-section-alignment-vertical);
  }
}

@media screen and (min-width: 961px) {
  .menu-main .top-level .menu-item {
    margin-left: var(--menu-main-margin);
  }

  .menu-main .top-level .menu-item .menu-link {
    padding-left: var(--menu-main-padding-lr);
    padding-right: var(--menu-main-padding-lr);
    padding-top: var(--menu-main-padding-tb);
    padding-bottom: var(--menu-main-padding-tb);
    opacity: var(--menu-main-opacity);
    text-decoration: var(--menu-main-text-decoration);
    letter-spacing: var(--menu-main-letter-spacing);
    text-transform: var(--menu-main-text-transform);
    color: var(--menu-main-color);
    border-width: var(--menu-main-border-width);
    border-style: var(--menu-main-border-style);
    border-color: var(--menu-main-border-color);
    background-color: var(--menu-main-bg-color);
    font-family: var(--menu-main-font-family);
    font-size: var(--menu-main-font-size);
    font-weight: var(--menu-main-font-weight);
    font-style: var(--menu-main-font-style);
  }
  .menu-main .top-level .menu-item .menu-link.active {
    opacity: var(--menu-main-opacity-active);
    text-decoration: var(--menu-main-text-decoration-active);
    letter-spacing: var(--menu-main-letter-spacing-active);
    text-transform: var(--menu-main-text-transform-active);
    color: var(--menu-main-color-active);
    border-width: var(--menu-main-border-width-active);
    border-style: var(--menu-main-border-style-active);
    border-color: var(--menu-main-border-color-active);
    background-color: var(--menu-main-bg-color-active);
    font-size: var(--menu-main-font-size-active);
    font-weight: var(--menu-main-font-weight-active);
    font-style: var(--menu-main-font-style-active);
  }
  .menu-main .top-level .menu-item .menu-link:hover {
    opacity: var(--menu-main-opacity-hover);
    text-decoration: var(--menu-main-text-decoration-hover);
    letter-spacing: var(--menu-main-letter-spacing-hover);
    text-transform: var(--menu-main-text-transform-hover);
    color: var(--menu-main-color-hover);
    border-width: var(--menu-main-border-width-hover);
    border-style: var(--menu-main-border-style-hover);
    border-color: var(--menu-main-border-color-hover);
    background-color: var(--menu-main-bg-color-hover);
    font-size: var(--menu-main-font-size-hover);
    font-weight: var(--menu-main-font-weight-hover);
    font-style: var(--menu-main-font-style-hover);
  }
}
.content-formatted,
.dark-background .content-formatted,
.light-background .content-formatted {
  color: var(--main-color);
}
.site-header .content-formatted, .site-header
.dark-background .content-formatted, .site-header
.light-background .content-formatted {
  text-decoration: var(--header-body-text-decoration);
  letter-spacing: var(--header-body-letter-spacing);
  text-transform: var(--header-body-text-transform);
  color: var(--header-body-color);
  font-family: var(--header-body-font-family);
  font-size: var(--header-body-font-size);
  font-weight: var(--header-body-font-weight);
  font-style: var(--header-body-font-style);
  line-height: var(--header-body-line-height);
}
.content .content-formatted, .content
.dark-background .content-formatted, .content
.light-background .content-formatted {
  text-align: var(--content-body-text-alignment);
  text-decoration: var(--content-body-text-decoration);
  letter-spacing: var(--content-body-letter-spacing);
  text-transform: var(--content-body-text-transform);
  color: var(--content-body-color);
  font-family: var(--content-body-font-family);
  font-size: var(--content-body-font-size);
  font-weight: var(--content-body-font-weight);
  font-style: var(--content-body-font-style);
  line-height: var(--content-body-line-height);
}
.site-footer .content-formatted, .site-footer
.dark-background .content-formatted, .site-footer
.light-background .content-formatted {
  text-align: var(--footer-body-text-alignment);
  text-decoration: var(--footer-body-text-decoration);
  letter-spacing: var(--footer-body-letter-spacing);
  text-transform: var(--footer-body-text-transform);
  color: var(--footer-body-color);
  font-family: var(--footer-body-font-family);
  font-size: var(--footer-body-font-size);
  font-weight: var(--footer-body-font-weight);
  font-style: var(--footer-body-font-style);
  line-height: var(--footer-body-line-height);
}
.content-formatted h1,
.dark-background .content-formatted h1,
.light-background .content-formatted h1 {
  text-align: var(--headings-title-text-alignment);
  text-decoration: var(--headings-title-text-decoration);
  letter-spacing: var(--headings-title-letter-spacing);
  text-transform: var(--headings-title-text-transform);
  color: var(--headings-title-color) !important;
  font-family: var(--headings-title-font-family);
  font-size: var(--headings-title-font-size);
  font-weight: var(--headings-title-font-weight);
  font-style: var(--headings-title-font-style);
  line-height: var(--headings-title-line-height);
}
.content-formatted h2:not(.comments-title),
.dark-background .content-formatted h2:not(.comments-title),
.light-background .content-formatted h2:not(.comments-title) {
  text-align: var(--headings-heading-text-alignment);
  text-decoration: var(--headings-heading-text-decoration);
  letter-spacing: var(--headings-heading-letter-spacing);
  text-transform: var(--headings-heading-text-transform);
  color: var(--headings-heading-color);
  font-family: var(--headings-heading-font-family);
  font-size: var(--headings-heading-font-size);
  font-weight: var(--headings-heading-font-weight);
  font-style: var(--headings-heading-font-style);
  line-height: var(--headings-heading-line-height);
}
.content-formatted h3,
.content-formatted h4,
.content-formatted h5,
.content-formatted h6,
.dark-background .content-formatted h3,
.dark-background .content-formatted h4,
.dark-background .content-formatted h5,
.dark-background .content-formatted h6,
.light-background .content-formatted h3,
.light-background .content-formatted h4,
.light-background .content-formatted h5,
.light-background .content-formatted h6 {
  text-align: var(--headings-subheading-text-alignment);
  text-decoration: var(--headings-subheading-text-decoration);
  letter-spacing: var(--headings-subheading-letter-spacing);
  text-transform: var(--headings-subheading-text-transform);
  color: var(--headings-subheading-color);
  font-family: var(--headings-subheading-font-family);
  font-size: var(--headings-subheading-font-size);
  font-weight: var(--headings-subheading-font-weight);
  font-style: var(--headings-subheading-font-style);
  line-height: var(--headings-subheading-line-height);
}
.site-header .content-formatted a, .site-header
.dark-background .content-formatted a, .site-header
.light-background .content-formatted a {
  color: var(--header-body-color);
}
.site-header .content-formatted a:hover, .site-header
.dark-background .content-formatted a:hover, .site-header
.light-background .content-formatted a:hover {
  text-decoration: var(--header-body-hover-text-decoration);
  text-transform: var(--header-body-hover-text-transform);
  color: var(--header-body-hover-color);
  background-color: var(--header-body-hover-background-color);
  font-size: var(--header-body-hover-font-size);
  font-weight: var(--header-body-hover-font-weight);
  font-style: var(--header-body-hover-font-style);
}
.content .content-formatted a, .site-footer .content-formatted a, .content
.dark-background .content-formatted a, .site-footer
.dark-background .content-formatted a, .content
.light-background .content-formatted a, .site-footer
.light-background .content-formatted a {
  padding-right: var(--content-link-padding);
  padding-left: var(--content-link-padding);
  text-decoration: var(--content-link-text-decoration);
  letter-spacing: var(--content-link-letter-spacing);
  text-transform: var(--content-link-text-transform);
  color: var(--content-link-color);
  background-color: var(--content-link-background-color);
  font-family: var(--content-link-font-family);
  font-weight: var(--content-link-font-weight);
  font-style: var(--content-link-font-style);
  line-height: var(--content-link-line-height);
}
.content .content-formatted a:hover, .site-footer .content-formatted a:hover, .content
.dark-background .content-formatted a:hover, .site-footer
.dark-background .content-formatted a:hover, .content
.light-background .content-formatted a:hover, .site-footer
.light-background .content-formatted a:hover {
  text-decoration: var(--content-link-hover-text-decoration);
  text-transform: var(--content-link-hover-text-transform);
  color: var(--content-link-hover-color);
  background-color: var(--content-link-hover-background-color);
  font-weight: var(--content-link-hover-font-weight);
  font-style: var(--content-link-hover-font-style);
}
.content .content-formatted a, .content
.dark-background .content-formatted a, .content
.light-background .content-formatted a {
  font-size: var(--content-link-font-size);
}
.content .content-formatted a:hover, .content
.dark-background .content-formatted a:hover, .content
.light-background .content-formatted a:hover {
  font-size: var(--content-link-hover-font-size);
}
.content-formatted ul,
.content-formatted ol,
.content-formatted dl,
.dark-background .content-formatted ul,
.dark-background .content-formatted ol,
.dark-background .content-formatted dl,
.light-background .content-formatted ul,
.light-background .content-formatted ol,
.light-background .content-formatted dl {
  text-decoration: var(--list-text-decoration);
  letter-spacing: var(--list-letter-spacing);
  text-transform: var(--list-text-transform);
  color: var(--list-color);
  font-family: var(--list-font-family);
  font-size: var(--list-font-size);
  font-weight: var(--list-font-weight);
  font-style: var(--list-font-style);
  line-height: var(--list-line-height);
}
.content-formatted a.custom-btn,
.dark-background .content-formatted a.custom-btn,
.light-background .content-formatted a.custom-btn {
  padding-right: var(--content-button-padding);
  padding-left: var(--content-button-padding);
  text-decoration: var(--content-button-text-decoration);
  letter-spacing: var(--content-button-letter-spacing);
  text-transform: var(--content-button-text-transform);
  color: var(--content-button-color);
  background-color: var(--content-button-background-color);
  font-family: var(--content-button-font-family);
  font-size: var(--content-button-font-size);
  font-weight: var(--content-button-font-weight);
  font-style: var(--content-button-font-style);
  line-height: var(--content-button-line-height);
}
.content-formatted a.custom-btn:hover,
.dark-background .content-formatted a.custom-btn:hover,
.light-background .content-formatted a.custom-btn:hover {
  text-decoration: var(--content-button-hover-text-decoration);
  text-transform: var(--content-button-hover-text-transform);
  color: var(--content-button-hover-color);
  background-color: var(--content-button-hover-background-color);
  font-size: var(--content-button-hover-font-size);
  font-weight: var(--content-button-hover-font-weight);
  font-style: var(--content-button-hover-font-style);
}
.content-formatted table td,
.content-formatted table th,
.dark-background .content-formatted table td,
.dark-background .content-formatted table th,
.light-background .content-formatted table td,
.light-background .content-formatted table th {
  padding: var(--table-padding);
  text-decoration: var(--table-text-decoration);
  letter-spacing: var(--table-letter-spacing);
  text-transform: var(--table-text-transform);
  color: var(--table-color);
  border-width: var(--table-border-width);
  border-style: var(--table-border-style);
  border-color: var(--table-border-color);
  font-family: var(--table-font-family);
  font-size: var(--table-font-size);
  font-weight: var(--table-font-weight);
  font-style: var(--table-font-style);
  line-height: var(--table-line-height);
}
