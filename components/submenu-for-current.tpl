{%- capture lvl2 -%}
  {% for level2 in page.menuitem.visible_children %}
    {% if level2.layout_title != product_layout and level2.layout_title != product_list_layout %}
      {%- assign hasChildren = true -%}
      <li class="menu-item">
        <a href="{{level2.url}}" class="menu-link{% if level2.selected? %} active{% endif %}{% unless level2.translated? %} untranslated fci-editor-menuadd{% endunless %}">{{level2.title}}</a>
      </li>
    {% endif %}
  {% endfor %}
  {% if editmode %}
    {% if page.menuitem.hidden_children.size > 0 %}
      <li class="edy-btn">{% menubtn page.menuitem.hidden_children %}</li>
    {% endif %}
    <li class="edy-btn">{% menuadd parent="page"%}</li>
  {% endif %}
{%- endcapture -%}

{% if lvl2 != blank %}
  <section class="content-topbar">
    <nav class="menu-sub">
      <ul class="menu">
        {{ lvl2 }}
      </ul>
    </nav>
  </section>
{% endif%}