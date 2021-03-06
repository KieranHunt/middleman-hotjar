# middleman-hotjar
[![Build Status](https://travis-ci.org/KieranHunt/middleman-hotjar.svg?branch=master)](https://travis-ci.org/KieranHunt/middleman-hotjar)
[![Maintainability](https://api.codeclimate.com/v1/badges/7cad0cb69b48743dca26/maintainability)](https://codeclimate.com/github/KieranHunt/middleman-hotjar/maintainability)
[![Test Coverage](https://api.codeclimate.com/v1/badges/7cad0cb69b48743dca26/test_coverage)](https://codeclimate.com/github/KieranHunt/middleman-hotjar/test_coverage)
[![Gem Downloads](https://img.shields.io/gem/dt/middleman-hotjar.svg)](https://rubygems.org/gems/middleman-hotjar)
[![Gem Version](https://img.shields.io/gem/v/middleman-hotjar.svg)](https://rubygems.org/gems/middleman-hotjar)


Add [Hotjar](https://hotjar.com) analytics tracking code to your [Middleman](https://middlemanapp.com/) site!

# Installation

1. Add it to your `Gemfile`:

```ruby
gem middleman-hotjar
```

2. Activate the extension in your `config.rb` file:

```erb
activate :hotjar do |hj|
  hj.hotjar_id = '1337' # Replace with your site's ID
end
```

3. Add the helper method to your layout:

```erb
<%= hotjar_tag %>
```
