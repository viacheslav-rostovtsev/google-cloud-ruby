# -*- ruby -*-
# encoding: utf-8

require File.expand_path("lib/google/cloud/gdc_hardware_management/v1alpha/version", __dir__)

Gem::Specification.new do |gem|
  gem.name          = "google-cloud-gdc_hardware_management-v1alpha"
  gem.version       = Google::Cloud::GDCHardwareManagement::V1alpha::VERSION

  gem.authors       = ["Google LLC"]
  gem.email         = "googleapis-packages@google.com"
  gem.description   = "google-cloud-gdc_hardware_management-v1alpha is the official client library for the GDC Hardware Management V1ALPHA API. Note that google-cloud-gdc_hardware_management-v1alpha is a version-specific client library. For most uses, we recommend installing the main client library google-cloud-gdc_hardware_management instead. See the readme for more details."
  gem.summary       = "API Client library for the GDC Hardware Management V1ALPHA API"
  gem.homepage      = "https://github.com/googleapis/google-cloud-ruby"
  gem.license       = "Apache-2.0"

  gem.platform      = Gem::Platform::RUBY

  gem.files         = `git ls-files -- lib/*`.split("\n") +
                      `git ls-files -- proto_docs/*`.split("\n") +
                      ["README.md", "LICENSE.md", "AUTHENTICATION.md", ".yardopts"]
  gem.require_paths = ["lib"]

  gem.required_ruby_version = ">= 3.1"

  gem.add_dependency "gapic-common", "~> 1.0"
  gem.add_dependency "google-cloud-errors", "~> 1.0"
  gem.add_dependency "google-cloud-location", "~> 1.0"
end
