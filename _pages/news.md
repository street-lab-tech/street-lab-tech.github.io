---
title: "News"
layout: gridlay
permalink: /news/
---

<div class="news-archive">
{% assign sorted = site.data.news | sort: "date" | reverse %}
{% assign groups = sorted | group_by_exp: "n", "n.date | date: '%Y'" | sort: "name" | reverse %}

<!-- optional in-page year nav -->
<nav class="news-year-nav">
  {% for g in groups %}<a href="#y{{ g.name }}">{{ g.name }}</a>{% unless forloop.last %} · {% endunless %}{% endfor %}
</nav>

{% for group in groups %}
  <h2 class="news-year" id="y{{ group.name }}">{{ group.name }}</h2>
  <ol class="news-list">
    {% for n in group.items %}
      {% assign label = n.title | default: n.headline %}
      <li class="news-item">
        <time class="news-date" datetime="{{ n.date | date_to_xmlschema }}">{{ n.date | date: "%b %d" }}</time>
          <h3 class="news-title">
            {% if n.url %}<a href="{{ n.url }}">{{ label }}</a>{% else %}{{ label }}{% endif %}
          </h3>
        {% if n.projects %}
          <div class="news-projects">
            {% for pid in n.projects %}
              {% assign p = site.data.projects | where: "id", pid | first %}
              <span class="news-chip">{{ p.title | default: pid }}</span>
            {% endfor %}
          </div>
        {% endif %}
      </li>
    {% endfor %}
  </ol>
{% endfor %}
</div>
