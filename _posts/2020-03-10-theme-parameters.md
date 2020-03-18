---
layout: post
title: "Theme parameters"
description: "The parameters used by this theme"
date-modified: 2020-03-18
categories: [ "Configuration" ]
tags: [ "jekyll-basic-theme" ]
---

Short to none explanation of theme's parameters.

## Parameters SEO JSON-LD for posts and articles

* "headline": page.headline **or** page.title
* "description": page.description **or** *excluded*
* "image": page.image **or** "/assets/img/default-article.png"
* "datePublished": page.date **or** *the-date-from-post-name* **or** *excluded*
* "dateModified": page.date-modified **or** *excluded*
* "author": page.author **or** site.author-name
* "publisher.name": site.title
* "publisher.logo.url": site.logo

## Parameters used in header

* "title": page.title **or** site.title
* meta name="author": page.author **or** site.author-name
* meta name="description": page.description **or** site.description

### Open Graph parameters - pages

* meta property="og:title": page.title **or** site.title
* meta property="og:image": page.image **or** `/assets/img/default-article.png`
* meta property="og:description": page.description **or** *excluded*
* meta property="og:site_name": site.title

### Open Graph parameters - posts

* meta property="og:title": page.title **or** site.title
* meta property="og:image": page.image **or** `/assets/img/default-article.png`
* meta property="og:description": page.description **or** *excluded*
* meta property="og:site_name": site.title

* meta property="article:published_time": page.date **or** *excluded*
* meta property="article:modified_time": page.date-modified **or** *excluded*
* meta property="article:tag": page.tags **or** *excluded*
* meta property="profile:username": page.author **or** site.author-name

## Parameters used in footer

* page.date **or** site.copyright-text **or** *nothing*
* page.author **or** `[site.author-name](site.author-email)` **or** site.author-name
* social-links **or** *nothing*

## Parameters defined in _config.yml

### Site parameters

* title: "jekyll-basic-theme"
* tagline: "jekyll-basic-theme skeleton theme"
* description: "This is a skeleton theme. It is meant to be used as a basis for other themes."
* logo: "/assets/img/site-logo.png"
* url: "https://calinradoni.github.io/"

### Theme parameters

* author-name: "Calin Radoni"
* author-email: CalinRadoni@users.noreply.github.com
* copyright-text: "2020"
* date-format: "%F"
* skin: light
* social-links:

## Parameters defined in posts

* layout: post
* title: "Jekyll installation"
* headline: "Jekyll install in Debian 10"
* description: "An easy way to install Jekyll in Debian 10"
* image: "/assets/img/post-image.png"
* author: "Calin Radoni"
* date-modified: 2020-03-15
* excerpt_separator: `<!--more-->`
* categories: [ "System" ]
* tags: [ "Jekyll", "GitHub Pages" ]
