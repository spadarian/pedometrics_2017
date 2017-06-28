---
title       : DSM online services
subtitle    : From the soil to the cloud
author      : José Padarian, Alex McBratney, Budiman Minasny
job         : University of Sydney
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
#hitheme     : tomorrow      #
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
biglogo     : usyd_logo_black.png
logo        : usyd_logo_big_black.png
last_message: Gracias!!!
github:
  user: spadarian
  repo: pedometrics_2017
license: by-sa

--- &segue .orange .nobackground

## Background

---

## Motivation

* DSM reaching a "young adult" state
  * "Mature"
  * "Dynamic"
* DSM implementation is not trivial
  * Large extents and/or high resolution
* Make DSM more accessible
  * Infrastructure

*** =pnotes

* BLA

---

## Not a new idea

* INTAMAP (Pebesma _et al._ 2009)

  Interpolation web service

<img src="assets/img/intamap.jpg" width="250" style="right:5%;top:7%;position:absolute;">


* SIS+ (Heuvelink _et al._ 2010)

  Exploring the idea of generating maps "on-the-fly"

* Other disciplines
  * AquaMaps
  * Lifemapper
  * Biodiversity & Climate Change Virtual Laboratory

--- .nobackground

## Back in 2013... Google Earth Engine

<img src="assets/img/google-products.png" width="700" class='centered'>

--- .nobackground

## Back in 2015...

<img src="assets/img/gee_paper.png" width="800" class='centered'>

<!-- ---

## Some features

* Access to over 40 years of Satellite Imagery (with daily updates)
* Algorithms to analyse that data
* Google's computer clusters to analyse the data at scale
* A web-based tool for interactive data exploration -->

--- &segue .orange .nobackground

## DSM workflow
### In the cloud

<!-- ---

## User expectations

* Easy to use
* Fast

<br>

<p class='centered'><strong>Try to maintain the flow</strong></p>

<br>

## Can we deliver?

<br>

<p class='centered'><strong>Sometimes... but we try our best</strong></p> -->

<!-- ---

## Process soil information

* Gathering data
* Data cleansing
* Pre-processing (splines)

### EDA

* Transformations
* Dimensionality reduction

<br>

<p class='centered'><strong>Hard to automatise but it can be facilitated by a platform</strong></p> -->

---

## Compile covariates

* DSM depends on environmental covariates (_scorpan_)
* Usually available as __raster images__

<br>

<!-- <p class='centered'><strong>Big challenge in terms of disk space</strong></p> -->

<!-- <br> -->
### Challenges

* Many datasets
* Storage
* Manage resolution
* Extract data at specific location

<img src="assets/img/pyramid.png" width="250" style="right:15%;top:55%;position:absolute;">

---

## Google Earth Engine example

<img src="assets/img/covariates.png" class='centered' width="90%" style='margin-top:50px;margin-bottom:50px'>

\> 200 public datasets  
\> 4000 new images every day  
\> 5 million images  
\> 5 petabytes of data

*** =references

Source: GEE training materials

<!-- ---

## Other alternatives

* Amazon Web Services
* Google Cloud Storage
* Institutional repositories
  *  National Computational Infrastructure (Australia)
  * Others?

<br> -->

<!-- <p class='centered'><strong>Usually not stored as pyramid (original images)</strong></p> -->

<!-- ---

## Extract data from covariates

* Match point observations with tiles
* Decide which resolution to use

<br>

<p class='centered'><strong>Pyramid is very important</strong></p>

<br>

### "Smart" re-sampling

* Re-sample the nearest pre-computed resolution -->

---

## Model training

* Google EE has limited number of algorithms available
  * Tree-like (CART, Random Forest)
  * Perceptron
  * Support Vector Machine
  * Others
* We have been testing:
  * R (Cubist, rpart, MLR)
  * Python (scikit-learn NN)

<img src="assets/img/cart.png" style="right:140px;top:47%;position:absolute;">

---

## Generate map

This is probably the most critical step (time)

* Infrastructure dependent

<!-- * The prediction is made at the viewport
  * It depends on the extent
  * It depends on the zoom level (resolution) -->

<br>
<br>
<br>

<p class='centered'><strong>Tiling is very important (parallel!)</strong></p>

--- bg:#FFF .nobackground

## Tiling
<img src="assets/img/how_1.png" width="75%">

--- bg:#FFF .nobackground

## Tiling
<img src="assets/img/how_2.png" width="75%">

--- bg:#FFF .nobackground

## Tiling
<img src="assets/img/how_3.png" width="75%">

--- bg:#FFF .nobackground

## Tiling
<img src="assets/img/how_4.png" width="75%">

--- bg:#FFF .nobackground

## Tiling
<img src="assets/img/how_5.png" width="75%">

--- bg:#FFF .nobackground

## Tiling
<img src="assets/img/how_6.png" width="75%">

--- bg:#FFF .nobackground

## Tiling
<img src="assets/img/how_7.png" width="75%">

--- bg:#FFF .nobackground

## Tiling
<img src="assets/img/how_8.png" width="75%">

---

## Uncertainty assessment

* Highly recommended (mandatory?)
* Time consuming (many iterations)

### Methods

* Bootstrapping
* Fuzzy-k means with extragrades

<img src="assets/img/curve.png" style="width:40%;right:5%;top:40%;position:absolute;">

---

## Sharing

There are multiple alternatives:

* Raster file (potentially big files)
* Web map
* Just the model (on-the-fly)

<br>

<div style="margin-left:auto;margin-right:auto;display:table">
<img src="assets/img/google_drive_logo.png" style="height:125px;float:left;margin: 0 20px;">
<img src="assets/img/google_cloud_storage_logo.png" style="height:100px;float:left;margin: 0 20px;margin-top:15px">
<img src="assets/img/google_gee_logo.png" style="height:100px;float:left;margin: 0 20px;margin-top:5px">
</div>

--- &segue .orange .nobackground

## Our platform
### `https://mapping.soil.properties`

--- .nobackground .full_screen

<img src="assets/img/platform.png" width="100%" class='centered'>

--- .nobackground .full_screen

<img src="assets/img/platform1.png" width="100%" class='centered'>

--- .nobackground .full_screen

<img src="assets/img/platform1.png" width="100%" class='centered'>
<img src="assets/img/csv.png" width="50%" style="top:10%;right:26%;position:absolute" class='centered'>

--- .nobackground .full_screen

<img src="assets/img/platform2.png" width="100%" class='centered'>

--- .nobackground .full_screen

<img src="assets/img/platform3.png" width="100%" class='centered'>

--- .nobackground .full_screen

<img src="assets/img/platform4.png" width="100%" class='centered'>

--- .nobackground .full_screen

<img src="assets/img/platform5.png" width="100%" class='centered'>

--- .nobackground .full_screen

<img src="assets/img/platform6.png" width="100%" class='centered'>

--- &segue .orange .nobackground

## Demo

--- .nobackground .full_screen

<script>
var play_videos = function() {
    // var list = document.getElementsByTagName('video');
    var list = $('slide.current').find('video')
    for (var i = 0; i < list.length; i++) {
        if(list[i].paused) {
            list[i].play();
        } else {
            list[i].pause();
        }
    };
};

</script>

<video style="width: 42%; float:left" onclick='play_videos()'>
  <source src="assets/video/chile_final.mp4" type="video/mp4">
Your browser does not support the video tag.
</video>

<video style="width: 42%; float:right" onclick='play_videos()'>
  <source src="assets/video/us_final.mp4" type="video/mp4">
Your browser does not support the video tag.
</video>
<br>
<video style="width: 42%; float:left; margin-top:10px" onclick='play_videos()'>
  <source src="assets/video/world_final.mp4" type="video/mp4">
Your browser does not support the video tag.
</video>

<video style="width: 42%; float:right; margin-top:10px" onclick='play_videos()'>
  <source src="assets/video/uncertainty_final.mp4" type="video/mp4">
Your browser does not support the video tag.
</video>

<!-- ---

## Features

* Access large catalogue of covariates (GEE)
* Machine learning algorithms (CART, RF, MLR)
* Generation of maps on-the-fly
* Private
  * EDA client-side
  * No observations stored in the server (hash) -->

<!-- ---

## Future work

* Uncertainty assessment (Fuzzy-k means/modes)
* Equal-area splines (standard depths)
* Full implementation of R and python models
* Import/Export maps parameters and data (sharing)
* Automatic quality assessment?
* Privacy and collaborative modelling
* Replace GEE? -->

---

## Final remarks

<br>

<p class='centered'><strong>Considerably decreases iteration time in map production</strong></p>

<br>

* Who should us it?
  * Individuals
  * Institutions
  * Consortia
