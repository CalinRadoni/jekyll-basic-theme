# frozen_string_literal: true

Gem::Specification.new do |spec|
    spec.name          = "jekyll-basic-theme"
    spec.version       = "0.6.0"
    spec.authors       = ["Calin Radoni"]
    spec.email         = ["CalinRadoni@users.noreply.github.com"]

    spec.summary       = "This is a skeleton theme. It is meant to be used as a basis for other themes."
    spec.homepage      = "https://github.com/CalinRadoni/jekyll-basic-theme"
    spec.license       = "MIT"

    spec.files = `git ls-files -z`.split("\x0").select do |f|
      f.match(%r!^(assets|_(includes|layouts|pages|posts|sass)/|(LICENSE|README|index)((\.(txt|md|html)|$)))!i)
    end

    # version are taken from https://pages.github.com/versions/
    # and were valid for github-pages version 204
    spec.add_runtime_dependency "jekyll", ">= 3.8", "< 5.0"
    spec.add_runtime_dependency "jekyll-paginate", "~> 1.1"
    spec.add_runtime_dependency "jekyll-seo-tag", "~> 2.6"

    spec.add_development_dependency "bundler"
  end
