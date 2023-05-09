---
title: "STREET Lab - Publications"
layout: gridlay
excerpt: "STREET Lab -- Publications."
sitemap: false
permalink: /publications/
---


<!-- ## Group highlights

**At the end of this page, you can find the [full list of publications and patents](#full-list-of-publications). All papers are also available on [arXiv] (include link).**

{% assign number_printed = 0 %}
{% for publi in site.data.publist %}

{% assign even_odd = number_printed | modulo: 2 %}
{% if publi.highlight == 1 %}

{% if even_odd == 0 %}
<div class="row">
{% endif %}

<div class="col-sm-6 clearfix">
 <div class="well">
  <pubtit>{{ publi.title }}</pubtit>
  <img src="{{ site.url }}{{ site.baseurl }}/images/pubpic/{{ publi.image }}" class="img-responsive" width="33%" style="float: left" />
  <p>{{ publi.description }}</p>
  <p><em>{{ publi.authors }}</em></p>
  <p><strong><a href="{{ publi.link.url }}">{{ publi.link.display }}</a></strong></p>
  <p class="text-danger"><strong> {{ publi.news1 }}</strong></p>
  <p> {{ publi.news2 }}</p>
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

<p> &nbsp; </p> -->

## Peer Reviewed Publications

{% for publi in site.data.publist %}

  {{ publi.title }} <a href="{{ publi.link.url }}">{{ publi.link.display }}</a> <br />
  <em>{{ publi.authors }} </em><br />{{ publi.venue }}<br />

{% endfor %}

## Short Papers

{% for publi in site.data.nonpublist %}

  {{ publi.title }} <a href="{{ publi.link.url }}">{{ publi.link.display }}</a> <br />
  <em>{{ publi.authors }} </em><br />{{ publi.venue }}<br />

{% endfor %}