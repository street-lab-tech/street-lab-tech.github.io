---
title: "STREET Lab - Technology Use in Social Movements"
layout: project
excerpt: "STREET Lab: Team projects"
sitemap: false
permalink: /research/SocialMovements/
---
{% for project in site.data.research.SocialMovements %}

<div class="row" style="display: flex;">


<!--<div class="col-sm-5 clearfix" >
  <img src="{{ site.url }}{{ site.baseurl }}/images/pubpic/{{ project.photo }}" class="img-reponsive" width="100%" style="float: left" />
</div>-->

<div class="h-100 col-sm-12">
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
  {{project.highlight}}
  <h3>Description</h3>
 <p>{{ project.description }}</p>


<hr style="margin-top: 0.1rem;
  margin-bottom: 0.1rem;
  border: 0;
  border-top: 2px solid rgba(0, 0, 0, 0.2);"/>

{% if project.subprojects != 0 %}  

  <h3>Subprojects:</h3>

  {% if project.subprojects == 1 %}
  <ul><a href="{{ project.subprojects1.url}}"> {{ project.subprojects1.name}}</a></ul>
  {% endif %}

  {% if project.subprojects == 2 %}
  <ul><a href="{{ project.subprojects1.url}}"> {{ project.subprojects1.name}}</a></ul>
  <ul><a href="{{ project.subprojects2.url}}"> {{ project.subprojects2.name}}</a></ul>
  {% endif %}

  {% if project.subprojects == 3 %}
  <ul><a href="{{ project.subprojects1.url}}"> {{ project.subprojects1.name}}</a></ul>
  <ul><a href="{{ project.subprojects2.url}}"> {{ project.subprojects2.name}}</a></ul>
  <ul><a href="{{ project.subprojects3.url}}"> {{ project.subprojects3.name}}</a></ul>
  {% endif %}

  {% if project.subprojects == 4 %}
  <ul><a href="{{ project.subprojects1.url}}"> {{ project.subprojects1.name}}</a></ul>
  <ul><a href="{{ project.subprojects2.url}}"> {{ project.subprojects2.name}}</a></ul>
  <ul><a href="{{ project.subprojects3.url}}"> {{ project.subprojects3.name}}</a></ul>
  <ul><a href="{{ project.subprojects4.url}}"> {{ project.subprojects4.name}}</a></ul>
  {% endif %}

  {% if project.subprojects == 5 %}
  <ul><a href="{{ project.subprojects1.url}}"> {{ project.subprojects1.name}}</a></ul>
  <ul><a href="{{ project.subprojects2.url}}"> {{ project.subprojects2.name}}</a></ul>
  <ul><a href="{{ project.subprojects3.url}}"> {{ project.subprojects3.name}}</a></ul>
  <ul><a href="{{ project.subprojects4.url}}"> {{ project.subprojects4.name}}</a></ul>
  <ul><a href="{{ project.subprojects5.url}}"> {{ project.subprojects5.name}}</a></ul>
  {% endif %}

  {% endif %}


<hr style="margin-top: 0.1rem;
  margin-bottom: 0.1rem;
  border: 0;
  border-top: 2px solid rgba(0, 0, 0, 0.2);"/>

  
{% if project.number_papers != 0 %}   
 <h3>Papers</h3>
  {% if project.number_papers == 1 %}
  <ul> {{ project.paper1 }} </ul>
  {% endif %}

  {% if project.number_papers == 2 %}
  <ul> {{ project.paper1 }} </ul>
  <ul> {{ project.paper2 }} </ul>
  {% endif %}

  {% if project.number_papers == 3 %}
  <ul> {{ project.paper1 }} </ul>
  <ul> {{ project.paper2 }} </ul>
  <ul> {{ project.paper3 }} </ul>
  {% endif %}

  {% if project.number_papers == 4 %}
  <ul> {{ project.paper1 }} </ul>
  <ul> {{ project.paper2 }} </ul>
  <ul> {{ project.paper3 }} </ul>
  <ul> {{ project.paper4 }} </ul>
  {% endif %}

  {% if project.number_papers == 5 %}
  <ul> {{ project.paper1 }} 
  <ul> {{ project.paper2 }} 
  <ul> {{ project.paper3 }} 
  <ul> {{ project.paper4 }} 
  <ul> {{ project.paper5 }} 
  {% endif %}
  {% endif %}
<br />

{% endfor %}