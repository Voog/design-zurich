:root {
  /* VoogStyle
    "pathI18n": ["custom_styles.header", "custom_styles.title", "custom_styles.normal"],
    "titleI18n": "custom_styles.size",
    "editor": "rangePicker",
    "min": 8,
    "max": 100,
    "unit": "px",
    "featured": true,
    "scope": "global"
  */
  --header-body-font-size: 24px;
  /* VoogStyle
    "pathI18n": ["custom_styles.header", "custom_styles.title", "custom_styles.normal"],
    "titleI18n": "custom_styles.font_size",
    "type": "button",
    "editor": "toggleIcon",
    "states": {
      "on": "600",
      "off": "400"
    },
    "icon": "bold",
    "scope": "global"
  */
  --header-body-font-weight: 600;
  /* VoogStyle
    "pathI18n": ["custom_styles.header", "custom_styles.title", "custom_styles.normal"],
    "titleI18n": "custom_styles.font_style",
    "type": "button",
    "editor": "toggleIcon",
    "states": {
      "on": "italic",
      "off": "normal"
    },
    "icon": "italic",
    "scope": "global"
  */
  --header-body-font-style: normal;
  /* VoogStyle
    "pathI18n": ["custom_styles.header", "custom_styles.title", "custom_styles.normal"],
    "titleI18n": "custom_styles.text_decoration",
    "type": "button",
    "editor": "toggleIcon",
    "states": {
      "on": "underline",
      "off": "none"
    },
    "icon": "underline",
    "scope": "global"
  */
  --header-body-text-decoration: none;
  /* VoogStyle
    "pathI18n": ["custom_styles.header", "custom_styles.title", "custom_styles.normal"],
    "titleI18n": "custom_styles.text_transform",
    "type": "button",
    "editor": "toggleIcon",
    "states": {
      "on": "uppercase",
      "off": "none"
    },
    "icon": "uppercase",
    "scope": "global"
  */
  --header-body-text-transform: none;
  /* VoogStyle
    "pathI18n": ["custom_styles.header", "custom_styles.main_menu", "custom_styles.normal"],
    "titleI18n": "custom_styles.size",
    "editor": "rangePicker",
    "min": 8,
    "max": 100,
    "unit": "px",
    "featured": true,
    "scope": "global"
  */
  --menu-main-font-size: 14px;
  /* VoogStyle
    "pathI18n": ["custom_styles.header", "custom_styles.main_menu", "custom_styles.normal"],
    "titleI18n": "custom_styles.font_size",
    "type": "button",
    "editor": "toggleIcon",
    "states": {
      "on": "600",
      "off": "400"
    },
    "icon": "bold",
    "scope": "global",
    "boundVariables": [
      "--menu-main-hover-font-weight",
      "--menu-main-active-font-weight"
    ]
  */
  --menu-main-font-weight: 600;
  /* VoogStyle
    "pathI18n": ["custom_styles.header", "custom_styles.main_menu", "custom_styles.hover"],
    "titleI18n": "custom_styles.font_size",
    "type": "button",
    "editor": "toggleIcon",
    "states": {
      "on": "600",
      "off": "400"
    },
    "icon": "bold",
    "scope": "global",
    "boundVariables": [
      "--menu-main-active-font-weight"
    ]
  */
  --menu-main-hover-font-weight: 600;
  /* VoogStyle
    "pathI18n": ["custom_styles.header", "custom_styles.main_menu", "custom_styles.active"],
    "titleI18n": "custom_styles.font_size",
    "type": "button",
    "editor": "toggleIcon",
    "states": {
      "on": "600",
      "off": "400"
    },
    "icon": "bold",
    "scope": "global"
  */
  --menu-main-active-font-weight: 600;
  /* VoogStyle
    "pathI18n": ["custom_styles.header", "custom_styles.main_menu", "custom_styles.normal"],
    "titleI18n": "custom_styles.font_style",
    "type": "button",
    "editor": "toggleIcon",
    "states": {
      "on": "italic",
      "off": "normal"
    },
    "icon": "italic",
    "scope": "global",
    "boundVariables": [
      "--menu-main-hover-font-style",
      "--menu-main-active-font-style"
    ]
  */
  --menu-main-font-style: normal;
  /* VoogStyle
    "pathI18n": ["custom_styles.header", "custom_styles.main_menu", "custom_styles.hover"],
    "titleI18n": "custom_styles.font_style",
    "type": "button",
    "editor": "toggleIcon",
    "states": {
      "on": "italic",
      "off": "normal"
    },
    "icon": "italic",
    "scope": "global",
    "boundVariables": [
      "--menu-main-active-font-style"
    ]
  */
  --menu-main-hover-font-style: normal;
  /* VoogStyle
    "pathI18n": ["custom_styles.header", "custom_styles.main_menu", "custom_styles.active"],
    "titleI18n": "custom_styles.font_style",
    "type": "button",
    "editor": "toggleIcon",
    "states": {
      "on": "italic",
      "off": "normal"
    },
    "icon": "italic",
    "scope": "global"
  */
  --menu-main-active-font-style: normal;
  /* VoogStyle
    "pathI18n": ["custom_styles.header", "custom_styles.main_menu", "custom_styles.normal"],
    "titleI18n": "custom_styles.text_decoration",
    "type": "button",
    "editor": "toggleIcon",
    "states": {
      "on": "underline",
      "off": "none"
    },
    "icon": "underline",
    "scope": "global",
    "boundVariables": [
      "--menu-main-hover-text-decoration",
      "--menu-main-active-text-decoration"
    ]
  */
  --menu-main-text-decoration: none;
  /* VoogStyle
    "pathI18n": ["custom_styles.header", "custom_styles.main_menu", "custom_styles.hover"],
    "titleI18n": "custom_styles.text_decoration",
    "type": "button",
    "editor": "toggleIcon",
    "states": {
      "on": "underline",
      "off": "none"
    },
    "icon": "underline",
    "scope": "global",
    "boundVariables": [
      "--menu-main-active-text-decoration"
    ]
  */
  --menu-main-hover-text-decoration: none;
  /* VoogStyle
    "pathI18n": ["custom_styles.header", "custom_styles.main_menu", "custom_styles.active"],
    "titleI18n": "custom_styles.text_decoration",
    "type": "button",
    "editor": "toggleIcon",
    "states": {
      "on": "underline",
      "off": "none"
    },
    "icon": "underline",
    "scope": "global"
  */
  --menu-main-active-text-decoration: none;
  /* VoogStyle
    "pathI18n": ["custom_styles.header", "custom_styles.main_menu", "custom_styles.normal"],
    "titleI18n": "custom_styles.text_transform",
    "type": "button",
    "editor": "toggleIcon",
    "states": {
      "on": "uppercase",
      "off": "none"
    },
    "icon": "uppercase",
    "scope": "global",
    "boundVariables": [
      "--menu-main-hover-text-transform",
      "--menu-main-active-text-transform"
    ]
  */
  --menu-main-text-transform: none;
  /* VoogStyle
    "pathI18n": ["custom_styles.header", "custom_styles.main_menu", "custom_styles.hover"],
    "titleI18n": "custom_styles.text_transform",
    "type": "button",
    "editor": "toggleIcon",
    "states": {
      "on": "uppercase",
      "off": "none"
    },
    "icon": "uppercase",
    "scope": "global",
    "boundVariables": [
      "--menu-main-active-text-transform"
    ]
  */
  --menu-main-hover-text-transform: none;
  /* VoogStyle
    "pathI18n": ["custom_styles.header", "custom_styles.main_menu", "custom_styles.active"],
    "titleI18n": "custom_styles.text_transform",
    "type": "button",
    "editor": "toggleIcon",
    "states": {
      "on": "uppercase",
      "off": "none"
    },
    "icon": "uppercase",
    "scope": "global"
  */
  --menu-main-active-text-transform: none;
}
