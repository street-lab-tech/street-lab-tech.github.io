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

{% assign number_printed = 0 %}
{% for projects in site.data.projects %}

{% assign even_odd = number_printed | modulo: 2 %}
{% if projects.highlight == 1 %}

{% if even_odd == 0 %}
<div class="row">
{% endif %}

<div class="col-sm-6 clearfix">
 <div class="well clearfix">
  <pubtit>{{ projects.title }}</pubtit>
  <!--<img src="{{ site.url }}{{ site.baseurl }}/images/pubpic/{{ projects.image }}" class="img-responsive" width="33%" style="float: left" />-->
  <p>{{ projects.description }}</p>
  <p><b>Researchers:</b> {{ projects.authors }}</p>

{% if projects.subprojects %}
  <p><strong>Subprojects:</strong></p>
  <ul class="list-unstyled">
    {% for i in (1..12) %}
      {% assign key = 'subprojects' | append: i %}
      {% assign sp = projects[key] %}
      {% if sp %}
        <ul style="margin: 6px 0;">
          {% if sp.url and sp.url != "" %}
            <a href="{{ sp.url | relative_url }}">{{ sp.name }}</a>
          {% else %}
            {{ sp.name }}
          {% endif %}
        </ul>
      {% endif %}
    {% endfor %}
  </ul>
{% endif %}


  <p><strong><a href="{{ projects.link.url }}">{{ projects.link.display }}</a></strong></p>
  
  {%- assign all_news = site.data.news | sort: "date" | reverse -%}
  {%- assign pid = projects.id -%}
  {% assign proj_news = all_news | where_exp: "n", "n.projects contains pid" %}

  {%- assign news_limit = site.project_news_limit | default: 2 | plus: 0 -%}
  {%- for n in proj_news limit: news_limit -%}
    {%- assign label = n.title | default: n.headline -%}
    <p class="text-success">
      <strong>
        {%- if n.url and n.url != '' -%}<a href="{{ n.url }}">{{ label }}</a>{%- else -%}{{ label }}{%- endif -%}
      </strong>
      {%- if n.date -%}<span class="text-muted"> — {{ n.date | date: "%b %Y" }}</span>{%- endif -%}
    </p>
  {%- endfor -%}


 </div>
</div>

{% assign number_printed = number_printed | plus: 1 %}

{% if even_odd == 1 %}
</div>
{% endif %}

{% endif %}
{% endfor %}

{% assign even_odd = number_printed | modulo: 2 %}
{% if even_odd == 1 %}
</div>
{% endif %}

<p> &nbsp; </p>