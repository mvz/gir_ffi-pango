module Pango
  load_class :Font

  class Font
    def get_coverage lang
      ptr = Lib.pango_font_get_coverage(self, lang)
      Pango::Coverage.wrap ptr
    end
  end

  module Lib
    attach_function :pango_font_get_coverage, [:pointer, :pointer], :pointer
  end
end
