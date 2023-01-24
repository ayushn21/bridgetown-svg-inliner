# frozen_string_literal: true

require "minitest/autorun"
require "minitest/reporters"
require "bridgetown"

Bridgetown.begin!

require File.expand_path("../lib/bridgetown-svg-inliner", __dir__)

Bridgetown.logger.log_level = :error

Minitest::Reporters.use! [
  Minitest::Reporters::DefaultReporter.new(
    color: true
  ),
]

class BridgetownSvgInliner::Test < Minitest::Test
  extend Minitest::Spec::DSL

  ROOT_DIR = File.expand_path("fixtures", __dir__)
  SOURCE_DIR = File.join(ROOT_DIR, "src")
  DEST_DIR   = File.expand_path("dest", __dir__)

  def root_dir(*files)
    File.join(ROOT_DIR, *files)
  end

  def source_dir(*files)
    File.join(SOURCE_DIR, *files)
  end

  def dest_dir(*files)
    File.join(DEST_DIR, *files)
  end

  def make_liquid_context(registers = {})
    Liquid::Context.new({}, {}, registers)
  end
end
