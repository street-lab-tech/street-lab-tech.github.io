---
layout: default
title: "News"
permalink: /allnews.html
---

# News

{% for article in site.data.news %}
## [{{ article.headline }}]({{ article.url }})
**Date:** {{ article.date }}

{{ article.description }}

---
{% endfor %}
