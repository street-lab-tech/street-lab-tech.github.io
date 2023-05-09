---
title: "The STREET Lab -- Research"
layout: gridlay
excerpt: "The STREET Lab -- Research"
sitemap: false
permalink: /research/
---
# Research

STREET Lab is focused on understanding and supporting the sociotechnical practices of marginalized communities around the world, with an emphasis in resistance, informality, and social justice. We are an interdisciplinary research group working with Human-Computer Interaction (HCI), Computer-Supported Cooperative Work (CSCW), Social Computing, Development Studies, Political Science, 

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

{% if projects.subprojects != 0 %}  

  <p><b>Subprojects: </b></p>

  {% if projects.subprojects == 1 %}
  <ul><a href="{{ projects.subprojects1.url}}"> {{ projects.subprojects1.name}}</a></ul>
  {% endif %}

  {% if projects.subprojects == 2 %}
  <ul><a href="{{ projects.subprojects1.url}}"> {{ projects.subprojects1.name}}</a></ul>
  <ul><a href="{{ projects.subprojects2.url}}"> {{ projects.subprojects2.name}}</a></ul>
  {% endif %}

  {% if projects.subprojects == 3 %}
  <ul><a href="{{ projects.subprojects1.url}}"> {{ projects.subprojects1.name}}</a></ul>
  <ul><a href="{{ projects.subprojects2.url}}"> {{ projects.subprojects2.name}}</a></ul>
  <ul><a href="{{ projects.subprojects3.url}}"> {{ projects.subprojects3.name}}</a></ul>
  {% endif %}

  {% if projects.subprojects == 4 %}
  <ul><a href="{{ projects.subprojects1.url}}"> {{ projects.subprojects1.name}}</a></ul>
  <ul><a href="{{ projects.subprojects2.url}}"> {{ projects.subprojects2.name}}</a></ul>
  <ul><a href="{{ projects.subprojects3.url}}"> {{ projects.subprojects3.name}}</a></ul>
  <ul><a href="{{ projects.subprojects4.url}}"> {{ projects.subprojects4.name}}</a></ul>
  {% endif %}

  {% if projects.subprojects == 5 %}
  <ul><a href="{{ projects.subprojects1.url}}"> {{ projects.subprojects1.name}}</a></ul>
  <ul><a href="{{ projects.subprojects2.url}}"> {{ projects.subprojects2.name}}</a></ul>
  <ul><a href="{{ projects.subprojects3.url}}"> {{ projects.subprojects3.name}}</a></ul>
  <ul><a href="{{ projects.subprojects4.url}}"> {{ projects.subprojects4.name}}</a></ul>
  <ul><a href="{{ projects.subprojects5.url}}"> {{ projects.subprojects5.name}}</a></ul>
  {% endif %}

  {% endif %}

  <p><strong><a href="{{ projects.link.url }}">{{ projects.link.display }}</a></strong></p>
  <p class="text-danger"><strong>{{ projects.news1 }}</strong></p> 
  <p> {{ projects.news2 }}</p>
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