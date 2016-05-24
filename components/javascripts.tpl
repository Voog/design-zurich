{% comment %}SITE WIDE JAVASCRIPTS{% endcomment %}
<script src="{{ javascripts_path }}/application.min.js"></script>
{% sitejs_include %}

{% if site.search.enabled %}
  <script src="{{ site.static_asset_host }}/libs/edicy-search/latest/edicy-search.js"></script>
  <script>
    var search = new VoogSearch($('#search').get(0), {
      per_page: 3,
      lang: '{{ page.language_code }}',
      resultsContainer: $('.js-voog-search-modal-inner').get(0),
      sideclick: true,
      mobileModeWidth: 480,
      updateOnKeypress: false
    });
  </script>

  {% if front_page %}
    <script>
      var search_inline = new VoogSearch($('#search-inline').get(0), {
        per_page: 3,
        lang: '{{ page.language_code }}',
        resultsContainer: $('.js-voog-search-inline-modal-inner').get(0),
        sideclick: true,
        mobileModeWidth: 480,
        updateOnKeypress: false
      });
    </script>
  {% endif %}
{% endif %}

{% if editmode %}
  <script type="text/javascript">
    window.edy = window.edy || [];
    edy.push(['texteditorStyles', {name: '{{ "button" | lc: editor_locale }}', tagname:'a', attribute: {'href': '#'}, classname: 'custom-btn', toggle: true}]);
  </script>
{% endif %}

{% comment %}GOOGLE ANALYTICS INITIATION{% endcomment %}
{% unless editmode %}{{ site.analytics }}{% endunless %}
