---
layout: pdf
title: "After Abortion Support"
description: "This zine is for people who want to help others getting abortions"
date: 2025-02-15
thumbnail: "images/series/afterabortionzine.jpg"
permalink: series/afterabortionzine.html
pdf_files:
  - title: "After Abortion Support"
    file: "/files/media/afterabortionzine.pdf"

---


{% for pdf in page.pdf_files %}
<div class="pdf-embed">
<iframe src="{{ pdf.file }}" 
        title="{{ pdf.title }} PDF document" 
        width="100%" height="600">
  Your browser does not support iframes. Please <a href="{{ pdf.file }}">download the PDF</a> to view it.
</iframe>
</div>

[Download {{ pdf.title }}]({{ pdf.file }})

{% endfor %}