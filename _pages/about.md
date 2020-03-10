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
    f.match(%r!^(assets|_(includes|layouts|posts|sass)/|(LICENSE|README|index|about|404)((\.(txt|md|html)|$)))!i)
end
```

and set to set only one dependency: `spec.add_runtime_dependency "github-pages"`

### Helper files

These `index.md`, `about.md` and `404.html` files are just for theme testing and basic developing.

### Basic files

Add and change the basic files

* `default.html` - layouts are derived from this one
* `page.html`
* `post.html`
* `home.html`
* `_includes/footer.html`
* `assets/css/style.scss`
