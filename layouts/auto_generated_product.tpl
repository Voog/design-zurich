<!DOCTYPE html>
{%- include "template-settings" -%}
{%- include "template-variables" -%}
{%- include "edicy-tools-variables" -%}

{%- if product.photos != blank -%}
  {%- assign product_image_state = "with-images" -%}
{%- else -%}
  {%- assign product_image_state = "without-images" -%}
{%- endif -%}

<html class="{% if editmode %}editmode{% else %}public{% endif %} {{ language_flags_mode }} {{ language_names_mode }} {{ language_menu_mode }}" lang="{{ page.language_code }}">
<head prefix="og: http://ogp.me/ns#">
  {% include "html-head" content_page: true %}

  {% sd_product %}
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

  {%- capture product_social_html -%}
    {%- unless editmode -%}
      {%- xcontent name="product-social" -%}
    {%- endunless -%}
  {%- endcapture -%}

  {%- assign product_social_size = product_social_html | strip | size -%}

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
                  {%- if product.photos == blank -%}
                    <div class="item-top"></div>
                  {%- else -%}
                    {% gallery product layout="product_slider" %}
                  {%- endif -%}
                </div>
                {%- if gallery_content_size > 0 or editmode -%}
                  <div class="content-body formatted js-product-gallery" data-search-indexing-allowed="true">
                    {%- assign gallery_title = "gallery" | lce -%}
                    {%- assign gallery_title_tooltip = "content_tooltip_additional_images" | lce -%}
                    {% content bind=product name="gallery" title=gallery_title title_tooltip=gallery_title_tooltip %}
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

                {%- capture original_price -%}
                  {% if product.price_min_with_tax != product.price_max_with_tax -%}
                    {{- product.price_min_with_tax | money_with_currency: product.currency -}}
                    <span> – </span>
                  {%- endif -%}
                  {{- product.price_max_with_tax | money_with_currency: product.currency -}}
                {%- endcapture -%}

                <div class="product-price">
                  {% if product.on_sale? -%}
                    <s class="product-price-original">
                      {{- original_price -}}
                    </s>
                  {% endif -%}

                  <span class="product-price-final">
                    {%- if product.on_sale? -%}
                      {% if product.effective_price_min_with_tax != product.effective_price_max_with_tax %}
                        {{- product.effective_price_min_with_tax | money_with_currency: product.currency -}}
                        <span> – </span>
                      {%- endif -%}
                      {{- product.effective_price_max_with_tax | money_with_currency: product.currency -}}
                    {% else %}
                      {{ original_price }}
                    {% endif -%}
                  </span>
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

                  {%- if editmode or product_social_size > 0 -%}
                    <div class="product-cross-page-info">
                      {%- assign cross_page_info_title = "cross_page_info" | lce  -%}
                      {%- assign cross_page_info_title_tooltip = "content_tooltip_all_pages_same_type" | lce -%}
                      {% xcontent
                        name="product-social"
                        title=cross_page_info_title
                        title_tooltip=cross_page_info_title_tooltip
                      %}
                    </div>
                  {%- endif -%}

                  {%- assign content_default_title = "content" | lce -%}
                  {%- assign content_default_title_tooltip = "content_tooltip_specific_page" | lce -%}
                  {% content bind=product title=content_default_title title_tooltip=content_default_title_tooltip %}
                </div>
              </div>
            </div>
          </div>

        </section>
        {%- if bottom_content_size > 0 or editmode -%}
          <section
            class="content-product-wide content-area"
            data-search-indexing-allowed="true">
            {%- assign bottom_content_title = "additional_content" | lce -%}
            {%- assign bottom_content_title_tooltip = "content_tooltip_additional_information" | lce -%}
            {% content
              bind=product
              name="content"
              title=bottom_content_title
              title_tooltip=bottom_content_title_tooltip
            %}
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
    }
  </script>

</body>
</html>
