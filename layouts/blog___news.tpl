<!DOCTYPE html>
{%- include "template-settings" -%}
{%- include "edicy-tools-variables" -%}
{%- include "blog-article-variables" -%}
{%- include "template-variables" -%}

<html class="{% if editmode %}editmode{% else %}public{% endif %} {{ language_flags_mode }} {{ language_names_mode }} {{ language_menu_mode }}" lang="{{ page.language_code }}">
<head prefix="og: http://ogp.me/ns#">
  {% include "html-head" content_page: true %}
</head>

<body class="blog-page js-bgpicker-body-image">
  <div class="container js-container">
    {% include "header" %}
    {% include "tags-blog" %}

    <main class="content" role="main">
      <div class="content-inner">
        <div class="post-intro-content content-formatted" data-search-indexing-allowed="true">
          {%- assign content_default_title = "content" | lce -%}
          {%- assign content_default_title_tooltip = "content_tooltip_specific_page" | lce -%}
          {% content title=content_default_title title_tooltip=content_default_title_tooltip %}
        </div>
        {% addbutton %}
        {% for article in articles %}
          <article class="post">
            <div class="post-left">
              {% assign article_year = article.created_at | format_date: "%Y" | to_num %}

              {% if article_year == current_year %}
                {% assign article_date_format = "long_without_year" %}
              {% else %}
                {% assign article_date_format = "long" %}
              {% endif %}

              <time class="post-date" datetime="{{ article.created_at | date: '%Y-%m-%d' }}">{{ article.created_at | format_date: article_date_format }}</time>
            </div>

            <div class="post-right">
              <h2 class="post-title"><a href="{{ article.url }}">{{ article.title }}</a></h2>
              <div class="post-excerpt content-formatted">{{ article.excerpt }}</div>
              <a href="{{ article.url }}" class="post-link">{{ "read_more" | lc }}</a>
            </div>
          </article>
        {% endfor %}
      </div>
    </main>

    {% include "footer" %}
  </div>
  {% include "site-signout" %}
  {% include "javascripts" %}
  {% include "edicy-tools" %}
  <script>
    $(document).ready(function() {
      currentUrl = window.location.href;
      blogUrl = '{{ site.url }}{{ page.path }}';
      if (currentUrl === blogUrl) {
        $('.js-tags-all').addClass('active');
      };
    });

    site.initBlogPage();
  </script>
</body>
</html>
