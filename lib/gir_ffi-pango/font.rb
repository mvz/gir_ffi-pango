# frozen_string_literal: true

Pango.load_class :Font

module Pango
  # Overrides for PangoFont
  class Font
    def get_coverage(lang)
      ptr = Lib.pango_font_get_coverage(self, lang)
      Pango::Coverage.wrap ptr
    end

    alias coverage get_coverage
  end

  # Add non-introspected functions to Pango::Lib
  module Lib
    attach_function :pango_font_get_coverage, [:pointer, :pointer], :pointer
  end
end
