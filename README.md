# Sample plugin for Bridgetown

_NOTE: This isn't a real plugin! Copy this sample code and use it to create your own Ruby gem! [Help guide here…](https://www.bridgetownrb.com/docs/plugins)_ 😃

_Starting with Bridgetown v0.15, you can run_ `bridgetown plugins new` _to easily set up a customized verison of this starter repo._

A Bridgetown plugin to [fill in the blank]…

## Installation

Run this command to add this plugin to your site's Gemfile:

```shell
$ bundle add my-awesome-plugin -g bridgetown_plugins
```

Or if there's a `bridgetown.automation.rb` automation script, you can run that instead for guided setup:

```ruby
$ bundle exec bridgetown apply https://github.com/username/my-awesome-plugin
```

## Usage

The plugin will…

### Optional configuration options

The plugin will automatically use any of the following metadata variables if they are present in your site's `_data/site_metadata.yml` file.

…

## Testing

* Run `bundle exec rake test` to run the test suite
* Or run `script/cibuild` to validate with Rubocop and Minitest together.

## Contributing

1. Fork it (https://github.com/username/my-awesome-plugin/fork)
2. Clone the fork using `git clone` to your local development machine.
3. Create your feature branch (`git checkout -b my-new-feature`)
4. Commit your changes (`git commit -am 'Add some feature'`)
5. Push to the branch (`git push origin my-new-feature`)
6. Create a new Pull Request

----

## Releasing (you can delete this section in your own plugin repo)

To release a new version of the plugin, simply bump up the version number in both `version.rb` and
`package.json`, and then run `script/release`. This will require you to have a registered account
with both the [RubyGems.org](https://rubygems.org) and [NPM](https://www.npmjs.com) registries.
You can optionally remove the `package.json` and `frontend` folder if you don't need to package frontend
assets for Webpack.

If you run into any problems or need further guidance, please check out our [Bridgetown community resources](https://www.bridgetownrb.com/docs/community)
where friendly folks are standing by to help you build and release your plugin or theme.

**NOTE:** make sure you add the `bridgetown-plugin` [topic](https://github.com/topics/bridgetown-plugin) to your
plugin's GitHub repo so the plugin or theme will show up on [Bridgetown's official Plugin Directory](https://www.bridgetownrb.com/plugins)! (There may be a day or so delay before you see it appear.)
