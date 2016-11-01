# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "gir_ffi-pango"
  s.version = "0.0.9"

  s.summary = "GirFFI-based bindings for Pango"
  s.description = "Bindings for Pango generated by GirFFI, with an eclectic set of overrides."

  s.license = 'LGPL-2.1'

  s.authors = ["Matijs van Zuijlen"]
  s.email = ["matijs@matijs.net"]
  s.homepage = "http://www.github.com/mvz/gir_ffi-pango"

  s.files = Dir['{lib,test}/**/*.rb', "README.md", "Rakefile", "COPYING.LIB"]
  s.test_files = Dir['test/**/*.rb']

  s.add_runtime_dependency('gir_ffi', ["~> 0.11.0"])
  s.add_development_dependency('minitest', ["~> 5.0"])
  s.add_development_dependency('rake', ["~> 11.1"])

  s.require_paths = ["lib"]
end
