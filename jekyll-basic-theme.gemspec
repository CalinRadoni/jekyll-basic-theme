# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "jekyll-basic-theme"
  spec.version       = "0.3.0"
  spec.authors       = ["Calin Radoni"]
  spec.email         = ["CalinRadoni@users.noreply.github.com"]

  spec.summary       = "TODO: Write a short summary, because Rubygems requires one."
  spec.homepage      = "TODO: Put your gem's website or public repo URL here."
  spec.license       = "MIT"

  spec.files = `git ls-files -z`.split("\x0").select do |f|
    f.match(%r!^(assets|_(includes|layouts|posts|sass)/|(LICENSE|README|index|about|404)((\.(txt|md|html)|$)))!i)
  end

  spec.add_runtime_dependency "jekyll", "~> 3.8"

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 12.0"
end
