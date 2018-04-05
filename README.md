# middleman-hotjar
[![Build Status](https://travis-ci.org/KieranHunt/middleman-hotjar.svg?branch=master)](https://travis-ci.org/KieranHunt/middleman-hotjar)
[![Maintainability](https://api.codeclimate.com/v1/badges/7cad0cb69b48743dca26/maintainability)](https://codeclimate.com/github/KieranHunt/middleman-hotjar/maintainability)
[![Test Coverage](https://api.codeclimate.com/v1/badges/7cad0cb69b48743dca26/test_coverage)](https://codeclimate.com/github/KieranHunt/middleman-hotjar/test_coverage)

Add Hotjar analytics tracking code to your Middleman site!

# Installation

1. Add it to your `Gemfile`:

```ruby
gem middleman-hotjar
```

2. Activate the extension in your `config.rb` file:

```erb
activate :hotjar do |ga|
  ga.hotjar_id = '1337' # Replace with your site's ID
end
```

3. Add the helper method to your layout:

```erb
<%= hotjar_tag %>
```
