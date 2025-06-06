# -*- ruby -*-
# encoding: utf-8

require File.expand_path("lib/google/cloud/dataflow/version", __dir__)

Gem::Specification.new do |gem|
  gem.name          = "google-cloud-dataflow"
  gem.version       = Google::Cloud::Dataflow::VERSION

  gem.authors       = ["Google LLC"]
  gem.email         = "googleapis-packages@google.com"
  gem.description   = "Dataflow is a managed service for executing a wide variety of data processing patterns."
  gem.summary       = "API Client library for the Dataflow API"
  gem.homepage      = "https://github.com/googleapis/google-cloud-ruby"
  gem.license       = "Apache-2.0"

  gem.platform      = Gem::Platform::RUBY

  gem.files         = `git ls-files -- lib/*`.split("\n") +
                      ["README.md", "AUTHENTICATION.md", "LICENSE.md", ".yardopts"]
  gem.require_paths = ["lib"]

  gem.required_ruby_version = ">= 3.0"

  gem.add_dependency "google-cloud-core", "~> 1.6"
  gem.add_dependency "google-cloud-dataflow-v1beta3", ">= 0.8", "< 2.a"
end
