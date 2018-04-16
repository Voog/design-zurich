<footer class="footer">
  {% unless front_page %}
    <div class="content-formatted">{% xcontent name="footer" %}</div>
  {% endunless %}
  <div class="voog-reference">{% loginblock %}{{ "footer_login_link" | lc }}{% endloginblock %}</div>
  {% if page.private? %}
    <div class="signout-btn-pad"></div>
  {% endif %}
</footer>
