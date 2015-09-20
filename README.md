# GirFFI-Pango

GirFFI-based bindings for Pango

## Usage

    require 'gir_ffi-gtk3'
    require 'gir_ffi-pango'

    Gtk.init

    ctx = Gdk.pango_context_get
    fontmap = ctx.get_font_map
    fd = Pango::FontDescription.new
    fd.set_family "Sans"
    fnt = fontmap.load_font ctx, fd
    puts fnt.describe.to_string

    lang = Pango::Language.from_string "en"
    puts lang.get_stripts

## Install

    gem install gir_ffi-pango

## License

Copyright &copy; 2012&ndash;2015, [Matijs van Zuijlen](http://www.matijs.net/)

GirFFI-Pango is free software, distributed under the terms of the GNU Lesser
General Public License, version 2.1 or later. See the file COPYING.LIB for more
information.
