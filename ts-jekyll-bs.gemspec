# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name     = "ts-jekyll-bs"
  spec.version  = "0.1.0"
  spec.author   = "Vino Rodrigues"

  spec.summary  = "Default Tecsmith theme for Jekyll sites, i.e. Github pages :)"
  spec.homepage = "https://github.com/tecsmith/ts-jekyll-bs"
  spec.license  = "MIT"

  spec.files    = `git ls-files -z`.split("\x0").select do |f|
    f.match(%r!^(assets|_(includes|layouts|sass)/|(LICENSE|README|CODE_OF_CONDUCT)((\.(txt|md|markdown)|$))|_config\.yml|404\.(html?|md|markdown)|browserconfig\.xml|site\.webmanifest|sitemap\.xsl)!i)
  end

  spec.add_runtime_dependency "jekyll", "~> 4.3", "< 5.0"

  spec.add_development_dependency "bundler"
end
