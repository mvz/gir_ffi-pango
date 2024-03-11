# frozen_string_literal: true

require_relative "lib/gir_ffi-pango/version"

Gem::Specification.new do |spec|
  spec.name = "gir_ffi-pango"
  spec.version = GirFFIPango::VERSION
  spec.authors = ["Matijs van Zuijlen"]
  spec.email = ["matijs@matijs.net"]

  spec.summary = "GirFFI-based bindings for Pango"
  spec.description =
    "Bindings for Pango generated by GirFFI, with an eclectic set of overrides."
  spec.homepage = "http://www.github.com/mvz/gir_ffi-pango"
  spec.license = "LGPL-2.1"

  spec.required_ruby_version = ">= 3.0.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/mvz/gir_ffi-pango"
  spec.metadata["changelog_uri"] = "https://github.com/mvz/gir_ffi-pango/blob/master/Changelog.md"
  spec.metadata["rubygems_mfa_required"] = "true"

  spec.files = File.read("Manifest.txt").split
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "gir_ffi", "~> 0.17.0"

  spec.add_development_dependency "minitest", "~> 5.12"
  spec.add_development_dependency "pry", "~> 0.14.0"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rake-manifest", "~> 0.2.0"
  spec.add_development_dependency "rubocop", "~> 1.52"
  spec.add_development_dependency "rubocop-minitest", "~> 0.35.0"
  spec.add_development_dependency "rubocop-packaging", "~> 0.5.2"
  spec.add_development_dependency "rubocop-performance", "~> 1.18"
  spec.add_development_dependency "simplecov", "~> 0.22.0"
end
