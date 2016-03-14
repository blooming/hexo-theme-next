{%
  set js_vendors = [
    'jquery/2.1.3/jquery.min',
    'fastclick/1.0.6/fastclick.min',
    'jquery_lazyload/1.9.7/jquery.lazyload.min',
    'velocity/1.2.2/velocity.min',
    'velocity/1.2.2/velocity.ui.min'
  ]
%}

{% if theme.fancybox %}
  {% set js_vendors[js_vendors.length] = 'fancybox/2.1.5/jquery.fancybox.pack' %}
{% endif %}

{# Reset `window.Promise` when it was not a function. #}
{# IE refers the element whose id is `Promise` as `window.Promise`, this causes Velocity throwing an exception #}
<script type="text/javascript">
  if (Object.prototype.toString.call(window.Promise) !== '[object Function]') {
    window.Promise = null;
  }
</script>

{% for vendor in js_vendors %}
  <script type="text/javascript" src="//cdn.staticfile.org/{{ vendor }}.js"></script>
{% endfor %}
