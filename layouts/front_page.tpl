<!DOCTYPE html>
<html class="{% if editmode %}editmode{% else %}public{% endif %}" lang="{{ page.language_code }}">
<head prefix="og: http://ogp.me/ns#">
  {% assign front_page = true %}
  {% include "edicy-tools-variables" %}
  {% include "html-head" %}
  {% include "edicy-tools-styles" %}
  {% if editmode %}<link rel="stylesheet" href="{{ site.static_asset_host }}/libs/edicy-tools/latest/edicy-tools.css">{% endif %}
</head>

<body class="front-page">

  <div class="container">
    {% include "header" %}

    <main class="content" role="main">
      <div class="main-feature js-bg-picker-area" data-section-name="main_feature" data-bg-global="main_bg" data-bg-global-master="true">
        <div class="background-image js-background-image"></div>
        <div class="background-color js-background-color"></div>
        {% if editmode %}
          <button class="voog-bg-picker-btn js-background-settings" data-bg-key="main_bg" data-bg-picture-boolean="true" data-target-width="600" data-bg-image="{{ main_bg_image }}" data-bg-image-sizes="{{ main_bg_image_sizes_str | escape }}" data-bg-color="{{ main_bg_color }}" data-bg-color-data="{{ main_bg_color_data_str | escape }}"></button>
        {% endif %}

        <div class="content-inner js-background-type {{ main_bg_type }}">
          <section class="content-body content-formatted">{% content %}</section>
        </div>
      </div>
    </main>

    <footer class="sections">
      <div class="feature-section {{ content_bg_transparent }} {{ feature_1_wide }} js-bg-picker-area feature-1" data-section-name="feature_1" data-bg-global="main_bg" data-bg-global-boolean="{{ content_1_global_bg_boolean }}">
        <div class="background-image js-background-image"></div>
        <div class="background-color js-background-color"></div>
        {% if editmode %}
          <button class="voog-bg-picker-btn js-background-settings" data-bg-key="content_bg_1" data-bg-picture-boolean="false" data-target-width="600" data-bg-image="{{ content_bg_1_image }}" data-bg-image-sizes="{{ content_bg_1_image_sizes_str | escape }}" data-bg-color="{{ content_bg_1_color }}" data-bg-color-data="{{ content_bg_1_color_data_str | escape }}"></button>
          <button class="voog-padding-switcher" type="button" name="button">
            <svg xmlns="http://www.w3.org/2000/svg" width="45" height="45" viewBox="0 0 512 512"><path d="M256 10.24C120.27 10.24 10.24 120.27 10.24 256S120.27 501.76 256 501.76 501.76 391.73 501.76 256 391.73 10.24 256 10.24zm-6.95 263.518h-58.158v25.5l-57.765-45.56 57.763-40.96.002 24.243 58.16.42v36.358zm72.08 25.502v-24.246l-57.75-.832V238.23h56.94v-.414h.81l.418-25.078 57.325 45.567-57.742 40.955z"/></svg>
          </button>
        {% endif %}

        <div class="wrap js-background-type {{ content_bg_1_type }}">
          <section class="feature-content content-formatted">{% unless editmode %}<a class="header-link" href="{{ site.root_item.url }}">{% endunless %}{% editable site.header %}{% unless editmode %}</a>{% endunless %}</section>
        </div>
      </div>

      <div class="feature-section {{ content_bg_transparent }} {{ feature_2_wide }} js-bg-picker-area feature-2" data-section-name="feature_2" data-bg-global="main_bg" data-bg-global-boolean="{{ content_2_global_bg_boolean }}">
        <div class="background-image js-background-image"></div>
        <div class="background-color js-background-color"></div>
        {% if editmode %}
          <button class="voog-bg-picker-btn js-background-settings" data-bg-key="content_bg_2" data-bg-picture-boolean="false" data-target-width="600" data-bg-image="{{ content_bg_2_image }}" data-bg-image-sizes="{{ content_bg_2_image_sizes_str | escape }}" data-bg-color="{{ content_bg_2_color }}" data-bg-color-data="{{ content_bg_2_color_data_str | escape }}"></button>
          <button class="voog-padding-switcher" type="button" name="button">
            <svg xmlns="http://www.w3.org/2000/svg" width="45" height="45" viewBox="0 0 512 512"><path d="M256 10.24C120.27 10.24 10.24 120.27 10.24 256S120.27 501.76 256 501.76 501.76 391.73 501.76 256 391.73 10.24 256 10.24zm-6.95 263.518h-58.158v25.5l-57.765-45.56 57.763-40.96.002 24.243 58.16.42v36.358zm72.08 25.502v-24.246l-57.75-.832V238.23h56.94v-.414h.81l.418-25.078 57.325 45.567-57.742 40.955z"/></svg>
          </button>
        {% endif %}

        <div class="wrap js-background-type {{ content_bg_2_type }}">
          <section class="feature-content content-formatted" data-search-indexing-allowed="true">{% content name="feature_2" %}</section>
        </div>
      </div>

      <div class="feature-section {{ content_bg_transparent }} {{ feature_3_wide }} js-bg-picker-area feature-3" data-section-name="feature_3" data-bg-global="main_bg"  data-bg-global-boolean="{{ content_3_global_bg_boolean }}">
        <div class="background-image js-background-image"></div>
        <div class="background-color js-background-color"></div>
        {% if editmode %}
          <button class="voog-bg-picker-btn js-background-settings" data-bg-key="content_bg_3" data-bg-picture-boolean="false" data-target-width="600" data-bg-image="{{ content_bg_3_image }}" data-bg-image-sizes="{{ content_bg_3_image_sizes_str | escape }}" data-bg-color="{{ content_bg_3_color }}" data-bg-color-data="{{ content_bg_3_color_data_str | escape }}"></button>
          <button class="voog-padding-switcher" type="button" name="button">
            <svg xmlns="http://www.w3.org/2000/svg" width="45" height="45" viewBox="0 0 512 512"><path d="M256 10.24C120.27 10.24 10.24 120.27 10.24 256S120.27 501.76 256 501.76 501.76 391.73 501.76 256 391.73 10.24 256 10.24zm-6.95 263.518h-58.158v25.5l-57.765-45.56 57.763-40.96.002 24.243 58.16.42v36.358zm72.08 25.502v-24.246l-57.75-.832V238.23h56.94v-.414h.81l.418-25.078 57.325 45.567-57.742 40.955z"/></svg>
          </button>
        {% endif %}

        <div class="wrap js-background-type {{ content_bg_3_type }}">
          <section class="feature-content content-formatted" data-search-indexing-allowed="true">{% content name="feature_3" %}</section>
        </div>
      </div>

      <div class="feature-section {% if site.branding.enabled %}voog-reference-enabled{% endif %} {{ feature_4_empty }} {{ content_bg_transparent }} {{ feature_4_wide }} js-bg-picker-area feature-4" data-section-name="feature_4" data-bg-global="main_bg"  data-bg-global-boolean="{{ content_4_global_bg_boolean }}">
        <div class="background-image js-background-image"></div>
        <div class="background-color js-background-color"></div>
        {% if editmode %}
          <button class="voog-bg-picker-btn js-background-settings" data-bg-key="content_bg_4" data-bg-picture-boolean="false" data-target-width="600" data-bg-image="{{ content_bg_4_image }}" data-bg-image-sizes="{{ content_bg_4_image_sizes_str | escape }}" data-bg-color="{{ content_bg_4_color }}" data-bg-color-data="{{ content_bg_4_color_data_str | escape }}"></button>
          <button class="voog-padding-switcher" type="button" name="button">
            <svg xmlns="http://www.w3.org/2000/svg" width="45" height="45" viewBox="0 0 512 512"><path d="M256 10.24C120.27 10.24 10.24 120.27 10.24 256S120.27 501.76 256 501.76 501.76 391.73 501.76 256 391.73 10.24 256 10.24zm-6.95 263.518h-58.158v25.5l-57.765-45.56 57.763-40.96.002 24.243 58.16.42v36.358zm72.08 25.502v-24.246l-57.75-.832V238.23h56.94v-.414h.81l.418-25.078 57.325 45.567-57.742 40.955z"/></svg>
          </button>
        {% endif %}

        <div class="js-background-type {{ content_bg_4_type }}" style="width: 100%">
          <div class="wrap">
            <section class="feature-content content-formatted" data-search-indexing-allowed="true">{% content name="feature_4" %}</section>
          </div>
          {% if site.branding.enabled %}
            <div class="voog-reference">
              {% loginblock %}
                <span>{{ "footer_login_link" | lc | replace_first: "Voog. ", "" | replace: ".", "" }}</span>
                <svg xmlns="http://www.w3.org/2000/svg" width="35px" height="8px" viewbox="0 0 35 8" class="ico-voog">
                  <path d="M34.5,4 C34.5,4 34.5,4 34.5,4 C34.5,4 34.5,4.1 34.5,4.1 C34.5,4.4 34.5,4.6 34.4,4.8 C34.4,4.8 34.4,4.8 34.4,4.8 C34,6.6 32.3,8 30.3,8 C29.2,8 28.2,7.6 27.4,6.8 C27.4,6.8 27.4,6.8 27.4,6.8 C27.4,6.8 27.4,6.8 27.4,6.8 C26.7,6.1 26.2,5.1 26.2,4 C26.2,1.8 28.1,0 30.4,0 C31.5,0 32.5,0.4 33.3,1.2 C33.3,1.2 32.6,1.9 32.6,1.9 C32,1.3 31.2,1 30.4,1 C28.6,1 27.3,2.3 27.3,4 C27.3,4.7 27.5,5.3 27.9,5.9 C28,5.9 28.1,6 28.2,6.1 C28.2,6.1 28.2,6.1 28.2,6.1 C28.7,6.7 29.5,7 30.3,7 C31.9,7 33.2,5.9 33.4,4.5 C33.4,4.5 30.3,4.5 30.3,4.5 C30.3,4.5 30.3,3.5 30.3,3.5 C30.3,3.5 33.4,3.5 33.4,3.5 C33.4,3.5 34.1,3.5 34.1,3.5 C34.1,3.5 34.5,3.5 34.5,3.5 C34.5,3.7 34.5,3.8 34.5,4 ZM12.7,0 C12.7,0 12.7,1 12.7,1 C14.5,1 15.8,2.3 15.8,4 C15.8,5.7 14.5,7 12.7,7 C11,7 9.6,5.7 9.6,4 C9.6,4 8.6,4 8.6,4 C8.6,6.2 10.4,8 12.7,8 C15,8 16.9,6.2 16.9,4 C16.9,1.8 15,0 12.7,0 ZM7.5,2.4 C7.5,2.4 5.5,6.4 5.5,6.4 C5.4,6.7 5.1,7 4.8,7 C4.8,7 4.8,7 4.8,7 C4.5,7 4.2,6.7 4.1,6.4 C4.1,6.4 1.1,0.3 1.1,0.3 C1.1,0.3 0,0.3 0,0.3 C0,0.3 3.1,6.8 3.1,6.8 C3.5,7.6 4.1,8 4.8,8 C4.8,8 4.8,8 4.8,8 C5.5,8 6.1,7.6 6.5,6.8 C6.5,6.8 8.4,2.8 8.4,2.8 C8.4,2.8 8.4,2.8 8.4,2.8 C8.9,1.7 10,1 11.3,1 C11.3,1 11.3,0 11.3,0 C9.6,0 8.2,1 7.5,2.4 ZM1.9,0.3 C1.9,0.3 2,0.3 2,0.3 C2,0.3 2,0.6 2,0.6 C2,0.6 2.1,0.6 2.1,0.6 C2.1,0.6 2.1,0.3 2.1,0.3 C2.1,0.3 2.2,0.3 2.2,0.3 C2.2,0.3 2.2,0.3 2.2,0.3 C2.2,0.3 1.9,0.3 1.9,0.3 C1.9,0.3 1.9,0.3 1.9,0.3 ZM2.2,0.6 C2.2,0.6 2.2,0.6 2.2,0.6 C2.2,0.6 2.2,0.3 2.2,0.3 C2.2,0.3 2.2,0.3 2.2,0.3 C2.2,0.3 2.3,0.6 2.3,0.6 C2.3,0.6 2.4,0.6 2.4,0.6 C2.4,0.6 2.4,0.3 2.4,0.3 C2.4,0.3 2.4,0.3 2.4,0.3 C2.4,0.3 2.4,0.6 2.4,0.6 C2.4,0.6 2.5,0.6 2.5,0.6 C2.5,0.6 2.5,0.3 2.5,0.3 C2.5,0.3 2.4,0.3 2.4,0.3 C2.4,0.3 2.3,0.5 2.3,0.5 C2.3,0.5 2.3,0.5 2.3,0.5 C2.3,0.5 2.3,0.3 2.3,0.3 C2.3,0.3 2.2,0.3 2.2,0.3 C2.2,0.3 2.2,0.6 2.2,0.6 ZM21.5,0 C19.2,0 17.4,1.8 17.4,4 C17.4,6.2 19.2,8 21.5,8 C23.8,8 25.7,6.2 25.7,4 C25.7,1.8 23.8,0 21.5,0 ZM21.5,7 C19.8,7 18.4,5.6 18.4,4 C18.4,2.4 19.8,1 21.5,1 C23.2,1 24.6,2.4 24.6,4 C24.6,5.6 23.2,7 21.5,7 Z"></path>
                </svg>
              {% endloginblock %}
            </div>
          {% endif %}
        </div>
      </div>
    </footer>

  </div>

  {% include "javascripts" %}
  {% include "edicy-tools" %}

</body>
</html>
