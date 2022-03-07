<!DOCTYPE html>
{%- include "template-settings" -%}
{%- include "template-variables" -%}
{%- include "edicy-tools-variables" -%}

<html class="{% if editmode %}editmode{% else %}public{% endif %} {{ language_flags_mode }} {{ language_names_mode }} {{ language_menu_mode }}" lang="{{ page.language_code }}">
<head prefix="og: http://ogp.me/ns#">
  {% include "html-head" content_page: true %}
</head>

<body class="common-page item-list-page js-bgpicker-body-image">
  <div class="container js-container">
    {% include "header" %}
    {% include "template-svg-spritesheet" %}
    {% if page.level != 0 %}
      {% include "submenu-for-current" %}
    {% endif %}

    <main class="content" role="main">
      <div class="content-inner{% if has_children %} with-submenu{% endif %}">
        <section class="content-body content-formatted" {{ edy_intro_edit_text }}>
          <div class="content-formatted intro-content" data-search-indexing-allowed="true">{% content %}</div>

          {% include "menu-breadcrumbs" %}
          <section class="content-item-boxes">
            {% if site.root_item.selected? %}
              {% for level_1 in site.visible_menuitems_with_data %}
                {% if level_1.layout_title == product_list_layout or level_1.layout_title == product_layout %}
                  {% include "product-list-item" menu_level: level_1 %}
                {% endif %}
              {% endfor %}
            {% else %}
              {% include "product-list-loop" %}
            {% endif %}
          </section>
        </section>
      </div>
    </main>

    {% include "footer" %}
  </div>

  {% include "site-signout" %}
  {% include "javascripts" %}
  {% include "edicy-tools" items_page: true %}

  <script>site.initItemsPage({% if editmode %}false{% else %}true{% endif %});</script>

</body>
</html>
