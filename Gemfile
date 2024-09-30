# frozen_string_literal: true

source "https://rubygems.org"
# gemspec

# REMOVE THE BELOW ITEMS!
gem "liquid", "~> 4.0"
gem "jekyll", "~> 4.3"

group :jekyll_plugins do
  gem "jekyll-sitemap", "~> 1.4"
end

platforms :mingw, :x64_mingw, :mswin, :jruby do
  gem "tzinfo", ">= 1", "< 3"
  gem "tzinfo-data"
end

gem "wdm", "~> 0.1.1", :platforms => [:mingw, :x64_mingw, :mswin]

# Lock `http_parser.rb` gem to `v0.6.x` on JRuby builds since newer versions of the gem
# do not have a Java counterpart.
gem "http_parser.rb", "~> 0.6.0", :platforms => [:jruby]

gem "webrick", "~> 1.8"
