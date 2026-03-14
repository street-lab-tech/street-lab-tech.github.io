---
layout: gridlay
title: "Media Series"
sitemap: false
permalink: /resources/
---

### Accessibility Resources

<ul class="sl-resource-links">
  <li>
    <a href="/files/media/Accessible Content Design Recommendations.pdf">
      Accessible content design recommendations (brochure, PDF)
    </a>
  </li>
  <li>
    <a href="https://github.com/street-lab-tech/Accessibility-Guidelines">
      Accessibility guidelines for scientific software (GitHub repository)
    </a>
  </li>
</ul>

{% assign podcasts = site.data.media_series | where: "type", "podcast" %}
{% assign videos   = site.data.media_series | where: "type", "video" %}
{% assign pdfs     = site.data.media_series | where: "type", "pdf" %}

{% if podcasts and podcasts.size > 0 %}
## Podcasts
<div class="media-series-list" markdown="0">
{% for series in podcasts %}
  <article class="media-series-item">
    <div class="media-series-item-copy">
      <h3 class="media-series-title">{{ series.title }}</h3>
      {% if series.description %}<p class="media-series-description">{{ series.description }}</p>{% endif %}
    </div>

    {% if series.thumbnail %}
    <div class="media-series-thumb">
      {% if series.url and series.url != "" %}<a href="{{ series.url }}" aria-label="View podcast series: {{ series.title | escape }}">{% endif %}
        <img src="{{ series.thumbnail | relative_url }}" alt="{{ series.thumbnail_alt | default: 'Thumbnail for ' | append: series.title | escape }}">
      {% if series.url and series.url != "" %}</a>{% endif %}
    </div>
    {% endif %}

    {% if series.audio_files %}
    <ul class="media-series-links list-unstyled">
      {% for a in series.audio_files %}
      <li>{% if a.file and a.file != "" %}<a href="{{ a.file }}">{% endif %}{{ a.title }}{% if a.file and a.file != "" %}</a>{% endif %}</li>
      {% endfor %}
    </ul>
    {% endif %}
  </article>
{% endfor %}
</div>
{% endif %}

{% if videos and videos.size > 0 %}
## Videos
<div class="media-series-list" markdown="0">
{% for series in videos %}
  <article class="media-series-item">
    <div class="media-series-item-copy">
      <h3 class="media-series-title">{{ series.title }}</h3>
      {% if series.description %}<p class="media-series-description">{{ series.description }}</p>{% endif %}
    </div>

    {% if series.thumbnail %}
    <div class="media-series-thumb">
      {% if series.url and series.url != "" %}<a href="{{ series.url }}" aria-label="View video series: {{ series.title | escape }}">{% endif %}
        <img src="{{ series.thumbnail | relative_url }}" alt="{{ series.thumbnail_alt | default: 'Thumbnail for ' | append: series.title | escape }}">
      {% if series.url and series.url != "" %}</a>{% endif %}
    </div>
    {% endif %}

    {% if series.video_files %}
    <ul class="media-series-links list-unstyled">
      {% for v in series.video_files %}
      <li>{% if v.file and v.file != "" %}<a href="{{ v.file }}">{% endif %}{{ v.title }}{% if v.file and v.file != "" %}</a>{% endif %}</li>
      {% endfor %}
    </ul>
    {% endif %}
  </article>
{% endfor %}
</div>
{% endif %}

{% if pdfs and pdfs.size > 0 %}
<div class="media-series-list" markdown="0">
{% for series in pdfs %}
  <article class="media-series-item">
    <div class="media-series-item-copy">
      <h3 class="media-series-title">{{ series.title }}</h3>
      {% if series.description %}<p class="media-series-description">{{ series.description }}</p>{% endif %}
    </div>

    {% if series.thumbnail %}
    <div class="media-series-thumb">
      {% if series.url and series.url != "" %}<a href="{{ series.url }}" aria-label="View resource: {{ series.title | escape }}">{% endif %}
        <img src="{{ series.thumbnail | relative_url }}" alt="{{ series.thumbnail_alt | default: 'Thumbnail for ' | append: series.title | escape }}">
      {% if series.url and series.url != "" %}</a>{% endif %}
    </div>
    {% endif %}

    {% if series.pdf_files %}
    <ul class="media-series-links list-unstyled">
      {% for p in series.pdf_files %}
      <li>{% if p.file and p.file != "" %}<a href="{{ p.file }}">{% endif %}{{ p.title }}{% if p.file and p.file != "" %}</a>{% endif %}</li>
      {% endfor %}
    </ul>
    {% endif %}
  </article>
{% endfor %}
</div>
{% endif %}