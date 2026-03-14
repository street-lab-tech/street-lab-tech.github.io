---
title: "STREET Lab - Accessibiiity"
layout: project
excerpt: "STREET Lab: Team projects"
sitemap: false
permalink: /research/Accessibility/
---
{% for project in site.data.research.Accessibility %}

<div class="row">


<!--<div class="col-12 col-md-5 clearfix">
  <img src="{{ site.url }}{{ site.baseurl }}/images/pubpic/{{ project.photo }}" class="img-fluid" width="100%" style="float: left" />
</div>-->

<div class="col-12 col-md-7 h-100">
  <h1>{{ project.title }}</h1>
  <h3>{{project.authors}}</h3>
  <h4>{{project.date}}</h4>
  
</div>

</div>

<hr class="sl-rule">

<div class="row">

<div class="col-12">
  <h2>Summary</h2>
  <h3>{{project.highlight}}</h3>
 <p>{{ project.description }}</p>
  
{% if project.number_papers != 0 %}   
 <h2>Papers</h2>
  {% if project.number_papers == 1 %}
  <li> {{ project.paper1 }} 
  {% endif %}

  {% if project.number_papers == 2 %}
  <li> {{ project.paper1 }} </li>
  <li> {{ project.paper2 }} </li>
  {% endif %}

  {% if project.number_papers == 3 %}
  <li> {{ project.paper1 }} </li>
  <li> {{ project.paper2 }} </li>
  <li> {{ project.paper3 }} </li>
  {% endif %}

  {% if project.number_papers == 4 %}
  <li> {{ project.paper1 }} </li>
  <li> {{ project.paper2 }} </li>
  <li> {{ project.paper3 }} </li>
  <li> {{ project.paper4 }} </li>
  {% endif %}

  {% if project.number_papers == 5 %}
  <li> {{ project.paper1 }} 
  <li> {{ project.paper2 }} 
  <li> {{ project.paper3 }} 
  <li> {{ project.paper4 }} 
  <li> {{ project.paper5 }} 
  {% endif %}
  {% endif %}
<br />

{% endfor %}


