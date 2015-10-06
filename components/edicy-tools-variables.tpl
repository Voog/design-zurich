{% comment %} TODO: Optimize the logic.{% endcomment %}
{% capture dont_render %}
  {% comment %}Assign language menu flags state{% endcomment %}
  {% if site.data.flags_state == nil %}
    {% assign flags_state = true %}
  {% else %}
    {% assign flags_state = site.data.flags_state %}
  {% endif %}

  {% comment %}Assign variables based on page type.{% endcomment %}
  {% assign fallback_cover_image = page.data.cover_image %}
  {% assign fallback_cover_color = page.data.cover_color %}
  {% assign fallback_cover_colorData = page.data.cover_colorData %}
  {% assign fallback_cover_lightness = page.data.cover_lightness %}

  {% assign front_page_content_cover = page.data.front_page_content_cover %}
  {% assign front_page_content_cover_image = front_page_content_cover.image %}
  {% assign front_page_content_cover_image_sizes = front_page_content_cover.imageSizes %}
  {% assign front_page_content_cover_color = front_page_content_cover.color %}
  {% assign front_page_content_cover_color_data = front_page_content_cover.colorData %}
  {% assign front_page_content_cover_combined_lightness = front_page_content_cover.combinedLightness %}

  {% comment %}Sets the body background type.{% endcomment %}
  {% if front_page_content_cover %}
    {% if front_page_content_cover_combined_lightness %}
      {% if front_page_content_cover_combined_lightness > 0.5 %}
        {% assign front_page_content_cover_type = 'light-background' %}
      {% else %}
        {% assign front_page_content_cover_type = 'dark-background' %}
      {% endif %}
    {% else %}
      {% if front_page_content_cover_color_data.a >= 0.5 %}
        {% if front_page_content_cover_color_data.lightness >= 0.5 %}
          {% assign front_page_content_cover_type = 'light-background' %}
        {% else %}
          {% assign front_page_content_cover_type = 'dark-background' %}
        {% endif %}
      {% else %}
        {% assign front_page_content_cover_type = 'light-background' %}
      {% endif %}
    {% endif %}
  {% else %}
    {% if fallback_cover_colorData != nil and front_page_content_cover_color_data == nil %}
      {% if fallback_cover_colorData.a >= 0.5 %}
        {% if fallback_cover_lightness >= 0.5 %}
          {% assign front_page_content_cover_type = 'light-background' %}
        {% else %}
          {% assign front_page_content_cover_type = 'dark-background' %}
        {% endif %}
      {% else %}
        {% assign front_page_content_cover_type = 'light-background' %}
      {% endif %}
    {% else %}
      {% assign front_page_content_cover_type = 'dark-background' %}
    {% endif %}
  {% endif %}

  {% if fallback_cover_image != nil and front_page_content_cover.image == nil %}
    {% assign front_page_content_cover_image = fallback_cover_image %}
  {% else %}
    {% if front_page_content_cover_image == nil %}
      {% assign front_page_content_cover_image = images_path | append: '/front-page-bg_block.jpg' %}
    {% endif %}
  {% endif %}

  {% if fallback_cover_image != nil and front_page_content_cover.image == nil %}
    {% assign front_page_content_cover_image_sizes_str = '[{"url": "' | append: fallback_cover_image | append: '", "width": 0, "height": 0}]' %}
  {% else %}
    {% if front_page_content_cover_image_sizes == nil %}
      {% assign front_page_content_cover_image_sizes_str = '[{"url":"' | append: images_path | append: '/front-page-bg.jpg", "width":1880, "height":1050}, {"url":"' | append: images_path | append: '/front-page-bg_large.jpg", "width":800, "height":447}]' %}
    {% else %}
      {% assign front_page_content_cover_image_sizes_str = front_page_content_cover_image_sizes | json %}
    {% endif %}
  {% endif %}

  {% if fallback_cover_color != nil and front_page_content_cover.color == nil %}
    {% assign front_page_content_cover_color = fallback_cover_color %}
  {% else %}
    {% if front_page_content_cover_color == nil %}
      {% assign front_page_content_cover_color = 'rgba(0,102,187,0.25)' %}
    {% endif %}
  {% endif %}

  {% if front_page_content_cover_color_data == nil %}
    {% assign front_page_content_cover_color_data_str = '{"r": 0, "g": 102, "b": 187, "a": 0.25, "lightness": 0.34}' %}
  {% else %}
    {% assign front_page_content_cover_color_data_str = front_page_content_cover_color_data | json %}
  {% endif %}
{% endcapture %}
