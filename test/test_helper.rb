require 'minitest/spec'
require 'minitest/autorun'

require 'gir_ffi-pango'

GirFFI.setup :Gdk
Gdk.init []
