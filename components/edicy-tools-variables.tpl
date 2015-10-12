{% capture dont_render %}
  {% comment %}ASSIGN LANGUAGE MENU FLAGS STATE{% endcomment %}
  {% if site.data.flags_state == nil %}
    {% assign flags_state = true %}
  {% else %}
    {% assign flags_state = site.data.flags_state %}
  {% endif %}

  {% assign feature_1 = site.data.feature_1 %}
  {% if feature_1 == true %}
    {% assign feature_1_wide = "section-wide" %}
  {% endif %}
  {% assign feature_2 = site.data.feature_2 %}
  {% if feature_2 == true %}
    {% assign feature_2_wide = "section-wide" %}
  {% endif %}
  {% assign feature_3 = site.data.feature_3 %}
  {% if feature_3 == true %}
    {% assign feature_3_wide = "section-wide" %}
  {% endif %}
  {% assign feature_4 = site.data.feature_4 %}
  {% if feature_4 == true %}
    {% assign feature_4_wide = "section-wide" %}
  {% endif %}

  {% comment %}SITE HEADER RELATED VARIABLES.{% endcomment %}
  {% comment %}Assign variables based on page type.{% endcomment %}
  {% assign header_bg = page.data.header_bg %}
  {% assign header_bg_image = header_bg.image %}
  {% assign header_bg_image_sizes = header_bg.imageSizes %}
  {% assign header_bg_color = header_bg.color %}
  {% assign header_bg_color_data = header_bg.colorData %}
  {% assign header_bg_combined_lightness = header_bg.combinedLightness %}

  {% comment %}Sets the background type to choose active CMS color scheme.{% endcomment %}
  {% if header_bg %}
    {% if header_bg_combined_lightness %}
      {% if header_bg_combined_lightness > 0.5 %}
        {% assign header_bg_type = "light-background" %}
      {% else %}
        {% assign header_bg_type = "dark-background" %}
      {% endif %}
    {% else %}
      {% if header_bg_color_data.a >= 0.5 %}
        {% if header_bg_color_data.lightness >= 0.5 %}
          {% assign header_bg_type = "light-background" %}
        {% else %}
          {% assign header_bg_type = "dark-background" %}
        {% endif %}
      {% else %}
        {% assign header_bg_type = "light-background" %}
      {% endif %}
    {% endif %}
  {% else %}
    {% assign header_bg_type = "dark-background" %}
  {% endif %}

  {% if header_bg_image == nil %}
    {% if front_page %}
      {% assign header_bg_image = images_path | append: "/front-page-bg_block.jpg" %}
    {% else %}
      {% assign header_bg_image = images_path | append: "/page-page-bg_block.jpg" %}
    {% endif %}
  {% endif %}

  {% if header_bg_image_sizes == nil %}
    {% if front_page %}
      {% assign header_bg_image_sizes_str = '[{"url":"' | append: images_path | append: '/front-page-bg.jpg", "width":2800, "height":1866}, {"url":"' | append: images_path | append: '/front-page-bg_huge.jpg", "width":2048, "height":1365}, {"url":"' | append: images_path | append: '/front-page-bg_large.jpg", "width":1280, "height":853}]' %}
    {% else %}
      {% assign header_bg_image_sizes_str = '[{"url":"' | append: images_path | append: '/page-page-bg.jpg", "width":2800, "height":1866}, {"url":"' | append: images_path | append: '/page-page-bg_huge.jpg", "width":2048, "height":1365}, {"url":"' | append: images_path | append: '/page-page-bg_large.jpg", "width":1280, "height":853}]' %}
    {% endif %}
  {% else %}
    {% assign header_bg_image_sizes_str = header_bg_image_sizes | json %}
  {% endif %}

  {% if header_bg_color == nil %}
    {% if front_page %}
      {% assign header_bg_color = "rgba(0, 0, 0, 0.1)" %}
    {% else %}
      {% assign header_bg_color = "rgba(0, 0, 0, 0.1)" %}
    {% endif %}
  {% endif %}

  {% if header_bg_color_data == nil %}
    {% if front_page %}
      {% assign header_bg_color_data_str = '{"r": 0, "g": 0, "b": 0, "a": 0.1, "lightness": 0}' %}
    {% else %}
      {% assign header_bg_color_data_str = '{"r": 0, "g": 0, "b": 0, "a": 0.1, "lightness": 0}' %}
    {% endif %}
  {% else %}
    {% assign header_bg_color_data_str = header_bg_color_data | json %}
  {% endif %}


  {% comment %}Boolean for article type.{% endcomment %}
  {% if blog_article_page and article.data.photo_article_state %}
    {% assign photo_article = true %}
  {% endif %}

  {% comment %}Assign variables for blog article.{% endcomment %}
  {% assign article_header_bg = article.data.header_bg %}
  {% assign article_header_bg_image = article_header_bg.image %}
  {% assign article_header_bg_image_sizes = article_header_bg.imageSizes %}
  {% assign article_header_bg_color = article_header_bg.color %}
  {% assign article_header_bg_color_data = article_header_bg.colorData %}
  {% assign article_header_bg_combined_lightness = article_header_bg.combinedLightness %}

  {% if blog_article_page %}
    {% comment %}Sets the background type to choose active CMS color scheme.{% endcomment %}
    {% if article_header_bg %}
      {% if article_header_bg_combined_lightness %}
        {% if article_header_bg_combined_lightness > 0.5 %}
          {% assign article_header_bg_type = "light-background" %}
        {% else %}
          {% assign article_header_bg_type = "dark-background" %}
        {% endif %}
      {% else %}
        {% if article_header_bg_color_data.a >= 0.5 %}
          {% if article_header_bg_color_data.lightness >= 0.5 %}
            {% assign article_header_bg_type = "light-background" %}
          {% else %}
            {% assign article_header_bg_type = "dark-background" %}
          {% endif %}
        {% else %}
          {% assign article_header_bg_type = "light-background" %}
        {% endif %}
      {% endif %}
    {% else %}
      {% assign article_header_bg_type = "dark-background" %}
    {% endif %}

    {% if article_header_bg_image == nil %}
      {% assign article_header_bg_image = images_path | append: "/article-header-bg_huge.jpg" %}
    {% endif %}

    {% if article_header_bg_image_sizes == nil %}
      {% assign article_header_bg_image_sizes_str = '[{"url":"' | append: images_path | append: '/article-header-bg.jpg", "width":2560, "height":1709}, {"url":"' | append: images_path | append: '/article-header-bg_huge.jpg", "width":2048, "height":1367}, {"url":"' | append: images_path | append: '/article-header-bg_large.jpg", "width":1280, "height":854}]' %}
    {% else %}
      {% assign article_header_bg_image_sizes_str = article_header_bg_image_sizes | json %}
    {% endif %}

    {% if article_header_bg_color == nil %}
      {% assign article_header_bg_color = "rgba(0, 0, 0, 0.4)" %}
    {% endif %}

    {% if article_header_bg_color_data == nil %}
      {% assign article_header_bg_color_data_str = '{"r": 0, "g": 0, "b": 0, "a": 0.4, "lightness": 0}' %}
    {% else %}
      {% assign article_header_bg_color_data_str = article_header_bg_color_data | json %}
    {% endif %}
  {% endif %}


  {% comment %}FRONT PAGE CONTENT AREA 1 RELATED VARIABLES.{% endcomment %}
  {% comment %}Assign variables based on page type.{% endcomment %}
  {% assign content_bg_1 = page.data.content_bg_1 %}

  {% assign content_bg_1_color = content_bg_1.color %}
  {% assign content_bg_1_color_data = content_bg_1.colorData %}
  {% assign content_bg_1_combined_lightness = content_bg_1.combinedLightness %}

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


  {% comment %}FRONT PAGE CONTENT AREA 2 RELATED VARIABLES.{% endcomment %}
  {% comment %}Assign variables based on page type.{% endcomment %}
  {% assign content_bg_2 = page.data.content_bg_2 %}

  {% assign content_bg_2_color = content_bg_2.color %}
  {% assign content_bg_2_color_data = content_bg_2.colorData %}
  {% assign content_bg_2_combined_lightness = content_bg_2.combinedLightness %}

  {% comment %}Sets the background type to choose active CMS color scheme.{% endcomment %}
  {% if content_bg_2 %}
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

  {% comment %}FRONT PAGE CONTENT AREA 3 RELATED VARIABLES.{% endcomment %}
  {% comment %}Assign variables based on page type.{% endcomment %}
  {% assign content_bg_3 = page.data.content_bg_3 %}

  {% assign content_bg_3_color = content_bg_3.color %}
  {% assign content_bg_3_color_data = content_bg_3.colorData %}
  {% assign content_bg_3_combined_lightness = content_bg_3.combinedLightness %}

  {% comment %}Sets the background type to choose active CMS color scheme.{% endcomment %}
  {% if content_bg_3 %}
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

  {% comment %}FRONT PAGE CONTENT AREA 4 RELATED VARIABLES.{% endcomment %}
  {% comment %}Assign variables based on page type.{% endcomment %}
  {% assign content_bg_4 = page.data.content_bg_4 %}

  {% assign content_bg_4_color = content_bg_4.color %}
  {% assign content_bg_4_color_data = content_bg_4.colorData %}
  {% assign content_bg_4_combined_lightness = content_bg_4.combinedLightness %}

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
    {% assign content_bg_4_type = "light-background" %}
  {% endif %}

  {% if content_bg_4_color == nil %}
    {% assign content_bg_4_color = "" %}
  {% endif %}

  {% if content_bg_4_color_data == nil %}
    {% assign content_bg_4_color_data_str = "" %}
  {% else %}
    {% assign content_bg_4_color_data_str = content_bg_4_color_data | json %}
  {% endif %}


  {% comment %}SITE MAIN CONTENT AREA RELATED VARIABLES.{% endcomment %}
  {% comment %}Assign variables based on page type.{% endcomment %}
  {% assign body_bg = site.data.body_bg %}

  {% assign body_bg_color = body_bg.color %}
  {% assign body_bg_color_data = body_bg.colorData %}
  {% assign body_bg_combined_lightness = body_bg.combinedLightness %}

  {% comment %}Sets the background type to choose active CMS color scheme.{% endcomment %}
  {% if body_bg %}
    {% if body_bg_combined_lightness %}
      {% if body_bg_combined_lightness > 0.5 %}
        {% assign body_bg_type = "light-background" %}
      {% else %}
        {% assign body_bg_type = "dark-background" %}
      {% endif %}
    {% else %}
      {% if body_bg_color_data.a >= 0.5 %}
        {% if body_bg_color_data.lightness >= 0.5 %}
          {% assign body_bg_type = "light-background" %}
        {% else %}
          {% assign body_bg_type = "dark-background" %}
        {% endif %}
      {% else %}
        {% assign body_bg_type = "light-background" %}
      {% endif %}
    {% endif %}
  {% else %}
    {% assign body_bg_type = "light-background" %}
  {% endif %}

  {% if body_bg_color == nil %}
    {% assign body_bg_color = "" %}
  {% endif %}

  {% if body_bg_color_data == nil %}
    {% assign body_bg_color_data_str = "" %}
  {% else %}
    {% assign body_bg_color_data_str = body_bg_color_data | json %}
  {% endif %}


  {% comment %}FRONT PAGE FOOTER RELATED VARIABLES.{% endcomment %}
  {% comment %}Assign variables based on page type.{% endcomment %}
  {% if front_page %}
    {% assign footer_bg = page.data.footer_bg %}
  {% else %}
    {% assign footer_bg = site.data.footer_bg %}
  {% endif %}

  {% assign footer_bg_color = footer_bg.color %}
  {% assign footer_bg_color_data = footer_bg.colorData %}
  {% assign footer_bg_combined_lightness = footer_bg.combinedLightness %}

  {% comment %}Sets the background type to choose active CMS color scheme.{% endcomment %}
  {% if footer_bg %}
    {% if footer_bg_combined_lightness %}
      {% if footer_bg_combined_lightness > 0.5 %}
        {% assign footer_bg_type = "light-background" %}
      {% else %}
        {% assign footer_bg_type = "dark-background" %}
      {% endif %}
    {% else %}
      {% if footer_bg_color_data.a >= 0.5 %}
        {% if footer_bg_color_data.lightness >= 0.5 %}
          {% assign footer_bg_type = "light-background" %}
        {% else %}
          {% assign footer_bg_type = "dark-background" %}
        {% endif %}
      {% else %}
        {% assign footer_bg_type = "light-background" %}
      {% endif %}
    {% endif %}
  {% else %}
    {% assign footer_bg_type = "light-background" %}
  {% endif %}

  {% if footer_bg_color == nil %}
    {% if front_page %}
      {% assign footer_bg_color = "" %}
    {% else %}
      {% assign footer_bg_color = "rgb(230,230,230)" %}
    {% endif %}
  {% endif %}

  {% if footer_bg_color_data == nil %}
    {% assign footer_bg_color_data_str = "" %}
  {% else %}
    {% assign footer_bg_color_data_str = footer_bg_color_data | json %}
  {% endif %}
{% endcapture %}
