# frozen_string_literal: true

require_relative "./helper"

class TestBridgetownSvgInliner < Minitest::Test
  def setup
    @site = Bridgetown::Site.new(
      Bridgetown.configuration(
        "root_dir"    => root_dir,
        "source"      => source_dir,
        "destination" => dest_dir,
        "quiet"       => true
      )
    )
  end

  context "rendering an SVG using the liquid tag" do
    setup do
      with_metadata title: "SVG Inliner" do
        @site.process
        @contents = Nokogiri::HTML(File.read(dest_dir("index.html")))
      end
    end

    should "output the SVG file" do
      assert_valid_svg "#base > svg"
    end

    should "output the SVG with attributes passed into the tag" do
      assert_valid_svg "#with-attributes > svg.icon"
      assert_valid_svg "#upvote"
    end

    should "output the SVG when quotes are not used in the arguments" do
      assert_valid_svg "#without-quotes > svg.icon"
    end

    should "output the SVG interpolating liquid variables in the arguments" do
      assert_valid_svg "#with-liquid-variables > svg.icon.icon--small"
    end
  end

  context "rendering an SVG using the ERB helper" do
    setup do
      with_metadata title: "SVG Inliner" do
        @site.process
        @contents = Nokogiri::HTML(File.read(dest_dir("about.html")))
      end
    end

    should "output the SVG file" do
      assert_valid_svg "#base > svg"
    end

    should "output the SVG with attributes passed into the helper" do
      assert_valid_svg "#with-attributes > svg.icon"
      assert_valid_svg "#upvote"
    end
  end

  private

  def assert_valid_svg(selector)
    svg_node = @contents.at_css(selector)

    assert_equal "svg", svg_node.name
    refute_nil svg_node.children.find { _1.name == "path" }
  end
end
