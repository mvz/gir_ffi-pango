# frozen_string_literal: true

module GirFFIPango
  # Overrides for PangoFont
  module FontOverrides
    def get_coverage(lang)
      ptr = ::Pango::Lib.pango_font_get_coverage(self, lang)
      Pango::Coverage.wrap ptr
    end

    alias coverage get_coverage
  end
end

Pango.load_class :Font
Pango::Lib.module_eval do
  attach_function :pango_font_get_coverage, [:pointer, :pointer], :pointer
end
Pango::Font.prepend GirFFIPango::FontOverrides
