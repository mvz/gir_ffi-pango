# GirFFI-Pango

GirFFI-based bindings for Pango

## Usage

```ruby
require "gir_ffi-gtk3"
require "gir_ffi-pango"

Gtk.init

win = Gtk::Window.new :toplevel
ctx = win.pango_context
fontmap = ctx.font_map
fd = Pango::FontDescription.new
fd.family = "Sans"
fnt = fontmap.load_font ctx, fd
puts fnt.describe.to_string

lang = Pango::Language.from_string "en"
puts lang.scripts.to_a
```

## Install

```bash
gem install gir_ffi-pango
```

## License

Copyright &copy; 2012&ndash;2016, 2018&ndash;2021,
[Matijs van Zuijlen](http://www.matijs.net/)

GirFFI-Pango is free software, distributed under the terms of the GNU Lesser
General Public License, version 2.1 or later. See the file COPYING.LIB for more
information.
