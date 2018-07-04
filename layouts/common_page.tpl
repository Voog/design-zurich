<!DOCTYPE html>
{% include "edicy-tools-variables" %}
{% include "template-variables" %}

<html class="{% if editmode %}editmode{% else %}public{% endif %} {{ language_flags_mode }} {{ language_names_mode }} {{ language_menu_mode }}" lang="{{ page.language_code }}">
<head prefix="og: http://ogp.me/ns#">
  {% include "html-head" content_page: true %}
</head>

<body class="common-page js-bgpicker-body-image">
  <div class="container js-container">
    {% include "header" %}
    {% include "menu-level-2" exclude_products: true %}

    <main class="content" role="main">
      <div class="content-inner{% if has_children %} with-submenu{% endif %}">
        <section class="content-body content-formatted" {{ edy_intro_edit_text }}>{% content %}</section>
      </div>
    </main>

    {% include "footer" %}
  </div>
  {% include "site-signout" %}
  {% include "javascripts" %}
  {% include "edicy-tools" %}
</body>
</html>
