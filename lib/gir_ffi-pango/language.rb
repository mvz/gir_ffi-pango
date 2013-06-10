module Pango
  load_class :Language

  class Language
    setup_instance_method "get_scripts"

    def get_scripts_with_override
      result = self.get_scripts_without_override
      if GLib::SizedArray === result
        result
      else
        ptr, size = *result
        GLib::SizedArray.new Pango::Script, size, ptr
      end
    end

    alias get_scripts_without_override get_scripts
    alias get_scripts get_scripts_with_override
  end
end

