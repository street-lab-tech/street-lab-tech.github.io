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

function copyBibTeX(bibtexContent) {
  // Copy to clipboard
  navigator.clipboard.writeText(bibtexContent).then(() => {
    alert("BibTeX copied to clipboard!");
  }).catch(err => {
    console.error("Error copying BibTeX: ", err);
  });
}
</script>

<p class="section-jump">
  Jump to:
  <a href="#peer-reviewed-publications">Peer-reviewed</a> ·
  <a href="#short-papers">Short papers</a> ·
  <a href="#workshops">Workshops</a>
</p>


## Peer Reviewed Publications {#peer-reviewed-publications}

{% for publi in site.data.publist %}

  <strong>{{ publi.title }}</strong><em> | {{ publi.award }}</em><br />
  {{ publi.authors }}<br />
  <em>{{ publi.venue }}</em> <br />
  <a href="{{ publi.doi }}" target="_blank">{{ publi.doi }}</a> 
  | 
  <a href="javascript:void(0);" onclick="copyBibTeX('bibtex{{ publi.bibtex }}')">Copy BibTeX</a>
    

  {% assign abs_id = 'abs-peer-' | append: forloop.index %}
  <button onclick="toggleAbstract('{{ abs_id }}', this)"
          aria-expanded="false"
          aria-controls="{{ abs_id }}">Show Abstract</button>
  <div id="{{ abs_id }}" style="display:none" role="region" aria-live="polite">
    {{ publi.description }}
  </div>


{% endfor %}

## Short Papers {#short-papers}

{% for publi in site.data.nonpublist %}

  <strong>{{ publi.title }}</strong> <a href="{{ publi.link.url }}">{{ publi.link.display }}</a> <br />
  {{ publi.authors }}<br /><em>{{ publi.venue }}</em><br />
  <a href="{{ publi.doi }}" target="_blank">{{ publi.doi }}</a> 
  | 
  <a href="javascript:void(0);" onclick="copyBibTeX('bibtex{{ publi.bibtex }}')">Copy BibTeX</a>

  {% assign abs_id = 'abs-short-' | append: forloop.index %}
  <button onclick="toggleAbstract('{{ abs_id }}', this)"
          aria-expanded="false"
          aria-controls="{{ abs_id }}">Show Abstract</button>
  <div id="{{ abs_id }}" style="display:none" role="region" aria-live="polite">
    {{ publi.description }}
  </div>

{% endfor %}

## Workshops {#workshops}

{% for publi in site.data.workshops %}

  <strong>{{ publi.title }}</strong> <a href="{{ publi.link.url }}">{{ publi.link.display }}</a> <br />
  {{ publi.authors }}<br /><em>{{ publi.venue }}</em><br />
  <a href="{{ publi.doi }}" target="_blank">{{ publi.doi }}</a> 
  | 
  <a href="javascript:void(0);" onclick="copyBibTeX('bibtex{{ publi.bibtex }}')">Copy BibTeX</a>

  {% assign abs_id = 'abs-work-' | append: forloop.index %}
  <button onclick="toggleAbstract('{{ abs_id }}', this)"
          aria-expanded="false"
          aria-controls="{{ abs_id }}">Show Abstract</button>
  <div id="{{ abs_id }}" style="display:none" role="region" aria-live="polite">
    {{ publi.description }}
  </div>

{% endfor %}