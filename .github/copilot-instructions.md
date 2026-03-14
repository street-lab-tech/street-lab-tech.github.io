\# Repository instructions



\- This is a Jekyll site. Preserve existing Liquid logic, permalinks, routes, and content unless markup changes are required for compatibility.

\- Do not redesign the site. Keep visual appearance as close as possible to the current production site.

\- Load Bootstrap from CDN rather than vendoring Bootstrap source into the repository.

\- Do not edit Bootstrap core files. Keep custom styling in local Sass partials only.

\- Preserve the current 768px layout behavior when migrating Bootstrap 3 grid classes; convert layout-defining `col-sm-\*` usages to `col-md-\*` where needed.

\- Make changes in small, reviewable phases and stop after each phase for review.

