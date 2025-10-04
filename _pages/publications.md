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


## Peer Reviewed Publications

{% for publi in site.data.publist %}

  <strong>{{ publi.title }}</strong><em> | {{ publi.award }}</em><br />
  {{ publi.authors }}<br />
  <em>{{ publi.venue }}</em> <br />
  <a href="{{ publi.doi }}" target="_blank">{{ publi.doi }}</a> 
  | 
  <a href="javascript:void(0);" onclick="copyBibTeX('bibtex{{ publi.bibtex }}')">Copy BibTeX</a>
    

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
  <a href="{{ publi.doi }}" target="_blank">{{ publi.doi }}</a> 
  | 
  <a href="javascript:void(0);" onclick="copyBibTeX('bibtex{{ publi.bibtex }}')">Copy BibTeX</a>

{% endfor %}

## Workshops

{% for publi in site.data.workshops %}

  {{ publi.title }} <a href="{{ publi.link.url }}">{{ publi.link.display }}</a> <br />
  <em>{{ publi.authors }} </em><br />{{ publi.venue }}<br />
  <a href="{{ publi.doi }}" target="_blank">{{ publi.doi }}</a> 
  | 
  <a href="javascript:void(0);" onclick="copyBibTeX('bibtex{{ publi.bibtex }}')">Copy BibTeX</a>

{% endfor %}