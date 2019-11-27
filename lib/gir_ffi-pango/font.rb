# frozen_string_literal: true

module Pango
  load_class :Font

  class Font
    def get_coverage(lang)
      ptr = Lib.pango_font_get_coverage(self, lang)
      Pango::Coverage.wrap ptr
    end

    alias coverage get_coverage
  end

  module Lib
    attach_function :pango_font_get_coverage, [:pointer, :pointer], :pointer
  end
end
