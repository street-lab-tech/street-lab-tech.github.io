---
title: "STREET Lab: Events"
layout: homelay
excerpt: "SS"
sitemap: false
permalink: /events.html
---



# Events

Below is a list of our events. Click on a flyer image to view the full PDF.

{% assign sorted_events = site.data.events | sort: 'date' %}
{% for event in sorted_events %}
<div class="event">
  <p>
    <strong>{{ event.date | date: "%B %d, %Y" }}</strong> – {{ event.speaker }}
  </p>
  <a href="{{ event.pdf }}" target="_blank" aria-label="View flyer for event on {{ event.date | date: '%B %d, %Y' }} featuring {{ event.speaker }}">
    <img src="{{ event.image }}" alt="Flyer for event on {{ event.date | date: '%B %d, %Y' }} featuring {{ event.speaker }}" style="max-width:300px; width:100%; height:auto;">
  </a>
</div>
{% endfor %}

