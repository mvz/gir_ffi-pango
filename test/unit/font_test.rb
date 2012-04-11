require File.expand_path('../test_helper.rb', File.dirname(__FILE__))

describe Pango::Font do
  before do
    ctx = Gdk.pango_context_get
    fontmap = ctx.get_font_map
    fd = Pango::FontDescription.new
    @fnt = fontmap.load_font ctx, fd
  end

  describe "#get_coverage" do
    before do
      lang = Pango::Language.from_string 'en'
      @cov = @fnt.get_coverage lang
    end

    it "returns a valid coverage object" do
      @cov.wont_be_nil
      @cov.must_be_instance_of Pango::Coverage
    end
  end
end
