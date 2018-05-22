# frozen_string_literal: true

require File.expand_path('../test_helper.rb', File.dirname(__FILE__))

describe Pango::Font do
  it 'allows retrieval of coverage information' do
    ctx = Gdk.pango_context_get

    fontmap = ctx.get_font_map
    fd = Pango::FontDescription.new
    fnt = fontmap.load_font ctx, fd

    lang = Pango::Language.from_string 'en'
    cov = fnt.get_coverage lang

    clist = 'Hello Pango!'.each_char.map { |ch| cov.get ch[0].ord }

    clist.uniq.each do |cval|
      [:none, :fallback, :approximate, :exact].must_include cval
    end
  end
end
