---
title: "STREET Lab - Publications"
layout: gridlay
excerpt: "STREET Lab -- Publications."
sitemap: false
permalink: /publications/
---

<script>
function toggleAbstract(id, button) {
  var abstract = document.getElementById(id);
  var isVisible = abstract.style.display === "block";

  // Toggle visibility
  abstract.style.display = isVisible ? "none" : "block";
  
  // Update aria-expanded attribute
  button.setAttribute("aria-expanded", !isVisible);
}
</script>


## Peer Reviewed Publications

{% for publi in site.data.publist %}

  <b>{{ publi.title }}</b>   <em style="color:blue;">{{publi.award}}</em><br />
  <em>{{ publi.authors }} </em><br />{{ publi.venue }}<br />
  <a href="{{ publi.doi }}">{{ publi.doi }}</a> <br />
<!-- Accessible Toggle Button for Abstract -->
  <button onclick="toggleAbstract('abstract{{ forloop.index }}', this)" 
          aria-expanded="false" 
          aria-controls="abstract{{ forloop.index }}">
    Show Abstract
  </button>
  <div id="abstract{{ forloop.index }}" style="display: none;" role="region" aria-live="polite">
    {{ publi.description }}
  </div>

{% endfor %}

## Short Papers

{% for publi in site.data.nonpublist %}

  {{ publi.title }} <a href="{{ publi.link.url }}">{{ publi.link.display }}</a> <br />
  <em>{{ publi.authors }} </em><br />{{ publi.venue }}<br />

{% endfor %}