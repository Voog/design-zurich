<footer class="footer">
  {% unless front_page %}
    {%- assign footer_content_title = "footer" | lce -%}
    {%- assign footer_content_title_tooltip = "content_tooltip_all_pages_same_language" | lce -%}
    <div class="content-formatted">
      {% xcontent name="footer" title=footer_content_title title_tooltip=footer_content_title_tooltip %}
    </div>
  {% endunless %}

  {% if site.branding.enabled and page.path == blank -%}
    <div class="voog-reference">
      {% loginblock %}
        {{ "footer_login_link" | lc }}
      {% endloginblock %}
    </div>
  {% endif -%}
  {% if page.private? %}
    <div class="signout-btn-pad"></div>
  {% endif %}
</footer>
