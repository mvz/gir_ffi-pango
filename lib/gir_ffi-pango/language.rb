# frozen_string_literal: true

module Pango
  load_class :Language

  class Language
    setup_instance_method! 'get_scripts'

    def get_scripts_with_override
      result = get_scripts_without_override
      case result
      when GirFFI::SizedArray
        result
      else
        ptr, size = *result
        GirFFI::SizedArray.new Pango::Script, size, ptr
      end
    end

    alias get_scripts_without_override get_scripts
    alias get_scripts get_scripts_with_override
  end
end
