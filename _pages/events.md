---
title: "STREET Lab: Events"
layout: homelay
excerpt: "Upcoming and past events at the STREET Lab including talks and workshops."
sitemap: false
permalink: /events.html
---

# Events

## Lab Events and Talks

Below is a list of our events. Click on a flyer image to view the full PDF.

{% assign sorted_events = site.data.events | sort: 'date' | reverse %}
{% for event in sorted_events %}
<div class="sl-event" markdown="0">
  <p><strong>{{ event.date | date: "%B %d, %Y" }}</strong> – {{ event.speaker }}</p>
  <a href="{{ event.pdf }}" target="_blank" aria-label="View flyer for event on {{ event.date | date: '%B %d, %Y' }} featuring {{ event.speaker }}">
    <img src="{{ event.image }}" alt="Flyer for event on {{ event.date | date: '%B %d, %Y' }} featuring {{ event.speaker }}" style="max-width:300px; width:100%; height:auto;">
  </a>
</div>
{% endfor %}

---

## Organized Workshops and SIGs

{% assign sorted_workshops = site.data.workshops | sort: 'year' | reverse %}{% assign prev_year = '' %}
{% for ws in sorted_workshops %}
{% if ws.year != prev_year %}{% assign prev_year = ws.year %}
<div class="sl-year-divider" markdown="0">{{ ws.year }}</div>
{% endif %}
{% assign venue_parts = ws.venue | split: " of the " %}{% if venue_parts.size > 1 %}{% assign display_venue = venue_parts | last %}{% else %}{% assign display_venue = ws.venue %}{% endif %}
<p>
  <strong>{% if ws.link.url and ws.link.url != '' %}<a href="{{ ws.link.url }}" target="_blank">{{ ws.title }}</a>{% else %}{{ ws.title }}{% endif %}</strong><br />
  {{ ws.authors }}<br />
  <em>{{ display_venue }}</em>
</p>
{% endfor %}
