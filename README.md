# Bridgetown SVG Inliner

A Bridgetown plugin that provides a liquid tag and ERB helper to inline SVG files within the HTML markup.

## Installation

Run this command to add this plugin to your site's Gemfile:

```shell
$ bundle add "bridgetown-svg-inliner" -g bridgetown_plugins
```

## Usage

This plugin provides an `svg` tag in Liquid and an `svg` helper in ERB or other Tilt based templating langugages.

```liquid
<!-- Liquid -->
{% svg "/assets/icons/thumbs-up.svg" %}
```

```erb
<!-- ERB -->
<%= svg "/assets/icons/thumbs-up.svg" %>
```

### Attributes

You can pass in attributes that you'd like to include on the `svg` tag in the HTML output.

```liquid
<!-- Liquid -->
{% svg "/assets/icons/thumbs-up.svg", class: "icon" %}
```

```erb
<!-- ERB -->
<%= svg "/assets/icons/thumbs-up.svg", class: "icon" %>
```

```html
<!-- Output -->
<svg class="icon">
  ...
</svg>
```

### Liquid variables

You can use Liquid variables by enclosing them in double braces (`{{ }}`)

```liquid
<!-- Liquid -->
{% assign svg_file = "thumbs-up" %}
{% svg_class_list = "icon icon--small" %}
{% svg "/assets/icons/{{ svg_file }}.svg", class: "{{ svg_class_list }}" %}
```

## Testing

* Run `bundle exec rake test` to run the test suite
* Or run `script/cibuild` to validate with Rubocop and Minitest together.

## Contributing

1. Fork it (https://github.com/ayushn21/bridgetown-svg-inliner/fork)
2. Clone the fork using `git clone` to your local development machine.
3. Create your feature branch (`git checkout -b my-new-feature`)
4. Commit your changes (`git commit -am 'Add some feature'`)
5. Push to the branch (`git push origin my-new-feature`)
6. Create a new Pull Request

## License

Bridgetown SVG Inliner is released under the [MIT License](https://opensource.org/licenses/MIT).

Copyright © 2021 [Ayush Newatia](https://twitter.com/ayushn21)