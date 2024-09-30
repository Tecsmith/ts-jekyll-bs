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
  - `home.html` &mdash; The layout for your landing-page / home-page / index-page. [[More Info.](#home-layout)]
  - `page.html` &mdash; The layout for your documents that contain FrontMatter, but are not posts.
  - `post.html` &mdash; The layout for your posts.



## Developing with

To test use:

```bash
bundle exec jekyll serve --open-url --livereload --livereload-port 4001 --trace
```

## License

The theme is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).


&nbsp;<br>&nbsp;
---
Made with &#9829; by **Vino Rodrigues**
