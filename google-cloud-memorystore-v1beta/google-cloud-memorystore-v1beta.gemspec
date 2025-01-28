# -*- ruby -*-
# encoding: utf-8

require File.expand_path("lib/google/cloud/memorystore/v1beta/version", __dir__)

Gem::Specification.new do |gem|
  gem.name          = "google-cloud-memorystore-v1beta"
  gem.version       = Google::Cloud::Memorystore::V1beta::VERSION

  gem.authors       = ["Google LLC"]
  gem.email         = "googleapis-packages@google.com"
  gem.description   = "google-cloud-memorystore-v1beta is the official client library for the Memorystore V1BETA API. Note that google-cloud-memorystore-v1beta is a version-specific client library. For most uses, we recommend installing the main client library google-cloud-memorystore instead. See the readme for more details."
  gem.summary       = "API Client library for the Memorystore V1BETA API"
  gem.homepage      = "https://github.com/googleapis/google-cloud-ruby"
  gem.license       = "Apache-2.0"

  gem.platform      = Gem::Platform::RUBY

  gem.files         = `git ls-files -- lib/*`.split("\n") +
                      `git ls-files -- proto_docs/*`.split("\n") +
                      ["README.md", "LICENSE.md", "AUTHENTICATION.md", ".yardopts"]
  gem.require_paths = ["lib"]

  gem.required_ruby_version = ">= 3.0"

  gem.add_dependency "gapic-common", ">= 0.25.0", "< 2.a"
  gem.add_dependency "google-cloud-errors", "~> 1.0"
  gem.add_dependency "google-cloud-location", ">= 0.7", "< 2.a"
end
