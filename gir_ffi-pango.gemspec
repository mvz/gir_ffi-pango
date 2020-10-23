# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name = "gir_ffi-pango"
  spec.version = "0.0.14"
  spec.authors = ["Matijs van Zuijlen"]
  spec.email = ["matijs@matijs.net"]

  spec.summary = "GirFFI-based bindings for Pango"
  spec.description =
    "Bindings for Pango generated by GirFFI, with an eclectic set of overrides."
  spec.homepage = "http://www.github.com/mvz/gir_ffi-pango"
  spec.license = "LGPL-2.1"

  spec.required_ruby_version = ">= 2.5.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/mvz/gir_ffi-pango"
  spec.metadata["changelog_uri"] = "https://github.com/mvz/gir_ffi-pango/blob/master/Changelog.md"

  spec.files = File.read("Manifest.txt").split
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "gir_ffi", "~> 0.15.2"

  spec.add_development_dependency "minitest", "~> 5.12"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rake-manifest", "~> 0.1.0"
  spec.add_development_dependency "rubocop", "~> 1.0.0"
  spec.add_development_dependency "rubocop-minitest", "~> 0.10.1"
  spec.add_development_dependency "rubocop-packaging", "~> 0.5.0"
  spec.add_development_dependency "rubocop-performance", "~> 1.8.0"
  spec.add_development_dependency "simplecov", "~> 0.19.0"
end
