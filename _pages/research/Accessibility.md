---
title: "STREET Lab - Accessibiiity"
layout: project
excerpt: "STREET Lab: Team projects"
sitemap: false
permalink: /research/Accessibility/
---
{% for project in site.data.research.Accessibility %}

<div class="row" style="display: flex;">


<!--<div class="col-sm-5 clearfix" >
  <img src="{{ site.url }}{{ site.baseurl }}/images/pubpic/{{ project.photo }}" class="img-reponsive" width="100%" style="float: left" />
</div>-->

<div class="h-100 col-sm-7">
  <h1>{{ project.title }}</h1>
  <h3>{{project.authors}}</h3>
  <h4>{{project.date}}</h4>
  
</div>

</div>

<hr style="margin-top: 0.1rem;
  margin-bottom: 0.1rem;
  border: 0;
  border-top: 2px solid rgba(0, 0, 0, 0.2);"/>

<div class="row" style="display: flex;">

<div class=" col-sm-12">
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


