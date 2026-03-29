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

function copyBibTeX(el) {
  var bibtex = el.getAttribute('data-bibtex');
  navigator.clipboard.writeText(bibtex).then(() => {
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

{% assign prev_year = '' %}
{% for publi in site.data.publist %}
{% if publi.year != prev_year %}{% assign prev_year = publi.year %}{% if publi.year == 'pre2021' %}{% assign year_label = 'Before 2021' %}{% else %}{% assign year_label = publi.year %}{% endif %}
<div class="sl-year-divider" markdown="0">{{ year_label }}</div>
{% endif %}
{% assign abs_id = 'abs-peer-' | append: forloop.index %}
{% include publication-item.html publi=publi abs_id=abs_id %}
{% endfor %}

## Short Papers and Abstracts {#short-papers}

{% assign prev_year = '' %}
{% for publi in site.data.nonpublist %}
{% if publi.year != prev_year %}{% assign prev_year = publi.year %}{% if publi.year == 'pre2021' %}{% assign year_label = 'Before 2021' %}{% else %}{% assign year_label = publi.year %}{% endif %}
<div class="sl-year-divider" markdown="0">{{ year_label }}</div>
{% endif %}
{% assign abs_id = 'abs-short-' | append: forloop.index %}
{% include publication-item.html publi=publi abs_id=abs_id %}
{% endfor %}

## Workshops {#workshops}

{% assign prev_year = '' %}
{% for publi in site.data.workshops %}
{% if publi.year != prev_year %}{% assign prev_year = publi.year %}{% if publi.year == 'pre2021' %}{% assign year_label = 'Before 2021' %}{% else %}{% assign year_label = publi.year %}{% endif %}
<div class="sl-year-divider" markdown="0">{{ year_label }}</div>
{% endif %}
{% assign abs_id = 'abs-work-' | append: forloop.index %}
{% include publication-item.html publi=publi abs_id=abs_id %}
{% endfor %}
