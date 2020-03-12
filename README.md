---
---

# jekyll-basic-theme

This is a skeleton theme. It is meant to be used as a basis for other themes.

## Development and testing

Download and install locally the required gems by executing in theme's root directory:

```sh
bundle config --local set path 'vendor/bundle'
bundle install
```

This theme is setup just like a normal Jekyll site! To test it, run `bundle exec jekyll serve` and open your browser at [http://localhost:4000](http://localhost:4000). This starts a Jekyll server using this theme.

Add pages, documents, data, etc. like normal to test your theme's contents. As you make modifications to your theme and to your content, your site will regenerate and you should see the changes in the browser after a refresh, just like normal.

When the theme is released, only the files tracked with Git from:

* `_includes`
* `_layouts`
* `_pages`
* `_posts`
* `_sass`
* `assets`

directories and these files from root directory:

* `LICENSE.txt`
* `README.md`
* `index.md`

will be bundled.

To add a another directory to your theme-gem, please edit the regexp in `jekyll-basic-theme.gemspec` accordingly.

## License

The theme is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
