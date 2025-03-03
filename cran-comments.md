## R CMD check results

❯ checking CRAN incoming feasibility ... [3s/19s] NOTE
  Maintainer: ‘Jacob Kastl <jacob.kastl@gmail.com>’
  
  New submission
  
  Version contains large components (0.0.0.9000)

❯ checking for future file timestamps ... NOTE
  unable to verify current time

0 errors ✔ | 0 warnings ✔ | 2 notes ✖

* This is a new release.
* The IEA website has recently started returning a 403 http status even though the site is fully accessible in every browser/OS combination we have tried. We validated that we're using the canonical website URLs and have checked them with https://httpstatus.io (which also shows that they return a 403 status, regardless if we use a trailing / or not and whether we use https or http, but does not point to any redirect).
