North Atlantic Storm Tracks
========================================================
author: Refik Türkeli
date: 3 July 2017
autosize: true



Introduction
========================================================

The data used is a subset of the NOAA Atlantic hurricane database best track data, http://www.nhc.noaa.gov/data/#hurdat. The data includes the positions and attributes of 198 tropical storms, measured every six hours during the lifetime of a storm.


```r
head(storms)
```

```
# A tibble: 6 x 13
   name  year month   day  hour   lat  long              status category
  <chr> <dbl> <dbl> <int> <dbl> <dbl> <dbl>               <chr>    <ord>
1   Amy  1975     6    27     0  27.5 -79.0 tropical depression       -1
2   Amy  1975     6    27     6  28.5 -79.0 tropical depression       -1
3   Amy  1975     6    27    12  29.5 -79.0 tropical depression       -1
4   Amy  1975     6    27    18  30.5 -79.0 tropical depression       -1
5   Amy  1975     6    28     0  31.5 -78.8 tropical depression       -1
6   Amy  1975     6    28     6  32.4 -78.7 tropical depression       -1
# ... with 4 more variables: wind <int>, pressure <int>,
#   ts_diameter <dbl>, hu_diameter <dbl>
```

Data Product
========================================================

Shiny application for exploring the data can be found here: 

- [https://refik.shinyapps.io/dpw4/](https://refik.shinyapps.io/dpw4/)

Source code for the application and these slides are also here:

- []()
