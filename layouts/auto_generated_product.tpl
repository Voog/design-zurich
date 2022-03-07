<!DOCTYPE html>
{% include "template-variables" %}
{% include "edicy-tools-variables" %}

{%- if product.image == blank -%}
  {%- assign product_image_state = "without-image" -%}
{%- else -%}
  {%- assign product_image_state = "with-image" -%}
{%- endif -%}

<html class="{% if editmode %}editmode{% else %}public{% endif %} {{ language_flags_mode }} {{ language_names_mode }} {{ language_menu_mode }}" lang="{{ page.language_code }}">
<head prefix="og: http://ogp.me/ns#">
  {% include "html-head" content_page: true %}
</head>

<body class="common-page item-page product-page js-bgpicker-body-image">
  {%- capture bottom_content_html -%}
    {%- unless editmode -%}
      {%- content bind=product name="content" -%}
    {%- endunless -%}
  {%- endcapture -%}

  {%- assign bottom_content_size = bottom_content_html | strip | size -%}

  {%- capture gallery_content_html -%}
    {%- unless editmode -%}
      {%- content bind=product name="gallery" -%}
    {%- endunless -%}
  {%- endcapture -%}

  {%- assign gallery_content_size = gallery_content_html | strip | size -%}

  <div class="container js-container">
    {% include "header" %}
    {% include "template-svg-spritesheet" %}

    <main class="content product-content" role="main">
      <div class="content-inner">
        <section class="content-body">
        {% include "menu-breadcrumbs-sd" %}

          <div class="items-body">
            <div class="flex-col flex-col-left">
              <div class="content-illustrations">
                <div class="content-item-box {{ product_image_state }} js-content-item-box">
                  <div class="item-top product-image">
                    {%- if product.image != blank- %}
                      <div class="top-inner aspect-ratio-inner">
                        {%- assign image_class = "item-image not-cropped" -%}
                        {% image product.image target_width: "600" class: image_class loading: "lazy" %}
                      </div>
                    {%- endif -%}
                  </div>
                </div>
                {%- if gallery_content_size > 0 or editmode -%}
                  <div class="content-body formatted js-product-gallery" data-search-indexing-allowed="true">
                    {% content bind=product name="gallery" %}
                  </div>
                {%- endif -%}
              </div>
            </div>
            <div class="flex-col product-right-content">
              <div class="content-body js-product-right-content">
                <header class="content-header">
                  <div class="content-formatted content-item-title" data-search-indexing-allowed="true">
                    <h1>{%- editable product.name -%}</h1>
                  </div>
                </header>

                <div class="product-price">
                  {%- if product.price_max_with_tax != product.price_min_with_tax -%}
                    {{ product.price_min_with_tax | money_with_currency: product.currency -}}
                    <span class="product-price-divider">–</span>
                  {%- endif -%}
                  {{ product.price_max_with_tax | money_with_currency: product.currency -}}
                </div>

                <div class="content-formatted" data-search-indexing-allowed="true">
                  {%- if editmode or product.description != blank -%}
                    <div class="content-product-description">
                      {%- editable product.description -%}
                    </div>
                  {%- endif -%}

                  <div class="buy-btn-content js-buy-btn-content">
                    {% include "buy-button" %}
                  </div>
                  {% content bind=product %}
                </div>
              </div>
            </div>
          </div>

        </section>
        {%- if bottom_content_size > 0 or editmode -%}
          <section
            class="content-product-wide content-area"
            data-search-indexing-allowed="true">
            {% content bind=product name="content" %}
          </section>
        {%- endif -%}
      </div>
    </main>

    {% include "footer" %}
  </div>

  {% include "site-signout" %}
  {% include "javascripts" %}
  {% include "edicy-tools" %}

  <script>
    if (site) {
      site.handleProductPageContent();

      {%- if product and editmode -%}
        site.handleProductImageClick({{ product.id }});
      {% endif %}
    }
  </script>

</body>
</html>
