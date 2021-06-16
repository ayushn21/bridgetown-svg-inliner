# frozen_string_literal: true

require_relative "lib/bridgetown-svg-inliner/version"

Gem::Specification.new do |spec|
  spec.name          = "bridgetown-svg-inliner"
  spec.version       = BridgetownSvgInliner::VERSION
  spec.authors       = ["Ayush Newatia"]
  spec.email         = "ayush@hey.com"
  spec.summary       = "Liquid and ERB helper for Bridgetown to inline SVG files within HTML"
  spec.homepage      = "https://github.com/ayushn21/bridgetown-svg-inliner"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r!^(test|script|spec|features|frontend)/!) }
  spec.test_files    = spec.files.grep(%r!^test/!)
  spec.require_paths = ["lib"]
  spec.metadata      = { "yarn-add" => "bridgetown-svg-inliner@#{BridgetownSvgInliner::VERSION}" }

  spec.required_ruby_version = ">= 2.6.0"

  spec.add_dependency "bridgetown", ">= 0.20", "< 2.0"
  spec.add_dependency "nokogiri"

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake", "~> 12.0"
  spec.add_development_dependency "rubocop-bridgetown", "~> 0.2"
end
