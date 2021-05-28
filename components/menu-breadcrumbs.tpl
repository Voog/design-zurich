{%- capture breadcrumbsScript -%}
  {%- sd_breadcrumbs -%}
{%- endcapture -%}
{%- assign breadcrumbsString = breadcrumbsScript | replace: '<script type="application/ld+json">', '' | replace: "</script>", '' | replace: site.url, '' | replace: '@', '' -%}
{%- assign breadcrumbsObj = breadcrumbsString | json_parse -%}

<ul class="menu menu-horizontal menu-public menu-breadcrumbs">
  {%- if breadcrumbsObj.itemListElement.size > 2 or site.root_item.layout_title == product_list_layout and breadcrumbsObj.itemListElement.size > 1 -%}
    {% for listItem in breadcrumbsObj.itemListElement %}
      {% if forloop.index != 1 or site.root_item.layout_title == product_list_layout %}
        {%- assign pageUrl = page.url | remove_first: "/" -%}

        {%- if pageUrl == listItem.item.id -%}
          {%- assign breadcrumbTag = 'div' -%}
          {%- assign isCurrentPage = true -%}
        {%- else -%}
          {%- assign breadcrumbTag = 'a' -%}
          {%- assign isCurrentPage = false -%}
        {%- endif -%}

        <li class="menu-item">
          <{{ breadcrumbTag }} class="{% if isCurrentPage == false %} menu-link" href="/{{ listItem.item.id }}{% endif %}">
            {{ listItem.item.name }}
          </{{ breadcrumbTag }}>
        </li>
        {% if forloop.rindex > 1 %}
          <span class="menu-separator">/</span>
        {% endif %}
      {% endif -%}
    {% endfor %}
  {%- endif -%}

  {%- if editmode and page.layout_title == product_list_layout -%}
      {% include 'add-page-button' _menuItem: page, _wrapperClassName: "menu-item menu-item-cms" %}
  {%- endif -%}
</ul>