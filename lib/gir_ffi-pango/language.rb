module Pango
  load_class :Language

  class Language
    setup_instance_method "get_scripts"

    def get_scripts_with_override
      ptr, num = self.get_scripts_without_override
      vals = GirFFI::ArgHelper.ptr_to_typed_array :gint32, ptr, num
      vals.map {|val| Pango::Script[val]}
    end

    alias get_scripts_without_override get_scripts
    alias get_scripts get_scripts_with_override
  end
end

