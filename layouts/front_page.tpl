<!DOCTYPE html>
{%- include "template-settings" -%}
{%- assign front_page = true -%}
{%- include "edicy-tools-variables" -%}
<html class="{% if editmode %}editmode{% else %}public{% endif %} {{ language_flags_mode }} {{ language_names_mode }} {{ language_menu_mode }}" lang="{{ page.language_code }}">
<head prefix="og: http://ogp.me/ns#">
  {% include "html-head" front_page: true %}
  {% include "edicy-tools-styles" %}
</head>

<body class="front-page">

  <div class="container">
    {% include "header" %}

    <main class="content" role="main">
      <div class="main-feature js-bg-picker-area" data-section-name="main_feature" data-bg-global="main_bg" data-bg-global-master="true">
        <div class="background-image js-background-image"></div>
        <div class="background-color js-background-color"></div>
        {% if editmode %}
          <button class="voog-bg-picker-btn js-background-settings" data-bg-key="main_bg" data-bg-picture-boolean="true" data-bg-image-color-data="{{ main_bg_image_color_data }}" data-target-width="600" data-bg-image="{{ main_bg_image }}" data-bg-image-sizes="{{ main_bg_image_sizes_str | escape }}" data-bg-color="{{ main_bg_color }}" data-bg-color-data="{{ main_bg_color_data_str | escape }}"></button>
        {% endif %}

        <div class="content-inner js-background-type {{ main_bg_type }}">
          <section class="content-body content-formatted" data-search-indexing-allowed="true">
            {%- assign content_default_title = "content" | lce -%}
            {%- assign content_default_title_tooltip = "content_tooltip_specific_page" | lce -%}
            {% content title=content_default_title title_tooltip=content_default_title_tooltip %}
          </section>
        </div>
      </div>
    </main>

    <footer>
      {%- assign additional_content_title_tooltip = "content_tooltip_additional_information" | lce -%}
      <div class="sections {% if site.branding.enabled %}voog-reference-enabled{% endif %}">
        {% if feature_1_visible or editmode %}
          <div class="feature-section {{ content_bg_transparent }} {{ feature_1_empty }} {{ feature_1_section_width }} js-bg-picker-area feature-1" data-section-name="feature_1" data-bg-global="main_bg" data-bg-global-boolean="{{ content_1_global_bg_boolean }}">
            <div class="background-image js-background-image"></div>
            <div class="background-color js-background-color"></div>
            {% if editmode %}
              <button class="voog-bg-picker-btn js-background-settings" data-bg-key="content_bg_1" data-bg-picture-boolean="false" data-target-width="600" data-bg-image="{{ content_bg_1_image }}" data-bg-image-sizes="{{ content_bg_1_image_sizes_str | escape }}" data-bg-color="{{ content_bg_1_color }}" data-bg-color-data="{{ content_bg_1_color_data_str | escape }}"></button>
              <button class="voog-padding-switcher" type="button" name="button"></button>
            {% endif %}

            <div class="wrap js-background-type {{ content_bg_1_type }}">
              <section class="feature-content content-formatted" data-search-indexing-allowed="true">
                {% content name="feature_1" title_tooltip=additional_content_title_tooltip %}
              </section>
            </div>
          </div>
        {% else %}
          {% if feature_2_visible or feature_3_visible or feature_4_visible %}
            <div class="empty-section"></div>
          {% endif %}
        {% endif %}

        {% if feature_2_visible or editmode %}
          <div class="feature-section {{ content_bg_transparent }} {{ feature_2_empty }} {{ feature_2_section_width }} js-bg-picker-area feature-2" data-section-name="feature_2" data-bg-global="main_bg" data-bg-global-boolean="{{ content_2_global_bg_boolean }}">
            <div class="background-image js-background-image"></div>
            <div class="background-color js-background-color"></div>
            {% if editmode %}
              <button class="voog-bg-picker-btn js-background-settings" data-bg-key="content_bg_2" data-bg-picture-boolean="false" data-target-width="600" data-bg-image="{{ content_bg_2_image }}" data-bg-image-sizes="{{ content_bg_2_image_sizes_str | escape }}" data-bg-color="{{ content_bg_2_color }}" data-bg-color-data="{{ content_bg_2_color_data_str | escape }}"></button>
              <button class="voog-padding-switcher" type="button" name="button"></button>
            {% endif %}

            <div class="wrap js-background-type {{ content_bg_2_type }}">
              <section class="feature-content content-formatted" data-search-indexing-allowed="true">
                {% content name="feature_2" title_tooltip=additional_content_title_tooltip %}
              </section>
            </div>
          </div>
        {% else %}
          {% if feature_3_visible or feature_4_visible %}
            <div class="empty-section"></div>
          {% endif %}
        {% endif %}

        {% if feature_3_visible or editmode %}
          <div class="feature-section {{ content_bg_transparent }} {{ feature_3_empty }} {{ feature_3_section_width }} js-bg-picker-area feature-3" data-section-name="feature_3" data-bg-global="main_bg" data-bg-global-boolean="{{ content_3_global_bg_boolean }}">
            <div class="background-image js-background-image"></div>
            <div class="background-color js-background-color"></div>
            {% if editmode %}
              <button class="voog-bg-picker-btn js-background-settings" data-bg-key="content_bg_3" data-bg-picture-boolean="false" data-target-width="600" data-bg-image="{{ content_bg_3_image }}" data-bg-image-sizes="{{ content_bg_3_image_sizes_str | escape }}" data-bg-color="{{ content_bg_3_color }}" data-bg-color-data="{{ content_bg_3_color_data_str | escape }}"></button>
              <button class="voog-padding-switcher" type="button" name="button"></button>
            {% endif %}

            <div class="wrap js-background-type {{ content_bg_3_type }}">
              <section class="feature-content content-formatted" data-search-indexing-allowed="true">
                {% content name="feature_3" title_tooltip=additional_content_title_tooltip %}
              </section>
            </div>
          </div>
        {% else %}
          {% if feature_4_visible %}
            <div class="empty-section"></div>
          {% endif %}
        {% endif %}

        {% if feature_4_visible or editmode %}
          <div class="feature-section {{ content_bg_transparent }} {{ feature_4_empty }} {{ feature_4_section_width }} js-bg-picker-area feature-4" data-section-name="feature_4" data-bg-global="main_bg" data-bg-global-boolean="{{ content_4_global_bg_boolean }}">
            <div class="background-image js-background-image"></div>
            <div class="background-color js-background-color"></div>
            {% if editmode %}
              <button class="voog-bg-picker-btn js-background-settings" data-bg-key="content_bg_4" data-bg-picture-boolean="false" data-target-width="600" data-bg-image="{{ content_bg_4_image }}" data-bg-image-sizes="{{ content_bg_4_image_sizes_str | escape }}" data-bg-color="{{ content_bg_4_color }}" data-bg-color-data="{{ content_bg_4_color_data_str | escape }}"></button>
              <button class="voog-padding-switcher" type="button" name="button"></button>
            {% endif %}

            <div class="wrap js-background-type {{ content_bg_4_type }}">
              <section class="feature-content content-formatted" data-search-indexing-allowed="true">
                {% content name="feature_4" title_tooltip=additional_content_title_tooltip %}
              </section>
            </div>
          </div>
        {% endif %}
      </div>

      {% if site.branding.enabled and page.path == blank -%}
        <div class="voog-reference {{ voog_reference_bg_transparent }} {% unless feature_4_has_content %}empty-parent{% endunless %}" data-section-name="feature_4" data-bg-global="main_bg" data-bg-global-boolean="{{ content_4_global_bg_boolean }}">
          <div class="js-background-type {{ voog_reference_bg_type }}">
            {% loginblock %}
              <span>{{ "footer_login_link" | lc }}</span>
            {% endloginblock %}
          </div>
        </div>
      {% endif -%}
    </footer>

  </div>
  {% include "site-signout" %}
  {% include "javascripts" %}
  {% include "edicy-tools" %}

</body>
</html>
