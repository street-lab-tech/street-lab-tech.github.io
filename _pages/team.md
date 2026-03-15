---
title: "STREET Lab - Team"
layout: gridlay
excerpt: "STREET Lab: Team members"
sitemap: false
permalink: /team/
---

# Team

**If you wish to join the team** [(see openings)]({{ '/vacancies' | relative_url }}) **!**

Jump to [PhD students](#phd-students), [master and bachelor students](#master-and-bachelor-students), [external researchers](#external-researchers), [collaborators](#collaborators), [alumni](#alumni).

## Director
<div class="row g-4" markdown="0">
  {% for member in site.data.team.director %}
    <div class="col-12 col-md-6">
      {% include team_card.html member=member %}
    </div>
  {% endfor %}
</div>

## PhD Students
<div class="row g-4" markdown="0">
  {% for member in site.data.team.phd_students %}
    <div class="col-12 col-md-6">
      {% include team_card.html member=member %}
    </div>
  {% endfor %}
</div>

## Master and Bachelor Students
<div class="row g-4" markdown="0">
  {% for member in site.data.team.students %}
    <div class="col-12 col-md-6">
      {% include team_card.html member=member %}
    </div>
  {% endfor %}
</div>

## External Researchers
<div class="row g-4" markdown="0">
  {% for member in site.data.team.external %}
    <div class="col-12 col-md-6">
      {% include team_card.html member=member %}
    </div>
  {% endfor %}
</div>

## Collaborators
<div class="row g-4" markdown="0">
  {% for member in site.data.team.collaborators %}
    <div class="col-12 col-md-6">
      {% include team_card.html member=member %}
    </div>
  {% endfor %}
</div>

## Alumni
<div class="row" markdown="0">
  <div class="col-12 col-md-8">
    <ul class="sl-alumni-list">
      {% for member in site.data.team.alumni %}
        <li>{{ member.name }}{% if member.position %}, <em>{{ member.position }}</em>{% endif %}</li>
      {% endfor %}
    </ul>
  </div>
</div>
