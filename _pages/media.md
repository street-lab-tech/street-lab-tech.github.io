---
layout: gridlay
title: "Media Series"
sitemap: false
permalink: /media/
---

## Podcasts
<div class="media-series-list">
{% for series in site.data.media_series %}
  {% if series.type == "podcast" %}

<a href="{{ series.url }}" aria-label="View podcast series: {{ series.title }}">
  <img src="{{ series.thumbnail }}" alt="Thumbnail for {{ series.title }}">
  <h3>{{ series.title }}</h3>
  <p>{{ series.description }}</p>
  {% endif %}
{% endfor %}
</div>

## Videos

<div class="media-series-list">
{% for series in site.data.media_series %}
  {% if series.type == "video" %}
<article class="media-series-item">
  <a href="{{ series.url }}" aria-label="View video series: {{ series.title }}">
    <img src="{{ series.thumbnail }}" alt="Thumbnail for {{ series.title }}">
    <h3>{{ series.title }}</h3>
    <p>{{ series.description }}</p>
  </a>
</article>
  {% endif %}
{% endfor %}
</div>

## PDFs

<div class="media-series-list">
{% for series in site.data.media_series %}
  {% if series.type == "pdf" %}
<article class="media-series-item">
  <a href="{{ series.url }}" aria-label="View series: {{ series.title }}">
    <img src="{{ series.thumbnail }}" alt="Thumbnail for {{ series.title }}">
    <h3>{{ series.title }}</h3>
    <p>{{ series.description }}</p>
  </a>
</article>
  {% endif %}
{% endfor %}
</div>