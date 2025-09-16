# frozen_string_literal: true

require_relative "helper"

class TestSvgInliner < BridgetownSvgInliner::Test
  def setup
    Bridgetown.reset_configuration!
    @config = Bridgetown.configuration(
      "root_dir"    => root_dir,
      "source"      => source_dir,
      "destination" => dest_dir,
      "quiet"       => true
    )
    @config.run_initializers! context: :static
    @site = Bridgetown::Site.new(@config)
    @site.process
  end

  describe "rendering an SVG using the liquid tag" do
    before do
      @contents = Nokogiri::HTML(File.read(dest_dir("index.html")))
    end

    it "output the SVG file" do
      assert_valid_svg "#base > svg"
    end

    it "output the SVG with attributes passed into the tag" do
      assert_valid_svg "#with-attributes > svg.icon"
      assert_valid_svg "#upvote"
    end

    it "output the SVG when quotes are not used in the arguments" do
      assert_valid_svg "#without-quotes > svg.icon"
    end

    it "output the SVG with data attributes" do
      assert_valid_svg "#with-data-attributes > [data-color]"
    end

    it "output the SVG interpolating liquid variables in the arguments" do
      assert_valid_svg "#with-liquid-variables > svg.icon.icon--small"
    end

    it "output the SVG when rendered within a liquid component" do
      assert_valid_svg "#within-component > svg"
    end
  end

  describe "rendering an SVG using the ERB helper" do
    before do
      @contents = Nokogiri::HTML(File.read(dest_dir("about/index.html")))
    end

    it "output the SVG file" do
      assert_valid_svg "#base > svg"
    end

    it "output the SVG with attributes passed into the helper" do
      assert_valid_svg "#with-attributes > svg.icon"
      assert_valid_svg "#upvote"
    end

    it "output the SVG when rendered within a Ruby component" do
      assert_valid_svg "#within-component > svg"
    end

    it "output the SVG with data attributes" do
      assert_valid_svg "#with-data-attributes > [data-color]"
    end
  end

  private

  def assert_valid_svg(selector)
    svg_node = @contents.at_css(selector)

    assert_equal "svg", svg_node.name
    refute_nil svg_node.children.find { |node| node.name == "path" }
  end
end
