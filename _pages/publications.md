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
  abstract.style.display = isVisible ? "none" : "block";
  button.setAttribute("aria-expanded", String(!isVisible));
  button.textContent = isVisible ? "Show Abstract" : "Hide Abstract";
}

function copyBibTeX(bibtexContent) {
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
<p>
  <strong>{{ publi.title }}</strong><em> | {{ publi.award }}</em><br />
  {{ publi.authors }}<br />
  <em>{{ publi.venue }}</em><br />
  <a href="{{ publi.doi }}" target="_blank">{{ publi.doi }}</a>
  |
  <a href="javascript:void(0);" onclick="copyBibTeX('bibtex{{ publi.bibtex }}')">Copy BibTeX</a>
</p>

{% assign abs_id = 'abs-peer-' | append: forloop.index %}
<p>
  <button type="button"
          class="sl-abstract-toggle"
          onclick="toggleAbstract('{{ abs_id }}', this)"
          aria-expanded="false"
          aria-controls="{{ abs_id }}">
    Show Abstract
  </button>
</p>
<div id="{{ abs_id }}" class="sl-abstract" style="display:none" role="region" aria-live="polite" markdown="0">
  <p>{{ publi.description | strip }}</p>
</div>
{% endfor %}

## Short Papers {#short-papers}

{% for publi in site.data.nonpublist %}
<p>
  <strong>{{ publi.title }}</strong>
  <a href="{{ publi.link.url }}">{{ publi.link.display }}</a><br />
  {{ publi.authors }}<br />
  <em>{{ publi.venue }}</em><br />
  <a href="{{ publi.doi }}" target="_blank">{{ publi.doi }}</a>
  |
  <a href="javascript:void(0);" onclick="copyBibTeX('bibtex{{ publi.bibtex }}')">Copy BibTeX</a>
</p>

{% assign abs_id = 'abs-short-' | append: forloop.index %}
<p>
  <button type="button"
          class="sl-abstract-toggle"
          onclick="toggleAbstract('{{ abs_id }}', this)"
          aria-expanded="false"
          aria-controls="{{ abs_id }}">
    Show Abstract
  </button>
</p>
<div id="{{ abs_id }}" class="sl-abstract" style="display:none" role="region" aria-live="polite" markdown="0">
  <p>{{ publi.description | strip }}</p>
</div>
{% endfor %}

## Workshops {#workshops}

{% for publi in site.data.workshops %}
<p>
  <strong>{{ publi.title }}</strong>
  <a href="{{ publi.link.url }}">{{ publi.link.display }}</a><br />
  {{ publi.authors }}<br />
  <em>{{ publi.venue }}</em><br />
  <a href="{{ publi.doi }}" target="_blank">{{ publi.doi }}</a>
  |
  <a href="javascript:void(0);" onclick="copyBibTeX('bibtex{{ publi.bibtex }}')">Copy BibTeX</a>
</p>

{% assign abs_id = 'abs-work-' | append: forloop.index %}
<p>
  <button type="button"
          class="sl-abstract-toggle"
          onclick="toggleAbstract('{{ abs_id }}', this)"
          aria-expanded="false"
          aria-controls="{{ abs_id }}">
    Show Abstract
  </button>
</p>
<div id="{{ abs_id }}" class="sl-abstract" style="display:none" role="region" aria-live="polite" markdown="0">
  <p>{{ publi.description | strip }}</p>
</div>
{% endfor %}