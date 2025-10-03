---
title: "STREET Lab - Team"
layout: gridlay
excerpt: "STREET Lab: Team members"
sitemap: false
permalink: /team/
---

# Team

 **If you wish to join the team** [(see openings)]({{ site.url }}{{ site.baseurl }}/vacancies) **!**


Jump to [PhD students](#phd-students), [master and bachelor students](#master-and-bachelor-students),  [External Researchers](#external-researchers),   [Collaborators](#collaborators),  [alumni](#alumni).

## Director
{% assign number_printed = 0 %}
{% for member in site.data.team.director %}

{% assign even_odd = number_printed | modulo: 2 %}

{% if even_odd == 0 %}
<div class="row">
{% endif %}

<div class="col-sm-6 clearfix">
<div class="row" style="margin-bottom:0px;  margin-right:0%">
  <img src="{{ site.url }}{{ site.baseurl }}/images/teampic/{{ member.photo }}" class="img-responsive" width="25%" style="float: left" />
  <h4>{{ member.name }}</h4>
  {{ member.info1 }} 
  <br>{{ member.info2 }}
  <i><br>email: <{{ member.email }}>
  <br>website: <{{ member.website }}></i>
  </div>

  <div class="row" style="margin-bottom:0px;  margin-right:0%">
  <ul style="overflow: hidden">

  {% if member.number_educ == 1 %}
  <li> {{ member.education1 }} </li>
  {% endif %}

  {% if member.number_educ == 2 %}
  <li> {{ member.education1 }} </li>
  <li> {{ member.education2 }} </li>
  {% endif %}

  {% if member.number_educ == 3 %}
  <li> {{ member.education1 }} </li>
  <li> {{ member.education2 }} </li>
  <li> {{ member.education3 }} </li>
  {% endif %}

  {% if member.number_educ == 4 %}
  <li> {{ member.education1 }} </li>
  <li> {{ member.education2 }} </li>
  <li> {{ member.education3 }} </li>
  <li> {{ member.education4 }} </li>
  {% endif %}

  {% if member.number_educ == 5 %}
  <li> {{ member.education1 }} </li>
  <li> {{ member.education2 }} </li>
  <li> {{ member.education3 }} </li>
  <li> {{ member.education4 }} </li>
  <li> {{ member.education5 }} </li>
  {% endif %}

  </ul>
  </div>
</div>

{% assign number_printed = number_printed | plus: 1 %}

{% if even_odd == 1 %}
</div>
{% endif %}

{% endfor %}

{% assign even_odd = number_printed | modulo: 2 %}
{% if even_odd == 1 %}
</div>
{% endif %}


## Phd Students
{% assign number_printed = 0 %}
{% for member in site.data.team.phd_students %}

{% assign even_odd = number_printed | modulo: 2 %}

{% if even_odd == 0 %}
<div class="row">
{% endif %}

<div class="col-sm-6 clearfix">
  <div class="row" style="margin-bottom:0px;  margin-right:0%">
  {% if member.photo != null %}   
  <img src="{{ site.url }}{{ site.baseurl }}/images/teampic/{{ member.photo }}" class="img-responsive" width="25%" style="float: left" alt="{{ member.alt_text }}" />
  {% endif %} 
  <h4>{{ member.name }}</h4>
  <i>{{ member.info }}</i>
  <br>Topics: {{ member.topics }} 
  <i><br>email: <{{ member.email }}>
  <br>website: <{{ member.website }}></i>
  </div>
  <div class="row" style="margin-bottom:0px; margin-right:0%">
  <ul style="overflow: hidden">

  {% if member.number_educ == 1 %}
  <li> {{ member.education1 }} </li>
  {% endif %}

  {% if member.number_educ == 2 %}
  <li> {{ member.education1 }} </li>
  <li> {{ member.education2 }} </li>
  {% endif %}

  {% if member.number_educ == 3 %}
  <li> {{ member.education1 }} </li>
  <li> {{ member.education2 }} </li>
  <li> {{ member.education3 }} </li>
  {% endif %}

  {% if member.number_educ == 4 %}
  <li> {{ member.education1 }} </li>
  <li> {{ member.education2 }} </li>
  <li> {{ member.education3 }} </li>
  <li> {{ member.education4 }} </li>
  {% endif %}

  {% if member.number_educ == 5 %}
  <li> {{ member.education1 }} </li>
  <li> {{ member.education2 }} </li>
  <li> {{ member.education3 }} </li>
  <li> {{ member.education4 }} </li>
  <li> {{ member.education5 }} </li>
  {% endif %}

  {% if member.number_proj == 1 %}
  <h5><strong>Projects</strong></h5>
  <p><strong><a href="{{ member.link_project1.url }}">{{ member.link_project1.display }}</a></strong></p>
  {% endif %}

  {% if member.number_proj == 2 %}
  <h5><strong>Projects</strong></h5>
  <p><strong><a href="{{ member.link_project1.url }}">{{ member.link_project1.display }}</a></strong></p>
  <p><strong><a href="{{ member.link_project2.url }}">{{ member.link_project2.display }}</a></strong></p>
  {% endif %}

  {% if member.number_proj == 3 %}
  <h5><strong>Projects</strong></h5>
  <p><strong><a href="{{ member.link_project1.url }}">{{ member.link_project1.display }}</a></strong></p>
  <p><strong><a href="{{ member.link_project2.url }}">{{ member.link_project2.display }}</a></strong></p>
  <p><strong><a href="{{ member.link_project3.url }}">{{ member.link_project3.display }}</a></strong></p>
  {% endif %}

  </ul>
  </div>
</div>

{% assign number_printed = number_printed | plus: 1 %}

{% if even_odd == 1 %}
</div>
{% endif %}

{% endfor %}

{% assign even_odd = number_printed | modulo: 2 %}
{% if even_odd == 1 %}
</div>
{% endif %}

## Master and Bachelor Students
{% assign number_printed = 0 %}
{% for member in site.data.team.students %}

{% assign even_odd = number_printed | modulo: 2 %}

{% if even_odd == 0 %}
<div class="row">
{% endif %}


<div class="col-sm-6 clearfix">
  <div class="row" style="margin-bottom:0px;  margin-right:0%">
  {% if member.photo != null %}   
  <img src="{{ site.url }}{{ site.baseurl }}/images/teampic/{{ member.photo }}" class="img-responsive" width="25%" style="float: left" />
  {% endif %} 
   <h4>{{ member.name }}</h4>
  <i>{{ member.info }}</i>
  <br>Topics: {{ member.topics }} 
  <i><br>email: <{{ member.email }}>
  </div>

  <div class="row" style="margin-bottom:0px;  margin-right:0%">
  <ul style="overflow: hidden">

  {% if member.number_educ == 1 %}
  <li> {{ member.education1 }} </li>
  {% endif %}

  {% if member.number_educ == 2 %}
  <li> {{ member.education1 }} </li>
  <li> {{ member.education2 }} </li>
  {% endif %}

  {% if member.number_educ == 3 %}
  <li> {{ member.education1 }} </li>
  <li> {{ member.education2 }} </li>
  <li> {{ member.education3 }} </li>
  {% endif %}

  {% if member.number_educ == 4 %}
  <li> {{ member.education1 }} </li>
  <li> {{ member.education2 }} </li>
  <li> {{ member.education3 }} </li>
  <li> {{ member.education4 }} </li>
  {% endif %}

  {% if member.number_educ == 5 %}
  <li> {{ member.education1 }} </li>
  <li> {{ member.education2 }} </li>
  <li> {{ member.education3 }} </li>
  <li> {{ member.education4 }} </li>
  <li> {{ member.education5 }} </li>
  {% endif %}

  {% if member.number_proj == 1 %}
  <h5><strong>Projects</strong></h5>
  <p><strong><a href="{{ member.link_project1.url }}">{{ member.link_project1.display }}</a></strong></p>
  {% endif %}

  {% if member.number_proj == 2 %}
   <h5><strong>Projects</strong></h5>
  <p><strong><a href="{{ member.link_project1.url }}">{{ member.link_project1.display }}</a></strong></p>
  <p><strong><a href="{{ member.link_project2.url }}">{{ member.link_project2.display }}</a></strong></p>
  {% endif %}

  {% if member.number_proj == 3 %}
   <h5><strong>Projects</strong></h5>
  <p><strong><a href="{{ member.link_project1.url }}">{{ member.link_project1.display }}</a></strong></p>
  <p><strong><a href="{{ member.link_project2.url }}">{{ member.link_project2.display }}</a></strong></p>
  <p><strong><a href="{{ member.link_project3.url }}">{{ member.link_project3.display }}</a></strong></p>
  {% endif %}

  </ul>
  </div>
</div>

{% assign number_printed = number_printed | plus: 1 %}

{% if even_odd == 1 %}
</div>
{% endif %}

{% endfor %}

{% assign even_odd = number_printed | modulo: 2 %}
{% if even_odd == 1 %}
</div>
{% endif %}

## External Researchers
{% assign number_printed = 0 %}
{% for member in site.data.team.external %}

{% assign even_odd = number_printed | modulo: 2 %}

{% if even_odd == 0 %}
<div class="row">
{% endif %}

<div class="col-sm-6 clearfix">
<div class="row" style="margin-bottom:0px;  margin-right:0%">
  {% if member.photo != null %}   
  <img src="{{ site.url }}{{ site.baseurl }}/images/teampic/{{ member.photo }}" class="img-responsive" width="25%" style="float: left" />
  {% endif %} 
  <h4>{{ member.name }}</h4>
  <i>{{ member.info }}</i>
  {% if member.email != null %}   
  <i>email: <{{ member.email }}></i>
  {% endif %} 
  </div>
 
  <div class="row" style="margin-bottom:0px;  margin-right:0%">
  <ul style="overflow: hidden">

  {% if member.number_educ == 1 %}
  <li> {{ member.education1 }} </li>
  {% endif %}

  {% if member.number_educ == 2 %}
  <li> {{ member.education1 }} </li>
  <li> {{ member.education2 }} </li>
  {% endif %}

  {% if member.number_educ == 3 %}
  <li> {{ member.education1 }} </li>
  <li> {{ member.education2 }} </li>
  <li> {{ member.education3 }} </li>
  {% endif %}

  {% if member.number_educ == 4 %}
  <li> {{ member.education1 }} </li>
  <li> {{ member.education2 }} </li>
  <li> {{ member.education3 }} </li>
  <li> {{ member.education4 }} </li>
  {% endif %}

  <h5><strong>Projects</strong></h5>
  {% if member.number_proj == 1 %}
  <p><strong><a href="{{ member.link_project1.url }}">{{ member.link_project1.display }}</a></strong></p>
  {% endif %}

  {% if member.number_proj == 2 %}
  <p><strong><a href="{{ member.link_project1.url }}">{{ member.link_project1.display }}</a></strong></p>
  <p><strong><a href="{{ member.link_project2.url }}">{{ member.link_project2.display }}</a></strong></p>
  {% endif %}

  {% if member.number_proj == 3 %}
  <p><strong><a href="{{ member.link_project1.url }}">{{ member.link_project1.display }}</a></strong></p>
  <p><strong><a href="{{ member.link_project2.url }}">{{ member.link_project2.display }}</a></strong></p>
  <p><strong><a href="{{ member.link_project3.url }}">{{ member.link_project3.display }}</a></strong></p>
  {% endif %}

  </ul>
  </div>
</div>

{% assign number_printed = number_printed | plus: 1 %}

{% if even_odd == 1 %}
</div>
{% endif %}

{% endfor %}

{% assign even_odd = number_printed | modulo: 2 %}
{% if even_odd == 1 %}
</div>
{% endif %}

## Collaborators
{% assign number_printed = 0 %}
{% for member in site.data.team.collaborators %}

{% assign even_odd = number_printed | modulo: 2 %}

{% if even_odd == 0 %}
<div class="row">
{% endif %}

<div class="col-sm-6 clearfix">
<div class="row" style="margin-bottom:0px;  margin-right:0%">
  {% if member.photo != null %}   
  <img src="{{ site.url }}{{ site.baseurl }}/images/teampic/{{ member.photo }}" class="img-responsive" width="25%" style="float: left" />
  {% endif %} 
  <h4>{{ member.name }}</h4>
  <i>{{ member.info }}</i>
  {% if member.email != null %}   
  <i>email: <{{ member.email }}></i>
  {% endif %} 
  </div>
 
  <div class="row" style="margin-bottom:0px;  margin-right:0%">
  <ul style="overflow: hidden">

  {% if member.number_educ == 1 %}
  <li> {{ member.education1 }} </li>
  {% endif %}

  {% if member.number_educ == 2 %}
  <li> {{ member.education1 }} </li>
  <li> {{ member.education2 }} </li>
  {% endif %}

  {% if member.number_educ == 3 %}
  <li> {{ member.education1 }} </li>
  <li> {{ member.education2 }} </li>
  <li> {{ member.education3 }} </li>
  {% endif %}

  {% if member.number_educ == 4 %}
  <li> {{ member.education1 }} </li>
  <li> {{ member.education2 }} </li>
  <li> {{ member.education3 }} </li>
  <li> {{ member.education4 }} </li>
  {% endif %}

  <h5><strong>Projects</strong></h5>
  {% if member.number_proj == 1 %}
  <p><strong><a href="{{ member.link_project1.url }}">{{ member.link_project1.display }}</a></strong></p>
  {% endif %}

  {% if member.number_proj == 2 %}
  <p><strong><a href="{{ member.link_project1.url }}">{{ member.link_project1.display }}</a></strong></p>
  <p><strong><a href="{{ member.link_project2.url }}">{{ member.link_project2.display }}</a></strong></p>
  {% endif %}

  {% if member.number_proj == 3 %}
  <p><strong><a href="{{ member.link_project1.url }}">{{ member.link_project1.display }}</a></strong></p>
  <p><strong><a href="{{ member.link_project2.url }}">{{ member.link_project2.display }}</a></strong></p>
  <p><strong><a href="{{ member.link_project3.url }}">{{ member.link_project3.display }}</a></strong></p>
  {% endif %}

  </ul>
  </div>
</div>

{% assign number_printed = number_printed | plus: 1 %}

{% if even_odd == 1 %}
</div>
{% endif %}

{% endfor %}

{% assign even_odd = number_printed | modulo: 2 %}
{% if even_odd == 1 %}
</div>
{% endif %}


## Alumni

<!-- {% assign number_printed = 0 %}
{% for member in site.data.alumni_members %}

{% assign even_odd = number_printed | modulo: 2 %}

{% if even_odd == 0 %}
<div class="row">
{% endif %}

<div class="col-sm-6 clearfix">
  <img src="{{ site.url }}{{ site.baseurl }}/images/teampic/{{ member.photo }}" class="img-responsive" width="25%" style="float: left" />
  <h4>{{ member.name }}</h4>
  <i>{{ member.duration }} <br> Role: {{ member.info }}</i>
  <ul style="overflow: hidden">

  </ul>
</div>

{% assign number_printed = number_printed | plus: 1 %}

{% if even_odd == 1 %}
</div>
{% endif %}

{% endfor %}

{% assign even_odd = number_printed | modulo: 2 %}
{% if even_odd == 1 %}
</div>
{% endif %} -->

<!-- ## Former visitors, BSc/ MSc students -->
<div class="row">

<div class="col-sm-4 clearfix">
{% for member in site.data.team.alumni %}
{{ member.name }}
{% endfor %}
</div>

<!-- <div class="col-sm-4 clearfix">
<h4>Master students</h4>
{% for member in site.data.alumni_msc %}
{{ member.name }}
{% endfor %}
</div>

<div class="col-sm-4 clearfix">
<h4>Bachelor Students</h4>
{% for member in site.data.alumni_bsc %}
{{ member.name }}
{% endfor %}
</div> -->

</div>