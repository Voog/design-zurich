{% if editmode or page.menuitem.children? %}
  <section class="content-topbar">
    <nav class="menu-sub">
      <ul class="menu">
      {% for level2 in page.menuitem.visible_children %}
        {% if exclude_products == true and level2.layout_title != 'Product' and level2.layout_title != "Product list" %}
          <li class="menu-item"><a href="{{level2.url}}" class="menu-link{% if level2.selected? %} active{% endif %}{% unless level2.translated? %} untranslated fci-editor-menuadd{% endunless %}">{{level2.title}}</a></li>
        {% elsif exclude_products != true %}
          <li class="menu-item"><a href="{{level2.url}}" class="menu-link{% if level2.selected? %} active{% endif %}{% unless level2.translated? %} untranslated fci-editor-menuadd{% endunless %}">{{level2.title}}</a></li>
        {% endif %}
      {% endfor %}
      {% if editmode %}
        {% if exclude_products == true and level2.layout_title != 'Product' and level2.layout_title != "Product list" %}
        {% if page.menuitem.hidden_children.size > 0 %}<li class="edy-btn">{% menubtn page.menuitem.hidden_children %}</li>{% endif %}
          <li class="edy-btn">{% menuadd parent="page"%}</li>
        {% endif %}
        {% endif %}
      </ul>
    </nav>
  </section>
{% endif%}
