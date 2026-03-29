---
title: "The STREET Lab -- Research"
layout: gridlay
excerpt: "The STREET Lab -- Research"
sitemap: false
permalink: /research/
---

# Research

STREET Lab is focused on understanding and supporting the sociotechnical practices of marginalized communities around the world, with an emphasis in resistance, informality, and social justice.

Some broad research projects that we currently work on:

<div class="row g-4" markdown="0">
{% for projects in site.data.projects %}
  {% if projects.highlight == 1 %}
  <div class="col-12 col-md-6">
    <article class="card sl-surface h-100 border-0">
      <div class="card-body">
        <h2 class="h4 mb-3">{{ projects.title }}</h2>
        <p>{{ projects.description }}</p>
        <p><strong>Researchers:</strong> {{ projects.authors }}</p>

        {% if projects.subprojects and projects.subprojects.size > 0 %}
          <p class="mb-2"><strong>Subprojects:</strong></p>
          <ul class="list-unstyled mb-3">
            {% for sp in projects.subprojects %}
              <li class="mb-1">
                {% if sp.url and sp.url != '' %}
                  <a href="{{ sp.url | relative_url }}">{{ sp.name }}</a>
                {% else %}
                  {{ sp.name }}
                {% endif %}
              </li>
            {% endfor %}
          </ul>
        {% endif %}

        {% if projects.link and projects.link.url and projects.link.display and projects.link.display != '' %}
          <p class="mb-3"><strong><a href="{{ projects.link.url | relative_url }}">{{ projects.link.display }}</a></strong></p>
        {% endif %}

        {% assign all_news = site.data.news | sort: 'date' | reverse %}
        {% assign pid = projects.id %}
        {% assign proj_news = all_news | where_exp: 'n', 'n.projects contains pid' %}
        {% assign news_limit = site.project_news_limit | default: 2 | plus: 0 %}

        {% if proj_news and proj_news.size > 0 %}
        <div class="project-news" markdown="0">
          <h3 class="project-news-title h6">News</h3>
          <ul class="project-news-list">
            {% for n in proj_news limit: news_limit %}
              {% assign label = n.title | default: n.headline %}
              <li>
                {% if n.url and n.url != '' %}
                  <a href="{{ n.url }}">{{ label }}</a>
                {% else %}
                  {{ label }}
                {% endif %}
                {% if n.date %}<span class="project-news-date"> — {{ n.date | date: "%b %Y" }}</span>{% endif %}
              </li>
            {% endfor %}
          </ul>
        </div>
        {% endif %}
      </div>
    </article>
  </div>
  {% endif %}
{% endfor %}
</div>