{% capture dont_render %}
  {% comment %}ASSIGN LANGUAGE MENU FLAGS STATE{% endcomment %}
  {% if site.data.flags_state == nil %}
    {% assign flags_state = true %}
  {% else %}
    {% assign flags_state = site.data.flags_state %}
  {% endif %}

  {% comment %}ASSIGN FEATURE 1 SECTION WIDTH{% endcomment %}
  {% assign feature_1 = page.data.feature_1 %}
  {% if feature_1 == false %}
    {% assign feature_1_wide = "" %}
  {% else %}
    {% assign feature_1_wide = "section-wide" %}
  {% endif %}

  {% comment %}ASSIGN FEATURE 2 SECTION WIDTH{% endcomment %}
  {% assign feature_2 = page.data.feature_2 %}
  {% if feature_2 == false %}
    {% assign feature_2_wide = "" %}
  {% else %}
    {% assign feature_2_wide = "section-wide" %}
  {% endif %}

  {% comment %}ASSIGN FEATURE 3 SECTION WIDTH{% endcomment %}
  {% assign feature_3 = page.data.feature_3 %}
  {% if feature_3 == false %}
    {% assign feature_3_wide = "" %}
  {% else %}
    {% assign feature_3_wide = "section-wide" %}
  {% endif %}

  {% comment %}ASSIGN FEATURE 4 SECTION WIDTH{% endcomment %}
  {% assign feature_4 = page.data.feature_4 %}
  {% if feature_4 == false %}
    {% assign feature_4_wide = "" %}
  {% else %}
    {% assign feature_4_wide = "section-wide" %}
  {% endif %}

  {% comment %}SITE MAIN SECTION RELATED VARIABLES.{% endcomment %}
  {% comment %}Assign variables based on page type.{% endcomment %}
  {% assign main_bg = page.data.main_bg %}
  {% assign main_bg_image = main_bg.image %}
  {% assign main_bg_image_sizes = main_bg.imageSizes %}
  {% assign main_bg_color = main_bg.color %}
  {% assign main_bg_color_data = main_bg.colorData %}
  {% assign main_bg_combined_lightness = main_bg.combinedLightness %}

  {% comment %}Sets the background type to choose active CMS color scheme.{% endcomment %}
  {% if main_bg %}
    {% if main_bg_combined_lightness %}
      {% if main_bg_combined_lightness > 0.5 %}
        {% assign main_bg_type = "light-background" %}
        {% assign content_bg_transparent = "transparent-light-background" %}
      {% else %}
        {% assign main_bg_type = "dark-background" %}
        {% assign content_bg_transparent = "transparent-dark-background" %}
      {% endif %}
    {% else %}
      {% if main_bg_color_data.a >= 0.5 %}
        {% if main_bg_color_data.lightness >= 0.5 %}
          {% assign main_bg_type = "light-background" %}
          {% assign content_bg_transparent = "transparent-light-background" %}
        {% else %}
          {% assign main_bg_type = "dark-background" %}
          {% assign content_bg_transparent = "transparent-dark-background" %}
        {% endif %}
      {% else %}
        {% assign main_bg_type = "light-background" %}
        {% assign content_bg_transparent = "transparent-light-background" %}
      {% endif %}
    {% endif %}
  {% else %}
    {% assign main_bg_type = "dark-background" %}
    {% assign content_bg_transparent = "transparent-dark-background" %}
  {% endif %}

  {% if main_bg_image == nil %}
    {% assign main_bg_image = images_path | append: "/front-page-bg_block.jpg" %}
  {% endif %}

  {% if main_bg_image_sizes == nil %}
    {% assign main_bg_image_sizes_str = '[{"url":"' | append: images_path | append: '/front-page-bg.jpg", "width":2800, "height":1866}, {"url":"' | append: images_path | append: '/front-page-bg_huge.jpg", "width":2048, "height":1365}, {"url":"' | append: images_path | append: '/front-page-bg_large.jpg", "width":1280, "height":853}]' %}
  {% else %}
    {% assign main_bg_image_sizes_str = main_bg_image_sizes | json %}
  {% endif %}

  {% if main_bg_color == nil %}
    {% assign main_bg_color = "rgba(0, 0, 0, 0.1)" %}
  {% endif %}

  {% if main_bg_color_data == nil %}
    {% assign main_bg_color_data_str = '{"r": 0, "g": 0, "b": 0, "a": 0.1, "lightness": 0}' %}
  {% else %}
    {% assign main_bg_color_data_str = main_bg_color_data | json %}
  {% endif %}

  {% comment %}FRONT PAGE CONTENT AREA 1 RELATED VARIABLES.{% endcomment %}
  {% comment %}Assign variables based on page type.{% endcomment %}
  {% assign content_bg_1 = page.data.content_bg_1 %}
  {% assign content_bg_1_color = content_bg_1.color %}
  {% assign content_bg_1_color_data = content_bg_1.colorData %}
  {% assign content_bg_1_combined_lightness = content_bg_1.combinedLightness %}
  {% assign content_bg_1_alpha = content_bg_1.colorData.a %}

  {% comment %}Sets the background type to choose active CMS color scheme.{% endcomment %}
  {% if content_bg_1 %}
    {% if content_bg_1_combined_lightness %}
      {% if content_bg_1_combined_lightness > 0.5 %}
        {% assign content_bg_1_type = "light-background" %}
      {% else %}
        {% assign content_bg_1_type = "dark-background" %}
      {% endif %}
    {% else %}
      {% if content_bg_1_color_data.a >= 0.5 %}
        {% if content_bg_1_color_data.lightness >= 0.5 %}
          {% assign content_bg_1_type = "light-background" %}
        {% else %}
          {% assign content_bg_1_type = "dark-background" %}
        {% endif %}
      {% else %}
        {% assign content_bg_1_type = "light-background" %}
      {% endif %}
    {% endif %}
  {% else %}
    {% assign content_bg_1_type = "light-background" %}
  {% endif %}

  {% if content_bg_1_color == nil %}
    {% assign content_bg_1_color = "rgba(255, 255, 255, 1)" %}
  {% endif %}

  {% if content_bg_1_color_data == nil %}
    {% assign content_bg_1_color_data_str = "{"r": 255, "g": 255, "b": 255, "a": 1, "lightness": 1}" %}
  {% else %}
    {% assign content_bg_1_color_data_str = content_bg_1_color_data | json %}
  {% endif %}

  {% comment %}Allow global bg to apply lightness into individual content areas, when transparent{% endcomment %}
  {% if content_bg_1_color_data.a > 0 %}
    {% assign content_1_global_bg_boolean = "false" %}
  {% else %}
    {% assign content_1_global_bg_boolean = "true" %}
    {% assign content_bg_1_type = main_bg_type %}
  {% endif %}
  {% if content_bg_1_alpha == nil %}
    {% assign content_1_global_bg_boolean = "true" %}
  {% endif %}
  {% if content_bg_1 == nil %}
    {% assign content_1_global_bg_boolean = "false" %}
  {% endif %}

  {% comment %}FRONT PAGE CONTENT AREA 2 RELATED VARIABLES.{% endcomment %}
  {% comment %}Assign variables based on page type.{% endcomment %}
  {% assign content_bg_2 = page.data.content_bg_2 %}
  {% assign content_bg_2_color = content_bg_2.color %}
  {% assign content_bg_2_color_data = content_bg_2.colorData %}
  {% assign content_bg_2_combined_lightness = content_bg_2.combinedLightness %}
  {% assign content_bg_2_alpha = content_bg_2.colorData.a %}

  {% comment %}Sets the background type to choose active CMS color scheme.{% endcomment %}
  {% if content_bg_2 %}
    {% if content_bg_2_color_data.a >= 0.5 %}
      {% assign content_2_global_bg_boolean = "false" %}
    {% endif %}
    {% if content_bg_2_combined_lightness %}
      {% if content_bg_2_combined_lightness > 0.5 %}
        {% assign content_bg_2_type = "light-background" %}
      {% else %}
        {% assign content_bg_2_type = "dark-background" %}
      {% endif %}
    {% else %}
      {% if content_bg_2_color_data.a >= 0.5 %}
        {% if content_bg_2_color_data.lightness >= 0.5 %}
          {% assign content_bg_2_type = "light-background" %}
        {% else %}
          {% assign content_bg_2_type = "dark-background" %}
        {% endif %}
      {% else %}
        {% assign content_bg_2_type = "light-background" %}
      {% endif %}
    {% endif %}
  {% else %}
    {% assign content_bg_2_type = "light-background" %}
  {% endif %}

  {% if content_bg_2_color == nil %}
    {% assign content_bg_2_color = "rgba(233, 233, 233, 1)" %}
  {% endif %}

  {% if content_bg_2_color_data == nil %}
    {% assign content_bg_2_color_data_str = "{"r": 233, "g": 233, "b": 233, "a": 1, "lightness": 1}" %}
  {% else %}
    {% assign content_bg_2_color_data_str = content_bg_2_color_data | json %}
  {% endif %}

  {% comment %}Allow global bg to apply lightness into individual content areas, when transparent{% endcomment %}
  {% if content_bg_2_color_data.a > 0 %}
    {% assign content_2_global_bg_boolean = "false" %}
  {% else %}
    {% assign content_2_global_bg_boolean = "true" %}

    {% assign content_bg_2_type = main_bg_type %}
  {% endif %}
  {% if content_bg_2_alpha == nil %}
    {% assign content_2_global_bg_boolean = "true" %}
  {% endif %}
  {% if content_bg_2 == nil %}
    {% assign content_2_global_bg_boolean = "false" %}
  {% endif %}

  {% comment %}FRONT PAGE CONTENT AREA 3 RELATED VARIABLES.{% endcomment %}
  {% comment %}Assign variables based on page type.{% endcomment %}
  {% assign content_bg_3 = page.data.content_bg_3 %}
  {% assign content_bg_3_color = content_bg_3.color %}
  {% assign content_bg_3_color_data = content_bg_3.colorData %}
  {% assign content_bg_3_combined_lightness = content_bg_3.combinedLightness %}
  {% assign content_bg_3_alpha = content_bg_3.colorData.a %}

  {% comment %}Sets the background type to choose active CMS color scheme.{% endcomment %}
  {% if content_bg_3 %}
    {% if content_bg_3_color_data.a >= 0.5 %}
      {% assign content_3_global_bg_boolean = "false" %}
    {% endif %}
    {% if content_bg_3_combined_lightness %}
      {% if content_bg_3_combined_lightness > 0.5 %}
        {% assign content_bg_3_type = "light-background" %}
      {% else %}
        {% assign content_bg_3_type = "dark-background" %}
      {% endif %}
    {% else %}
      {% if content_bg_3_color_data.a >= 0.5 %}
        {% if content_bg_3_color_data.lightness >= 0.5 %}
          {% assign content_bg_3_type = "light-background" %}
        {% else %}
          {% assign content_bg_3_type = "dark-background" %}
        {% endif %}
      {% else %}
        {% assign content_bg_3_type = "light-background" %}
      {% endif %}
    {% endif %}
  {% else %}
    {% assign content_bg_3_type = "dark-background" %}
  {% endif %}

  {% if content_bg_3_color == nil %}
    {% assign content_bg_3_color = "rgba(21, 39, 51, 1)" %}
  {% endif %}

  {% if content_bg_3_color_data == nil %}
    {% assign content_bg_3_color_data_str = "{"r": 21, "g": 39, "b": 51, "a": 1, "lightness": 0}" %}
  {% else %}
    {% assign content_bg_3_color_data_str = content_bg_3_color_data | json %}
  {% endif %}

  {% comment %}Allow global bg to apply lightness into individual content areas, when transparent{% endcomment %}
  {% if content_bg_3_color_data.a > 0 %}
    {% assign content_3_global_bg_boolean = "false" %}
  {% else %}
    {% assign content_3_global_bg_boolean = "true" %}
    {% assign content_bg_3_type = main_bg_type %}
  {% endif %}
  {% if content_bg_3_alpha == nil %}
    {% assign content_3_global_bg_boolean = "true" %}
  {% endif %}
  {% if content_bg_3 == nil %}
    {% assign content_3_global_bg_boolean = "false" %}
  {% endif %}

  {% comment %}FRONT PAGE CONTENT AREA 4 RELATED VARIABLES.{% endcomment %}
  {% comment %}Assign variables based on page type.{% endcomment %}
  {% assign content_bg_4 = page.data.content_bg_4 %}
  {% assign content_bg_4_color = content_bg_4.color %}
  {% assign content_bg_4_color_data = content_bg_4.colorData %}
  {% assign content_bg_4_combined_lightness = content_bg_4.combinedLightness %}
  {% assign content_bg_4_alpha = content_bg_4.colorData.a %}

  {% comment %}Sets the background type to choose active CMS color scheme.{% endcomment %}
  {% if content_bg_4 %}
    {% if content_bg_4_combined_lightness %}
      {% if content_bg_4_combined_lightness > 0.5 %}
        {% assign content_bg_4_type = "light-background" %}
      {% else %}
        {% assign content_bg_4_type = "dark-background" %}
      {% endif %}
    {% else %}
      {% if content_bg_4_color_data.a >= 0.5 %}
        {% if content_bg_4_color_data.lightness >= 0.5 %}
          {% assign content_bg_4_type = "light-background" %}
        {% else %}
          {% assign content_bg_4_type = "dark-background" %}
        {% endif %}
      {% else %}
        {% assign content_bg_4_type = "light-background" %}
      {% endif %}
    {% endif %}
  {% else %}
    {% assign content_bg_4_type = "dark-background" %}
  {% endif %}

  {% if content_bg_4_color == nil %}
    {% assign content_bg_4_color = "rgba(0, 0, 0, 0)" %}
  {% endif %}

  {% if content_bg_4_color_data == nil %}
    {% assign content_bg_4_color_data_str = "{"r": 0, "g": 0, "b": 0, "a": 0, "lightness": 0}" %}
  {% else %}
    {% assign content_bg_4_color_data_str = content_bg_4_color_data | json %}
  {% endif %}

  {% comment %}Allow global bg to apply lightness into individual content areas, when transparent{% endcomment %}
  {% if content_bg_4_color_data.a > 0 %}
    {% assign content_4_global_bg_boolean = "false" %}
  {% else %}
    {% assign content_4_global_bg_boolean = "true" %}
    {% assign content_bg_4_type = main_bg_type %}
  {% endif %}
  {% if content_bg_4_alpha == nil %}
    {% assign content_4_global_bg_boolean = "true" %}
  {% endif %}
  {% if content_bg_4 == nil %}
    {% assign content_4_global_bg_boolean = "false" %}
  {% endif %}
{% endcapture %}
