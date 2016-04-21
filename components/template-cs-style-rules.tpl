body {
  color: var(--global-content-body-text-color);
}

@media screen and (min-width: 961px) {
  .dark-background .menu-front .menu-link {
    color: var(--global-main-color-front);
  }
  .dark-background .menu-front .menu-link.active {
    border-color: var(--global-main-color-front);
  }
  .dark-background .menu-front .menu-link:hover {
    border-color: var(--global-main-color-front);
    background: var(--global-main-color-front);
    color: var(--global-secondary-color-front);
  }
  .light-background .menu-front .menu-link {
    color: var(--global-secondary-color-front);
  }
  .light-background .menu-front .menu-link.active {
    border-color: var(--global-secondary-color-front);
  }
  .light-background .menu-front .menu-link:hover {
    border-color: var(--global-secondary-color-front);
    background: var(--global-secondary-color-front);
    color: var(--global-main-color-front);
  }
}
.header-title, .header-title a {
  font-size: var(--global-header-body-font-size);
  font-style: var(--global-header-body-font-style);
  font-weight: var(--global-header-body-font-weight);
  color: var(--global-header-body-text-color);
  text-decoration: var(--global-header-body-text-decoration);
  text-transform: var(--global-header-body-text-transform);
}
.header-title .header-link:hover {
  color: var(--global-header-body-text-color);
}

.content-topbar,
.content,
.content.two-columns {
  background-color: var(--global-content-background-color);
}

.menu-main .menu-link {
  font-size: var(--global-menu-main-font-size);
  font-style: var(--global-menu-main-font-style);
  font-weight: var(--global-menu-main-font-weight);
  color: var(--global-menu-main-color);
  text-decoration: var(--global-menu-main-text-decoration);
  text-transform: var(--global-menu-main-text-transform);
}
.menu-main .menu-link.active {
  font-style: var(--global-menu-main-active-font-style);
  font-weight: var(--global-menu-main-active-font-weight);
  color: var(--global-menu-main-active-color);
  text-decoration: var(--global-menu-main-active-text-decoration);
  text-transform: var(--global-menu-main-active-text-transform);
}
.menu-main .menu-link:hover {
  font-style: var(--global-menu-main-hover-font-style);
  font-weight: var(--global-menu-main-hover-font-weight);
  color: var(--global-menu-main-hover-color);
  text-decoration: var(--global-menu-main-hover-text-decoration);
  text-transform: var(--global-menu-main-hover-text-transform);
}

.menu-sub .menu-link {
  font-size: var(--global-menu-sub-font-size);
  font-style: var(--global-menu-sub-font-style);
  font-weight: var(--global-menu-sub-font-weight);
  color: var(--global-menu-sub-color);
  text-decoration: var(--global-menu-sub-text-decoration);
  text-transform: var(--global-menu-sub-text-transform);
}
.menu-sub .menu-link.active {
  font-style: var(--global-menu-sub-active-font-style);
  font-weight: var(--global-menu-sub-active-font-weight);
  color: var(--global-menu-sub-active-color);
  text-decoration: var(--global-menu-sub-active-text-decoration);
  text-transform: var(--global-menu-sub-active-text-transform);
}
.menu-sub .menu-link:hover {
  font-style: var(--global-menu-sub-hover-font-style);
  font-weight: var(--global-menu-sub-hover-font-weight);
  color: var(--global-menu-sub-hover-color);
  text-decoration: var(--global-menu-sub-hover-text-decoration);
  text-transform: var(--global-menu-sub-hover-text-transform);
}

.content .content-formatted {
  font-size: var(--global-content-body-font-size);
  font-style: var(--global-content-body-font-style);
  font-weight: var(--global-content-body-font-weight);
  line-height: var(--global-content-body-line-height);
  text-decoration: var(--global-content-body-text-decoration);
  text-transform: var(--global-content-body-text-transform);
}
.light-background .content-formatted, .light-background .content-formatted h1, .light-background .content-formatted h2, .light-background .content-formatted h3, .light-background .content-formatted h4, .light-background .content-formatted h5, .light-background .content-formatted h6, .light-background .content-formatted p, .light-background .content-formatted ul, .light-background .content-formatted ol, .light-background .content-formatted table {
  color: var(--global-secondary-color-front);
}
.dark-background .content-formatted, .dark-background .content-formatted h1, .dark-background .content-formatted h2, .dark-background .content-formatted h3, .dark-background .content-formatted h4, .dark-background .content-formatted h5, .dark-background .content-formatted h6, .dark-background .content-formatted p, .dark-background .content-formatted ul, .dark-background .content-formatted ol, .dark-background .content-formatted table {
  color: var(--global-main-color-front);
}
.content-formatted a {
  font-weight: var(--global-content-link-font-weight);
  font-style: var(--global-content-link-font-style);
  text-decoration: var(--global-content-link-text-decoration);
  text-transform: var(--global-content-link-text-transform);
  color: var(--global-content-link-color);
}
.content-formatted a:hover {
  font-weight: var(--global-content-link-hover-font-weight);
  font-style: var(--global-content-link-hover-font-style);
  text-decoration: var(--global-content-link-hover-text-decoration);
  text-transform: var(--global-content-link-hover-text-transform);
  color: var(--global-content-link-hover-color);
}
.front-page .content-formatted pre, .front-page
.content-formatted code {
  color: var(--global-secondary-color-front);
}
.dark-background .content-formatted .custom-btn {
  border-color: var(--global-main-color-front);
  color: var(--global-main-color-front);
}
.content-formatted .custom-btn, .light-background .content-formatted .custom-btn {
  border-color: var(--global-secondary-color-front);
  color: var(--global-secondary-color-front);
}
.dark-background .content-formatted .custom-btn:hover {
  color: var(--global-secondary-color-front);
  border-color: var(--global-main-color-front);
  background-color: var(--global-main-color-front);
}
.content-formatted .custom-btn:hover, .light-background .content-formatted .custom-btn:hover {
  color: var(--global-main-color-front);
  border-color: var(--global-secondary-color-front);
  background-color: var(--global-secondary-color-front);
}
