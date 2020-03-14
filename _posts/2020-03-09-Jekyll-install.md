---
layout: post
title: Jekyll installation
excerpt_separator: <!--more-->
categories: [ "System" ]
tags: [ "Jekyll", "GitHub Pages" ]
author: "Calin Radoni, Radoni Calin"
---

Jekyll installation in Debian 10.<!--more--> Here follows the simple procedure used by me.

{% comment %}
This is just a useless comment.
{% endcomment %}

## Installation

Jekyll was installed with:

```sh
#!/bin/bash
set -e

sudo apt update && sudo apt install -y build-essential ruby ruby-dev

mkdir ~/gems
export GEM_HOME=$HOME/gems
export PATH=$HOME/gems/bin:$PATH
echo >> ~/.bashrc
echo "# Ruby gems paths" >> ~/.bashrc
echo 'export GEM_HOME="$HOME/gems"' >> ~/.bashrc
echo 'export PATH="$HOME/gems/bin:$PATH"' >> ~/.bashrc

gem install jekyll bundler
```
