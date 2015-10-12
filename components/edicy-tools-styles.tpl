<style>
  {% comment %}/* SITE HEADER BACKGROUND */{% endcomment %}
  {% comment %}/* Site header background image styles. */{% endcomment %}
  {% if header_bg.imageSizes != nil %}
    {% if header_bg.imageSizes == "" %}
      .main-feature.background-image {
        background-image: none;
      }
    {% else %}
      {% for imageSize in header_bg.imageSizes %}
        {% if forloop.first %}
          .main-feature .background-image {
            background-image: url("{{ imageSize.url }}");
          }
        {% elsif imageSize.url contains "_block" %}
          {% break %}
        {% else %}
          @media screen and (max-width: {{ imageSize.width }}px) {
            .main-feature .background-image {
              background-image: url("{{ imageSize.url }}");
            }
          }
        {% endif %}
      {% endfor %}
    {% endif %}

  {% else %}

    {% if front_page %}
      {% assign bg_image_prefix = images_path | append: "/front-page-bg" %}
    {% else %}
      {% assign bg_image_prefix = images_path | append: "/page-header-bg" %}
    {% endif %}

    .main-feature .background-image {
      background-image: url("{{ bg_image_prefix }}.jpg");
    }

    @media screen and (max-width: 2048px) {
      .main-feature .background-image {
        background-image: url("{{ bg_image_prefix }}_huge.jpg");
      }
    }

    @media screen and (max-width: 1280px) {
      .main-feature .background-image {
        background-image: url("{{ bg_image_prefix }}_large.jpg");
      }
    }
  {% endif %}

  {% comment %}/* Site header background color style. */{% endcomment %}
  .main-feature .background-color {
    background-color: {{ header_bg_color }};
  }
  {% comment %}/* PHOTO ARTICLE BACKGROUND */{% endcomment %}
  {% comment %}/* Photo article background image styles. */{% endcomment %}
  {% if article_header_bg.imageSizes != nil %}
    {% if article_header_bg.imageSizes == "" %}
      .site-header.photo-article .background-image {
        background-image: none;
      }
    {% else %}
      {% for imageSize in article_header_bg.imageSizes %}
        {% if forloop.first %}
          .site-header.photo-article .background-image {
            background-image: url("{{ imageSize.url }}");
          }
        {% elsif imageSize.url contains "_block" %}
          {% break %}
        {% else %}
          @media screen and (max-width: {{ imageSize.width }}px) {
            .site-header.photo-article .background-image {
              background-image: url("{{ imageSize.url }}");
            }
          }
        {% endif %}
      {% endfor %}
    {% endif %}

  {% else %}
    {% assign bg_image_prefix = images_path | append: "/article-header-bg" %}

    .site-header.photo-article .background-image {
      background-image: url("{{ bg_image_prefix }}.jpg");
    }

    @media screen and (max-width: 2048px) {
      .site-header.photo-article .background-image {
        background-image: url("{{ bg_image_prefix }}_huge.jpg");
      }
    }

    @media screen and (max-width: 1280px) {
      .site-header.photo-article .background-image {
        background-image: url("{{ bg_image_prefix }}_large.jpg");
      }
    }
  {% endif %}

  {% comment %}/* Photo article background color style. */{% endcomment %}
  .site-header.photo-article .background-color {
    background-color: {{ article_header_bg_color }};
  }

  {% comment %}/* FRONT PAGE CONTENT AREA 1 BACKGROUND */{% endcomment %}
  {% comment %}/* Front page content area 1 background color style. */{% endcomment %}
  .feature-1 .background-color {
    background-color: {{ content_bg_1_color }};
  }

  {% comment %}/* FRONT PAGE CONTENT AREA 2 BACKGROUND */{% endcomment %}
  {% comment %}/* Front page content area 2 background color style. */{% endcomment %}
  .feature-2 .background-color {
    background-color: {{ content_bg_2_color }};
  }

  {% comment %}/* FRONT PAGE CONTENT AREA 3 BACKGROUND */{% endcomment %}
  {% comment %}/* Front page content area 3 background color style. */{% endcomment %}
  .feature-3 .background-color {
    background-color: {{ content_bg_3_color }};
  }

  {% comment %}/* FRONT PAGE CONTENT AREA 4 BACKGROUND */{% endcomment %}
  {% comment %}/* Front page content area 4 background color style. */{% endcomment %}
  .feature-4 .background-color {
    background-color: {{ content_bg_4_color }};
  }

  {% comment %}/* SITE MAIN CONTENT AREA BACKGROUND */{% endcomment %}
  {% comment %}/* Site main content area background color style. */{% endcomment %}
  .common-page .page-body .background-color {
    background-color: {{ body_bg_color }};
  }

  {% comment %}/* FOOTER BACKGROUND */{% endcomment %}
  {% comment %}/* Front page content area 1 background color style. */{% endcomment %}
  .site-footer .background-color {
    background-color: {{ footer_bg_color }};
  }
</style>
