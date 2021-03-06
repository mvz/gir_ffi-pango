# frozen_string_literal: true

require File.expand_path("../test_helper.rb", File.dirname(__FILE__))

describe Pango::Font do
  before do
    ctx = Gdk.pango_context_get
    fontmap = ctx.font_map
    fd = Pango::FontDescription.new
    @fnt = fontmap.load_font ctx, fd
  end

  describe "#get_coverage" do
    before do
      lang = Pango::Language.from_string "en"
      @cov = @fnt.get_coverage lang
    end

    it "returns a Pango::Coverage" do
      _(@cov).must_be_kind_of Pango::Coverage
    end

    it "returns valid coverage info" do
      _(@cov.get(" "[0].ord)).must_equal :exact
    end
  end

  describe "#coverage" do
    let(:lang) { Pango::Language.from_string "en" }
    let(:cov) { @fnt.coverage lang }

    it "returns a Pango::Coverage" do
      _(cov).must_be_kind_of Pango::Coverage
    end

    it "returns valid coverage info" do
      _(cov.get(" "[0].ord)).must_equal :exact
    end
  end
end
