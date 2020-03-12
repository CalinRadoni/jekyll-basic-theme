---
layout: page
title: About
permalink: /about/
---

This repository was built in a few steps outlined below.

### Initialization

In an **empty** directory run this script:

```sh
#!/bin/bash
set -e

THEME_NAME="jekyll-basic-theme"

bundle init
bundle config set path 'vendor/bundle'
bundle add github-pages --group=jekyll_plugins

bundle exec jekyll new-theme $THEME_NAME

mkdir -p $THEME_NAME/_posts
```

The `jekyll-basic-theme` was taken and used as the theme home.

### gemspec

Change *theme-name*`.gemspec` to add additional files and directories:

```ruby
spec.files = `git ls-files -z`.split("\x0").select do |f|
  f.match(%r!^(assets|_(includes|layouts|pages|posts|sass)/|(LICENSE|README|index)((\.(txt|md|html)|$)))!i)
end
```

and set to set only one dependency: `spec.add_runtime_dependency "github-pages"`

### Helper files

These `index.md`, `about.md` and `404.html` files are just for theme testing and basic developing.

### Basic files

Add and change the basic files

* `_includes/footer.html` - the footer for all pages and posts
* `_layouts/default.html` - layouts are derived from this one
* `_layouts/page.html` - layout for pages
* `_layouts/post.html` - layout for posts
* `_layouts/home.html` - layout for home page
* `_layouts/categories.html` - layout for the `categories.html` page
* `_layouts/tags.html` - layout for the `tags.html` page
* `_pages/` - this contains some default pages
* `_posts/` - test posts
* `_sass/` - these define the CSS styles and are included by `assets/css/style.scss`
* `assets/css/style.scss` - this will be compiled in `assets/css/style.css`
* `_config.yml` - to define the options for site, theme and Jekyll

**Note:** This theme builds the `README.md`. To be ignored by Jekyll add it to the `exclude` section
    of the `_config.yml` file and remove the front matter (`---` at the top) from it.
