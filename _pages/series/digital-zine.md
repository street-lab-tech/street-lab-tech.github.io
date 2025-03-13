---
layout: pdf
title: "Digital Zine Series"
description: "A curated collection of digital zines featuring essays, artwork, and innovative design."
date: 2025-02-15
thumbnail: "images/series/digital_zine.jpg"
permalink: series/digital-zine.html
pdf_files:
  - title: "Issue 1:"
    file: "/files/media/afterabortionzine.pdf"
  - title: "Issue 2:"
    file: "/files/media/afterabortionzine2.pdf"

---

# Digital Zine Series


{% for pdf in page.pdf_files %}
### {{ pdf.title }}

<div class="pdf-embed">
<iframe src="{{ pdf.file }}" 
        title="{{ pdf.title }} PDF document" 
        width="100%" height="600">
  Your browser does not support iframes. Please <a href="{{ pdf.file }}">download the PDF</a> to view it.
</iframe>
</div>

[Download {{ pdf.title }}]({{ pdf.file }})

{% endfor %}

[Back to Media Series](/media.html)