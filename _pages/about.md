---
layout: page
title: About
description: About jekyll-basic-theme
date: 2020-03-15
permalink: /about/
---

This repository was built in a few steps outlined below.

### Theme creation

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

The `jekyll-basic-theme` directory was taken and used as the theme home.

### gemspec

Change *theme-name*`.gemspec` to add additional files and directories:

```ruby
spec.files = `git ls-files -z`.split("\x0").select do |f|
  f.match(%r!^(assets|_(includes|layouts|pages|posts|sass)/|(LICENSE|README|index)((\.(txt|md|html)|$)))!i)
end
```

and set runtime and development dependencies.

### Helper files

* `index.html`, `about.md` and `404.md` are example files for theme testing and development
* `tags.md` and `categories.md` are example files
* the files in `_sass` directory should define the style. Those should remain almost empty in this theme
* the files in `_posts` directory are for theme testing and development
* the images from `assets` directory are for theme testing and development

**Note:** This theme builds the `README.md` file. To be ignored by Jekyll add it to the `exclude` section
    of the `_config.yml` file and remove the front matter (`---` at the top) from it.
