:root {
  /* VoogStyle
    "pathI18n": ["custom_styles.header", "custom_styles.main_menu", "custom_styles.normal"],
    "titleI18n": "custom_styles.border_color",
    "editor": "colorPicker",
    "scope": "global",
    "boundVariables": [
      "--menu-main-border-color-hover"
    ]
  */
  --menu-main-border-color: transparent;
  /* VoogStyle
    "pathI18n": ["custom_styles.header", "custom_styles.main_menu", "custom_styles.active"],
    "titleI18n": "custom_styles.border_color",
    "editor": "colorPicker",
    "scope": "global"
  */
  --menu-main-border-color-active: #fff;
  /* VoogStyle
    "pathI18n": ["custom_styles.header", "custom_styles.main_menu", "custom_styles.hover"],
    "titleI18n": "custom_styles.border_color",
    "editor": "colorPicker",
    "scope": "global"
  */
  --menu-main-border-color-hover: #fff;
  /* VoogStyle
    "pathI18n": ["custom_styles.header", "custom_styles.main_menu", "custom_styles.normal"],
    "titleI18n": "custom_styles.background_color",
    "editor": "colorPicker",
    "scope": "global",
    "boundVariables": [
      "--menu-main-background-color-active"
    ]
  */
  --menu-main-bg-color: transparent;
  /* VoogStyle
    "pathI18n": ["custom_styles.header", "custom_styles.main_menu", "custom_styles.active"],
    "titleI18n": "custom_styles.background_color",
    "editor": "colorPicker",
    "scope": "global"
  */
  --menu-main-bg-color-active: transparent;
  /* VoogStyle
    "pathI18n": ["custom_styles.header", "custom_styles.main_menu", "custom_styles.hover"],
    "titleI18n": "custom_styles.background_color",
    "editor": "colorPicker",
    "scope": "global"
  */
  --menu-main-bg-color-hover: #fff;
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
      "--menu-main-border-width",
      "--menu-main-border-width-active",
      "--menu-main-border-width-hover"
    ]
  */
  --menu-main-border-width: 2px;
  /* VoogStyle
    "pathI18n": ["custom_styles.header", "custom_styles.main_menu", "custom_styles.active"],
    "titleI18n": "custom_styles.border_thickness",
    "editor": "rangePicker",
    "min": 1,
    "max": 20,
    "step": 1,
    "unit": "px",
    "scope": "global"
  */
  --menu-main-border-width-active: 2px;
  /* VoogStyle
    "pathI18n": ["custom_styles.header", "custom_styles.main_menu", "custom_styles.hover"],
    "titleI18n": "custom_styles.border_thickness",
    "editor": "rangePicker",
    "min": 1,
    "max": 20,
    "step": 1,
    "unit": "px",
    "scope": "global"
  */
  --menu-main-border-width-hover: 2px;
  /* VoogStyle
    "pathI18n": ["custom_styles.header", "custom_styles.main_menu", "custom_styles.normal"],
    "titleI18n": "custom_styles.border_style",
    "editor": "listPicker",
    "list": {{ base_border_style_set }},
    "scope": "global",
    "boundVariables": [
      "--menu-main-border-style",
      "--menu-main-border-style-active",
      "--menu-main-border-style-hover"
    ]
  */
  --menu-main-border-style: solid;
  /* VoogStyle
    "pathI18n": ["custom_styles.header", "custom_styles.main_menu", "custom_styles.active"],
    "titleI18n": "custom_styles.border_style",
    "editor": "listPicker",
    "list": {{ base_border_style_set }},
    "scope": "global"
  */
  --menu-main-border-style-active: solid;
  /* VoogStyle
    "pathI18n": ["custom_styles.header", "custom_styles.main_menu", "custom_styles.hover"],
    "titleI18n": "custom_styles.border_style",
    "editor": "listPicker",
    "list": {{ base_border_style_set }},
    "scope": "global"
  */
  --menu-main-border-style-hover: solid;
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
  --menu-main-margin: 9px;
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
  --menu-main-padding-lr: 12px;
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
  --menu-main-padding-tb: 8px;
  /* VoogStyle
    "pathI18n": ["custom_styles.header", "custom_styles.main_menu", "custom_styles.normal"],
    "titleI18n": "custom_styles.font",
    "editor": "listPicker",
    "list": {{ base_font_set }},
    "featured": true,
    "scope": "global"
  */
  --menu-main-font-family: "Avenir Next", "Avenir", "Helvetica Neue", "Helvetica", "Segoe UI", sans-serif;
  /* VoogStyle
    "pathI18n": ["custom_styles.header", "custom_styles.main_menu", "custom_styles.normal"],
    "titleI18n": "custom_styles.letter_spacing",
    "editor": "rangePicker",
    "min": 0,
    "max": 5,
    "step": 0.1,
    "unit": "em",
    "scope": "global",
    "boundVariables": [
      "--menu-main-letter-spacing-active",
      "--menu-main-letter-spacing-hover"
    ]
  */
  --menu-main-letter-spacing: 0em;
  /* VoogStyle
    "pathI18n": ["custom_styles.header", "custom_styles.main_menu", "custom_styles.active"],
    "titleI18n": "custom_styles.letter_spacing",
    "editor": "rangePicker",
    "min": 0,
    "max": 5,
    "step": 0.1,
    "unit": "em",
    "scope": "global"
  */
  --menu-main-letter-spacing-active: 0em;
  /* VoogStyle
    "pathI18n": ["custom_styles.header", "custom_styles.main_menu", "custom_styles.hover"],
    "titleI18n": "custom_styles.letter_spacing",
    "editor": "rangePicker",
    "min": 0,
    "max": 5,
    "step": 0.1,
    "unit": "em",
    "scope": "global"
  */
  --menu-main-letter-spacing-hover: 0em;
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
      "--menu-main-opacity-active",
      "--menu-main-opacity-hover"
    ]
  */
  --menu-main-opacity: 1;
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
  --menu-main-opacity-active: 1;
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
  --menu-main-opacity-hover: 1;
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
      "--menu-main-font-size-active",
      "--menu-main-font-size-hover"
    ]
  */
  --menu-main-font-size: 12px;
  /* VoogStyle
    "pathI18n": ["custom_styles.header", "custom_styles.main_menu", "custom_styles.active"],
    "titleI18n": "custom_styles.size",
    "type": "button",
    "editor": "rangePicker",
    "min": 8,
    "max": 80,
    "unit": "px",
    "scope": "global"
  */
  --menu-main-font-size-active: 12px;
  /* VoogStyle
    "pathI18n": ["custom_styles.header", "custom_styles.main_menu", "custom_styles.hover"],
    "titleI18n": "custom_styles.size",
    "type": "button",
    "editor": "rangePicker",
    "min": 8,
    "max": 80,
    "unit": "px",
    "scope": "global"
  */
  --menu-main-font-size-hover: 12px;
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
      "--menu-main-font-weight-active",
      "--menu-main-font-weight-hover"
    ]
  */
  --menu-main-font-weight: 400;
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
  --menu-main-font-weight-active: 400;
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
  --menu-main-font-weight-hover: 400;
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
      "--menu-main-font-style-active",
      "--menu-main-font-style-hover"
    ]
  */
  --menu-main-font-style: normal;
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
  --menu-main-font-style-active: normal;
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
  --menu-main-font-style-hover: normal;
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
      "--menu-main-text-decoration-active",
      "--menu-main-text-decoration-hover"
    ]
  */
  --menu-main-text-decoration: none;
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
  --menu-main-text-decoration-active: none;
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
  --menu-main-text-decoration-hover: none;
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
      "--menu-main-text-transform-active",
      "--menu-main-text-transform-hover"
    ]
  */
  --menu-main-text-transform: uppercase;
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
  --menu-main-text-transform-active: uppercase;
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
  --menu-main-text-transform-hover: uppercase;
  /* VoogStyle
    "pathI18n": ["custom_styles.header", "custom_styles.main_menu", "custom_styles.normal"],
    "titleI18n": "custom_styles.color",
    "type": "button",
    "editor": "colorPicker",
    "featured": true,
    "scope": "global",
    "boundVariables": [
      "--menu-main-color-active",
      "--menu-main-color-hover"
    ]
  */
  --menu-main-color: #fff;
  /* VoogStyle
    "pathI18n": ["custom_styles.header", "custom_styles.main_menu", "custom_styles.active"],
    "titleI18n": "custom_styles.color",
    "type": "button",
    "editor": "colorPicker",
    "scope": "global"
  */
  --menu-main-color-active: #fff;
  /* VoogStyle
    "pathI18n": ["custom_styles.header", "custom_styles.main_menu", "custom_styles.hover"],
    "titleI18n": "custom_styles.color",
    "type": "button",
    "editor": "colorPicker",
    "scope": "global"
  */
  --menu-main-color-hover: #000;
  /* VoogStyle
    "pathI18n": ["custom_styles.header", "custom_styles.main_menu", "custom_styles.normal"],
    "titleI18n": "custom_styles.border_color",
    "editor": "colorPicker",
    "scope": "global",
    "boundVariables": [
      "--menu-main-border-color-hover"
    ]
  */
  --menu-main-border-color: transparent;
  /* VoogStyle
    "pathI18n": ["custom_styles.header", "custom_styles.main_menu", "custom_styles.normal"],
    "titleI18n": "custom_styles.background_color",
    "editor": "colorPicker",
    "scope": "global",
    "boundVariables": [
      "--menu-main-background-color-active"
    ]
  */
  --menu-main-bg-color: transparent;
  /* VoogStyle
    "pathI18n": ["custom_styles.header", "custom_styles.main_menu", "custom_styles.active"],
    "titleI18n": "custom_styles.background_color",
    "editor": "colorPicker",
    "scope": "global"
  */
  --menu-main-bg-color-active: transparent;
  /* VoogStyle
    "pathI18n": ["custom_styles.header", "custom_styles.main_menu", "custom_styles.hover"],
    "titleI18n": "custom_styles.background_color",
    "editor": "colorPicker",
    "scope": "global"
  */
  --menu-main-bg-color-hover: #fff;
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
      "--menu-main-border-width",
      "--menu-main-border-width-active",
      "--menu-main-border-width-hover"
    ]
  */
  --menu-main-border-width: 2px;
  /* VoogStyle
    "pathI18n": ["custom_styles.header", "custom_styles.main_menu", "custom_styles.normal"],
    "titleI18n": "custom_styles.border_style",
    "editor": "listPicker",
    "list": {{ base_border_style_set }},
    "scope": "global",
    "boundVariables": [
      "--menu-main-border-style",
      "--menu-main-border-style-active",
      "--menu-main-border-style-hover"
    ]
  */
  --menu-main-border-style: none;
  /* VoogStyle
    "pathI18n": ["custom_styles.header", "custom_styles.main_menu", "custom_styles.active"],
    "titleI18n": "custom_styles.border_style",
    "editor": "listPicker",
    "list": {{ base_border_style_set }},
    "scope": "global"
  */
  --menu-main-border-style-active: none;
  /* VoogStyle
    "pathI18n": ["custom_styles.header", "custom_styles.main_menu", "custom_styles.hover"],
    "titleI18n": "custom_styles.border_style",
    "editor": "listPicker",
    "list": {{ base_border_style_set }},
    "scope": "global"
  */
  --menu-main-border-style-hover: none;
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
  --menu-main-margin: 9px;
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
  --menu-main-padding-lr: 0;
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
  --menu-main-padding-tb: 0;
  /* VoogStyle
    "pathI18n": ["custom_styles.header", "custom_styles.main_menu", "custom_styles.normal"],
    "titleI18n": "custom_styles.font",
    "editor": "listPicker",
    "list": {{ base_font_set }},
    "featured": true,
    "scope": "global"
  */
  --menu-main-font-family: "Avenir Next", "Avenir", "Helvetica Neue", "Helvetica", "Segoe UI", sans-serif;
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
      "--menu-main-opacity-active",
      "--menu-main-opacity-hover"
    ]
  */
  --menu-main-opacity: 1;
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
  --menu-main-opacity-active: 1;
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
  --menu-main-opacity-hover: 1;
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
      "--menu-main-font-size-active",
      "--menu-main-font-size-hover"
    ]
  */
  --menu-main-font-size: 12px;
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
      "--menu-main-font-weight-active",
      "--menu-main-font-weight-hover"
    ]
  */
  --menu-main-font-weight: 600;
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
  --menu-main-font-weight-active: 600;
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
  --menu-main-font-weight-hover: 600;
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
      "--menu-main-font-style-active",
      "--menu-main-font-style-hover"
    ]
  */
  --menu-main-font-style: normal;
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
  --menu-main-font-style-active: normal;
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
  --menu-main-font-style-hover: normal;
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
      "--menu-main-text-decoration-active",
      "--menu-main-text-decoration-hover"
    ]
  */
  --menu-main-text-decoration: none;
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
  --menu-main-text-decoration-active: none;
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
  --menu-main-text-decoration-hover: none;
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
      "--menu-main-text-transform-active",
      "--menu-main-text-transform-hover"
    ]
  */
  --menu-main-text-transform: none;
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
  --menu-main-text-transform-active: none;
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
  --menu-main-text-transform-hover: none;
  /* VoogStyle
    "pathI18n": ["custom_styles.header", "custom_styles.main_menu", "custom_styles.normal"],
    "titleI18n": "custom_styles.color",
    "type": "button",
    "editor": "colorPicker",
    "featured": true,
    "scope": "global",
    "boundVariables": [
      "--menu-main-color-active",
      "--menu-main-color-hover"
    ]
  */
  --menu-main-color: #838586;
  /* VoogStyle
    "pathI18n": ["custom_styles.header", "custom_styles.main_menu", "custom_styles.active"],
    "titleI18n": "custom_styles.color",
    "type": "button",
    "editor": "colorPicker",
    "scope": "global"
  */
  --menu-main-color-active: #ccc;
  /* VoogStyle
    "pathI18n": ["custom_styles.header", "custom_styles.main_menu", "custom_styles.hover"],
    "titleI18n": "custom_styles.color",
    "type": "button",
    "editor": "colorPicker",
    "scope": "global"
  */
  --menu-main-color-hover: #838586;
}
