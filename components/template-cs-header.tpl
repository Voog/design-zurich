:root {
  /* VoogStyle
    "pathI18n": ["custom_styles.header"],
    "titleI18n": "custom_styles.padding",
    "editor": "rangePicker",
    "min": 0,
    "max": 100,
    "step": 1,
    "unit": "px",
    "scope": "global"
  */
  --global-header-padding-tb: 23px;
  /* VoogStyle
    "pathI18n": ["custom_styles.header"],
    "titleI18n": "custom_styles.padding",
    "editor": "rangePicker",
    "min": 0,
    "max": 100,
    "step": 1,
    "unit": "px",
    "scope": "global"
  */
  --global-header-padding-lr: 0;
  /* VoogStyle
    "pathI18n": ["custom_styles.header", "custom_styles.main_menu", "custom_styles.normal"],
    "titleI18n": "custom_styles.border_color",
    "editor": "colorPicker",
    "scope": "global",
    "boundVariables": [
      "--global-menu-main-border-color-hover"
    ]
  */
  --global-menu-main-border-color: transparent;
  /* VoogStyle
    "pathI18n": ["custom_styles.header", "custom_styles.main_menu", "custom_styles.normal"],
    "titleI18n": "custom_styles.background_color",
    "editor": "colorPicker",
    "scope": "global",
    "boundVariables": [
      "--global-menu-main-background-color-active"
    ]
  */
  --global-menu-main-bg-color: transparent;
  /* VoogStyle
    "pathI18n": ["custom_styles.header", "custom_styles.main_menu", "custom_styles.active"],
    "titleI18n": "custom_styles.background_color",
    "editor": "colorPicker",
    "scope": "global"
  */
  --global-menu-main-bg-color-active: transparent;
  /* VoogStyle
    "pathI18n": ["custom_styles.header", "custom_styles.main_menu", "custom_styles.hover"],
    "titleI18n": "custom_styles.background_color",
    "editor": "colorPicker",
    "scope": "global"
  */
  --global-menu-main-bg-color-hover: #fff;
  /* VoogStyle
    "pathI18n": ["custom_styles.header", "custom_styles.main_menu", "custom_styles.normal"],
    "titleI18n": "custom_styles.border_thickness",
    "editor": "rangePicker",
    "min": 1,
    "max": 20,
    "step": 1,
    "unit": "px",
    "scope": "global",
    "boundVariables": [
      "--global-menu-main-border-width",
      "--global-menu-main-border-width-active",
      "--global-menu-main-border-width-hover"
    ]
  */
  --global-menu-main-border-width: 2px;
  /* VoogStyle
    "pathI18n": ["custom_styles.header", "custom_styles.main_menu", "custom_styles.normal"],
    "titleI18n": "custom_styles.border_style",
    "editor": "listPicker",
    "list": {{ base_border_style_set }},
    "scope": "global",
    "boundVariables": [
      "--global-menu-main-border-style",
      "--global-menu-main-border-style-active",
      "--global-menu-main-border-style-hover"
    ]
  */
  --global-menu-main-border-style: none;
  /* VoogStyle
    "pathI18n": ["custom_styles.header", "custom_styles.main_menu", "custom_styles.active"],
    "titleI18n": "custom_styles.border_style",
    "editor": "listPicker",
    "list": {{ base_border_style_set }},
    "scope": "global"
  */
  --global-menu-main-border-style-active: none;
  /* VoogStyle
    "pathI18n": ["custom_styles.header", "custom_styles.main_menu", "custom_styles.hover"],
    "titleI18n": "custom_styles.border_style",
    "editor": "listPicker",
    "list": {{ base_border_style_set }},
    "scope": "global"
  */
  --global-menu-main-border-style-hover: none;
  /* VoogStyle
    "pathI18n": ["custom_styles.header", "custom_styles.main_menu", "custom_styles.normal"],
    "titleI18n": "custom_styles.margin",
    "editor": "rangePicker",
    "min": 0,
    "max": 100,
    "step": 1,
    "unit": "px",
    "scope": "global"
  */
  --global-menu-main-margin: 9px;
  /* VoogStyle
    "pathI18n": ["custom_styles.header", "custom_styles.main_menu", "custom_styles.normal"],
    "titleI18n": "custom_styles.padding",
    "editor": "rangePicker",
    "min": 0,
    "max": 200,
    "step": 1,
    "unit": "px",
    "scope": "global"
  */
  --global-menu-main-padding-lr: 0;
  /* VoogStyle
    "pathI18n": ["custom_styles.header", "custom_styles.main_menu", "custom_styles.normal"],
    "titleI18n": "custom_styles.padding",
    "editor": "rangePicker",
    "min": 0,
    "max": 200,
    "step": 1,
    "unit": "px",
    "scope": "global"
  */
  --global-menu-main-padding-tb: 0;
  /* VoogStyle
    "pathI18n": ["custom_styles.header", "custom_styles.main_menu", "custom_styles.normal"],
    "titleI18n": "custom_styles.font",
    "editor": "listPicker",
    "list": {{ base_font_set }},
    "featured": true,
    "scope": "global"
  */
  --global-menu-main-font-family: "Avenir Next", Avenir, "Helvetica Neue", Helvetica, Arial, sans-serif;
  /* VoogStyle
    "pathI18n": ["custom_styles.header", "custom_styles.main_menu", "custom_styles.normal"],
    "titleI18n": "custom_styles.opacity",
    "editor": "rangePicker",
    "min": 0.1,
    "max": 1,
    "step": 0.1,
    "unit": "",
    "scope": "global",
    "boundVariables": [
      "--global-menu-main-opacity-active",
      "--global-menu-main-opacity-hover"
    ]
  */
  --global-menu-main-opacity: 1;
  /* VoogStyle
    "pathI18n": ["custom_styles.header", "custom_styles.main_menu", "custom_styles.active"],
    "titleI18n": "custom_styles.opacity",
    "editor": "rangePicker",
    "min": 0.1,
    "max": 1,
    "step": 0.1,
    "unit": "",
    "scope": "global"
  */
  --global-menu-main-opacity-active: 1;
  /* VoogStyle
    "pathI18n": ["custom_styles.header", "custom_styles.main_menu", "custom_styles.hover"],
    "titleI18n": "custom_styles.opacity",
    "editor": "rangePicker",
    "min": 0.1,
    "max": 1,
    "step": 0.1,
    "unit": "",
    "scope": "global"
  */
  --global-menu-main-opacity-hover: 1;
  /* VoogStyle
    "pathI18n": ["custom_styles.header", "custom_styles.main_menu", "custom_styles.normal"],
    "titleI18n": "custom_styles.size",
    "type": "button",
    "editor": "rangePicker",
    "min": 8,
    "max": 80,
    "unit": "px",
    "featured": true,
    "scope": "global",
    "boundVariables": [
      "--global-menu-main-font-size-active",
      "--global-menu-main-font-size-hover"
    ]
  */
  --global-menu-main-font-size: 12px;
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
      "--global-menu-main-font-weight-active",
      "--global-menu-main-font-weight-hover"
    ]
  */
  --global-menu-main-font-weight: 600;
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
  --global-menu-main-font-weight-active: 600;
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
    "scope": "global"
  */
  --global-menu-main-font-weight-hover: 600;
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
      "--global-menu-main-font-style-active",
      "--global-menu-main-font-style-hover"
    ]
  */
  --global-menu-main-font-style: normal;
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
  --global-menu-main-font-style-active: normal;
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
    "scope": "global"
  */
  --global-menu-main-font-style-hover: normal;
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
      "--global-menu-main-text-decoration-active",
      "--global-menu-main-text-decoration-hover"
    ]
  */
  --global-menu-main-text-decoration: none;
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
  --global-menu-main-text-decoration-active: none;
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
    "scope": "global"
  */
  --global-menu-main-text-decoration-hover: none;
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
      "--global-menu-main-text-transform-active",
      "--global-menu-main-text-transform-hover"
    ]
  */
  --global-menu-main-text-transform: none;
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
  --global-menu-main-text-transform-active: none;
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
    "scope": "global"
  */
  --global-menu-main-text-transform-hover: none;
  /* VoogStyle
    "pathI18n": ["custom_styles.header", "custom_styles.main_menu", "custom_styles.normal"],
    "titleI18n": "custom_styles.color",
    "type": "button",
    "editor": "colorPicker",
    "featured": true,
    "scope": "global",
    "boundVariables": [
      "--global-menu-main-color-active",
      "--global-menu-main-color-hover"
    ]
  */
  --global-menu-main-color: #838586;
  /* VoogStyle
    "pathI18n": ["custom_styles.header", "custom_styles.main_menu", "custom_styles.active"],
    "titleI18n": "custom_styles.color",
    "type": "button",
    "editor": "colorPicker",
    "scope": "global"
  */
  --global-menu-main-color-active: #ccc;
  /* VoogStyle
    "pathI18n": ["custom_styles.header", "custom_styles.main_menu", "custom_styles.hover"],
    "titleI18n": "custom_styles.color",
    "type": "button",
    "editor": "colorPicker",
    "scope": "global"
  */
  --global-menu-main-color-hover: #838586;
}