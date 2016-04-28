<ul class="menu top-level">
  {% unless site.root_item.hidden? %}
    {% if site.visible_menuitems.size > 0 or editmode %}
      <li class="menu-item menu-main-item">
        <a class="menu-link{% if site.root_item.selected? %} active{% endif %}" href="{{ site.root_item.url }}">{{ site.root_item.title }}</a>
      </li>
    {% endif %}
  {% endunless %}

  {% for item in site.visible_menuitems %}
    <li class="menu-item menu-main-item">
      <a class="menu-link{% if item.selected? %} active{% endif %}{% unless item.translated? %} untranslated fci-editor-menuadd{% endunless %}" href="{{ item.url }}">{{ item.title }}</a>
    </li>
  {% endfor %}

  {% if editmode %}
    {% if site.hidden_menuitems.size > 0 %}
      <li class="edit-btn">{% menubtn site.hidden_menuitems %}</li>
    {% endif %}

    <li class="edit-btn">{% menuadd %}</li>
  {% endif %}

  {% if front_page %}

    {% if site.search.enabled %}
      <li class="menu-item menu-item-search-inline">
        <div class="search inline js-search js-popover js-prevent-sideclick">
          <form id="search-inline" class="search-form js-search-form" method="get" action="#">
            <input id="onpage_search_inline" class="search-input js-search-input" type="text" name="" placeholder="{{ 'search_this_site' | lc }}">
            <button class="search-btn search-submit">
              <svg width="16px" height="16px" xmlns="http://www.w3.org/2000/svg">
                <path d="M15.323,13.712 C15.323,14.194 15.135,14.647 14.794,14.988 C14.453,15.328 14,15.516 13.519,15.516 C13.037,15.516 12.584,15.328 12.243,14.988 C12.243,14.988 9.136,11.881 9.136,11.881 C8.279,12.318 7.323,12.588 6.294,12.588 C2.818,12.588 0,9.77 0,6.294 C0,2.818 2.818,0 6.294,0 C9.77,0 12.588,2.818 12.588,6.294 C12.588,7.424 12.266,8.47 11.745,9.387 C11.745,9.387 14.794,12.437 14.794,12.437 C15.135,12.777 15.323,13.23 15.323,13.712 ZM6.295,1.516 C3.655,1.516 1.514,3.656 1.514,6.297 C1.514,8.937 3.655,11.078 6.295,11.078 C8.936,11.078 11.076,8.937 11.076,6.297 C11.076,3.656 8.936,1.516 6.295,1.516 Z"></path>
              </svg>
            </button>
          </form>

          <div class="voog-search-modal">
            <div class="voog-search-modal-inner js-voog-search-inline-modal-inner"></div>
          </div>
        </div>
      </li>
    {% endif %}

    {% if editmode or site.has_many_languages? %}
      <li class="menu-item menu-item-lang-inline">
        <nav class="menu-lang inline js-menu-lang {% if flags_state %}flags-enabled{% else %}flags-disabled{% endif %}">
          <button class="menu-lang-btn js-menu-lang-btn lang-flag lang-flag-{{ page.language_code }}">
            {% if editmode or flags_state == false %}
              <span class="lang-title">
                {% for language in site.languages %}{% if language.selected? %}{{ language.title }}{% endif %}{% endfor %}
                <span class="ico-popover-toggle">▼</span>
              </span>
            {% endif %}
          </button>
          <div class="menu-lang-popover js-menu-lang-popover js-popover">
            {% include "menu-lang" %}
          </div>
        </nav>
      </li>
    {% endif %}
  {% endif %}
</ul>
