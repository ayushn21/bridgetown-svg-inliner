# frozen_string_literal: true

require "bridgetown"
require "nokogiri"
require "bridgetown-svg-inliner/builder"

module BridgetownSvgInliner
  autoload :LiquidAttributes, "bridgetown-svg-inliner/liquid_attributes"
end

BridgetownSvgInliner::Builder.register
