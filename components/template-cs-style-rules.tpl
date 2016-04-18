.container {
  max-width: var(--global-container-max-width) !important;
  font-family: var(--global-main-font-family);
}
.container .header .header-container {
  background-color: var(--global-header-bg-color);
  justify-content: var(--global-header-alignment);
  padding: var(--global-header-padding);
}
.container .content-inner {
  width: var(--global-content-max-width);
}
.container .content-formatted {
  padding: var(--global-content-padding);
}

.feature-section {
  min-height: var(--global-feature-section-min-height);
}
@media screen and (min-width: 960px) {
  .feature-section {
    width: var(--global-feature-section-width);
  }
  .feature-section.section-with-padding {
    padding: var(--global-feature-section-padding);
    align-items: var(--global-feature-section-alignment-vertical);
  }
}

@media screen and (min-width: 961px) {
  .menu-main .top-level .menu-item {
    margin-left: var(--global-menu-main-margin);
  }

  .menu-main .top-level .menu-item .menu-link {
    padding-left: var(--global-menu-main-padding-lr);
    padding-right: var(--global-menu-main-padding-lr);
    padding-top: var(--global-menu-main-padding-tb);
    padding-bottom: var(--global-menu-main-padding-tb);
    opacity: var(--global-menu-main-opacity);
    text-decoration: var(--global-menu-main-text-decoration);
    letter-spacing: var(--global-menu-main-letter-spacing);
    text-transform: var(--global-menu-main-text-transform);
    color: var(--global-menu-main-color);
    border-width: var(--global-menu-main-border-width);
    border-style: var(--global-menu-main-border-style);
    border-color: var(--global-menu-main-border-color);
    background-color: var(--global-menu-main-bg-color);
    font-family: var(--global-menu-main-font-family);
    font-size: var(--global-menu-main-font-size);
    font-weight: var(--global-menu-main-font-weight);
    font-style: var(--global-menu-main-font-style);
  }
  .menu-main .top-level .menu-item .menu-link.active {
    opacity: var(--global-menu-main-opacity-active);
    text-decoration: var(--global-menu-main-text-decoration-active);
    letter-spacing: var(--global-menu-main-letter-spacing-active);
    text-transform: var(--global-menu-main-text-transform-active);
    color: var(--global-menu-main-color-active);
    border-width: var(--global-menu-main-border-width-active);
    border-style: var(--global-menu-main-border-style-active);
    border-color: var(--global-menu-main-border-color-active);
    background-color: var(--global-menu-main-bg-color-active);
    font-size: var(--global-menu-main-font-size-active);
    font-weight: var(--global-menu-main-font-weight-active);
    font-style: var(--global-menu-main-font-style-active);
  }
  .menu-main .top-level .menu-item .menu-link:hover {
    opacity: var(--global-menu-main-opacity-hover);
    text-decoration: var(--global-menu-main-text-decoration-hover);
    letter-spacing: var(--global-menu-main-letter-spacing-hover);
    text-transform: var(--global-menu-main-text-transform-hover);
    color: var(--global-menu-main-color-hover);
    border-width: var(--global-menu-main-border-width-hover);
    border-style: var(--global-menu-main-border-style-hover);
    border-color: var(--global-menu-main-border-color-hover);
    background-color: var(--global-menu-main-bg-color-hover);
    font-size: var(--global-menu-main-font-size-hover);
    font-weight: var(--global-menu-main-font-weight-hover);
    font-style: var(--global-menu-main-font-style-hover);
  }
}
.content-formatted {
  color: var(--global-main-color);
}
.site-header .content-formatted {
  text-decoration: var(--global-header-body-text-decoration);
  letter-spacing: var(--global-header-body-letter-spacing);
  text-transform: var(--global-header-body-text-transform);
  color: var(--global-header-body-color);
  font-family: var(--global-header-body-font-family);
  font-size: var(--global-header-body-font-size);
  font-weight: var(--global-header-body-font-weight);
  font-style: var(--global-header-body-font-style);
  line-height: var(--global-header-body-line-height);
}
.content .content-formatted {
  text-align: var(--global-content-body-text-alignment);
  text-decoration: var(--global-content-body-text-decoration);
  letter-spacing: var(--global-content-body-letter-spacing);
  text-transform: var(--global-content-body-text-transform);
  color: var(--global-content-body-color);
  font-family: var(--global-content-body-font-family);
  font-size: var(--global-content-body-font-size);
  font-weight: var(--global-content-body-font-weight);
  font-style: var(--global-content-body-font-style);
  line-height: var(--global-content-body-line-height);
}
.site-footer .content-formatted {
  text-align: var(--global-footer-body-text-alignment);
  text-decoration: var(--global-footer-body-text-decoration);
  letter-spacing: var(--global-footer-body-letter-spacing);
  text-transform: var(--global-footer-body-text-transform);
  color: var(--global-footer-body-color);
  font-family: var(--global-footer-body-font-family);
  font-size: var(--global-footer-body-font-size);
  font-weight: var(--global-footer-body-font-weight);
  font-style: var(--global-footer-body-font-style);
  line-height: var(--global-footer-body-line-height);
}
.content-formatted h1 {
  text-align: var(--global-headings-title-text-alignment);
  text-decoration: var(--global-headings-title-text-decoration);
  letter-spacing: var(--global-headings-title-letter-spacing);
  text-transform: var(--global-headings-title-text-transform);
  color: var(--global-headings-title-color);
  font-family: var(--global-headings-title-font-family);
  font-size: var(--global-headings-title-font-size);
  font-weight: var(--global-headings-title-font-weight);
  font-style: var(--global-headings-title-font-style);
  line-height: var(--global-headings-title-line-height);
}
.content-formatted h2:not(.comments-title) {
  text-align: var(--global-headings-heading-text-alignment);
  text-decoration: var(--global-headings-heading-text-decoration);
  letter-spacing: var(--global-headings-heading-letter-spacing);
  text-transform: var(--global-headings-heading-text-transform);
  color: var(--global-headings-heading-color);
  font-family: var(--global-headings-heading-font-family);
  font-size: var(--global-headings-heading-font-size);
  font-weight: var(--global-headings-heading-font-weight);
  font-style: var(--global-headings-heading-font-style);
  line-height: var(--global-headings-heading-line-height);
}
.content-formatted h3,
.content-formatted h4,
.content-formatted h5,
.content-formatted h6 {
  text-align: var(--global-headings-subheading-text-alignment);
  text-decoration: var(--global-headings-subheading-text-decoration);
  letter-spacing: var(--global-headings-subheading-letter-spacing);
  text-transform: var(--global-headings-subheading-text-transform);
  color: var(--global-headings-subheading-color);
  font-family: var(--global-headings-subheading-font-family);
  font-size: var(--global-headings-subheading-font-size);
  font-weight: var(--global-headings-subheading-font-weight);
  font-style: var(--global-headings-subheading-font-style);
  line-height: var(--global-headings-subheading-line-height);
}
.site-header .content-formatted a {
  color: var(--global-header-body-color);
}
.site-header .content-formatted a:hover {
  text-decoration: var(--global-header-body-hover-text-decoration);
  text-transform: var(--global-header-body-hover-text-transform);
  color: var(--global-header-body-hover-color);
  background-color: var(--global-header-body-hover-background-color);
  font-size: var(--global-header-body-hover-font-size);
  font-weight: var(--global-header-body-hover-font-weight);
  font-style: var(--global-header-body-hover-font-style);
}
.content .content-formatted a, .site-footer .content-formatted a {
  padding-right: var(--global-content-link-padding);
  padding-left: var(--global-content-link-padding);
  text-decoration: var(--global-content-link-text-decoration);
  letter-spacing: var(--global-content-link-letter-spacing);
  text-transform: var(--global-content-link-text-transform);
  color: var(--global-content-link-color);
  background-color: var(--global-content-link-background-color);
  font-family: var(--global-content-link-font-family);
  font-weight: var(--global-content-link-font-weight);
  font-style: var(--global-content-link-font-style);
  line-height: var(--global-content-link-line-height);
}
.content .content-formatted a:hover, .site-footer .content-formatted a:hover {
  text-decoration: var(--global-content-link-hover-text-decoration);
  text-transform: var(--global-content-link-hover-text-transform);
  color: var(--global-content-link-hover-color);
  background-color: var(--global-content-link-hover-background-color);
  font-weight: var(--global-content-link-hover-font-weight);
  font-style: var(--global-content-link-hover-font-style);
}
.content .content-formatted a {
  font-size: var(--global-content-link-font-size);
}
.content .content-formatted a:hover {
  font-size: var(--global-content-link-hover-font-size);
}
.content-formatted ul,
.content-formatted ol,
.content-formatted dl {
  text-decoration: var(--global-list-text-decoration);
  letter-spacing: var(--global-list-letter-spacing);
  text-transform: var(--global-list-text-transform);
  color: var(--global-list-color);
  font-family: var(--global-list-font-family);
  font-size: var(--global-list-font-size);
  font-weight: var(--global-list-font-weight);
  font-style: var(--global-list-font-style);
  line-height: var(--global-list-line-height);
}
.content-formatted a.custom-btn {
  padding-right: var(--global-content-button-padding);
  padding-left: var(--global-content-button-padding);
  text-decoration: var(--global-content-button-text-decoration);
  letter-spacing: var(--global-content-button-letter-spacing);
  text-transform: var(--global-content-button-text-transform);
  color: var(--global-content-button-color);
  background-color: var(--global-content-button-background-color);
  font-family: var(--global-content-button-font-family);
  font-size: var(--global-content-button-font-size);
  font-weight: var(--global-content-button-font-weight);
  font-style: var(--global-content-button-font-style);
  line-height: var(--global-content-button-line-height);
}
.content-formatted a.custom-btn:hover {
  text-decoration: var(--global-content-button-hover-text-decoration);
  text-transform: var(--global-content-button-hover-text-transform);
  color: var(--global-content-button-hover-color);
  background-color: var(--global-content-button-hover-background-color);
  font-size: var(--global-content-button-hover-font-size);
  font-weight: var(--global-content-button-hover-font-weight);
  font-style: var(--global-content-button-hover-font-style);
}
.content-formatted table td,
.content-formatted table th {
  padding: var(--global-table-padding);
  text-decoration: var(--global-table-text-decoration);
  letter-spacing: var(--global-table-letter-spacing);
  text-transform: var(--global-table-text-transform);
  color: var(--global-table-color);
  border-width: var(--global-table-border-width);
  border-style: var(--global-table-border-style);
  border-color: var(--global-table-border-color);
  font-family: var(--global-table-font-family);
  font-size: var(--global-table-font-size);
  font-weight: var(--global-table-font-weight);
  font-style: var(--global-table-font-style);
  line-height: var(--global-table-line-height);
}
