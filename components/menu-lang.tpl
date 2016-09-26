<ul class="menu {% if menu_lang_mobile == true %}js-menu-lang-mobile{% else %}js-menu-lang-desktop{% endif %}">
  {% for language in site.languages %}
    <li class="menu-item"><a class="menu-link lang-flag lang-flag-{{ language.code }}{% if language.selected? %} active{% endif %}" href="{{ language.url }}" data-lang-code="{{ language.code }}">{{ language.title }}</a></li>
  {% endfor %}
  {% if editmode %}
    <li class="menu-item-cms">{% languageadd %}</li>

    {% if lang_settings == true %}
      <li class="menu-item-cms js-menu-language-settings">
        <button class="btn btn-js-styled js-menu-language-settings-toggle js-prevent-sideclick"></button>
      </li>
    {% endif %}
  {% endif %}
</ul>
