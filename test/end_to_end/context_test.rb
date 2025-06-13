# frozen_string_literal: true

require File.expand_path("../test_helper.rb", File.dirname(__FILE__))

describe Pango::Context do
  describe "#get_font_map" do
    it "returns a descendant from Pango::FontMap" do
      ctx = Gdk.pango_context_get
      result = ctx.get_font_map

      _(result.class.ancestors).must_include Pango::FontMap
    end
  end
end
