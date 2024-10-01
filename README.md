<center>
<img src="readme-banner.svg" alt="ts-jekyll-bs" />
</center>

&nbsp;<br>&nbsp;

A [**Jekyll**](https://jekyllrb.com/) Theme shaped arround:
- [**Bootstrap** 4](https://github.com/twbs/bootstrap/tree/v4.6.2)
- [**Bootsrap Dark** *(4)*](https://github.com/vinorodrigues/bootstrap-dark)
- [**FontAwesome** 5](https://fontawesome.com/v5/icons/)

## Installation

> `TO DO`

## Contents At-A-Glance

`ts-jekyll-bs` is scaffolded with the `jekyll new-theme` and can be set up to run with zero-config.  However, if you wish to add complementary content like nav bars, then some configuration is required.

###

Refers to files within the `_layouts` directory, that define the markup for your theme.

  - `base.html` &mdash; The base layout that lays the foundation for subsequent layouts. The derived layouts inject their
    contents into this file at the line that says ` {{ content }} ` and are linked to this file via *FrontMatter* declaration `layout: base`.
<!-- - `home.html` &mdash; The layout for your landing-page / home-page / index-page. [[More Info.](#home-layout)] -->
  - `page.html` &mdash; The layout for your documents that contain FrontMatter, but are not posts.
  - `post.html` &mdash; The layout for your posts.



## Developing with

#### Set up a new sit in Jekyll

```bash
jekyll new PATH --blank
```

#### Initialize a new Bundler project

```bash
bundle init
```

#### Edit `Gemfile` to add Jekyll, this theme, and `jeyyll-remote-theme` as a dependency

```rb
gem "jekyll", '~> 4.3'

gem 'ts-jekyll-bs', '>= 0.1.0', :git => 'http://github.com/tecsmith/ts-jekyll-bs.git', branch: 'main'

group :jekyll_plugins do
  gem 'jekyll-remote-theme', '~> 0.4'
end
```

#### Edit `_config.yml` with this theme and `jeyyll-remote-theme`

```yaml
remote_theme: https://github.com/tecsmith/ts-jekyll-bs

plugins:
  - jekyll-remote-theme
```

#### *(Optional)* Configure Bundler to install gems in a specific directory

```bash
bundle config set --local path "vendor/bundle"
```

#### Run `bundle install` to fetch and install the gems

```bash
bundle install
```

#### Develop and test

```bash
bundle exec jekyll serve --open-url --livereload --livereload-port 4001 --trace
```

## License

The theme is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).


&nbsp;<br>&nbsp;
---
Made with &#9829; by **Vino Rodrigues**
