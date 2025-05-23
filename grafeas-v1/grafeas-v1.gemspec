# -*- ruby -*-
# encoding: utf-8

require File.expand_path("lib/grafeas/v1/version", __dir__)

Gem::Specification.new do |gem|
  gem.name          = "grafeas-v1"
  gem.version       = Grafeas::V1::VERSION

  gem.authors       = ["Google LLC"]
  gem.email         = "googleapis-packages@google.com"
  gem.description   = "The Grafeas API stores, and enables querying and retrieval of, critical metadata about all of your software artifacts. Note that grafeas-v1 is a version-specific client library. For most uses, we recommend installing the main client library grafeas instead. See the readme for more details."
  gem.summary       = "An implementation of the Grafeas API, which stores, and enables querying and retrieval of critical metadata about all of your software artifacts."
  gem.homepage      = "https://github.com/googleapis/google-cloud-ruby"
  gem.license       = "Apache-2.0"

  gem.platform      = Gem::Platform::RUBY

  gem.files         = `git ls-files -- lib/*`.split("\n") +
                      `git ls-files -- proto_docs/*`.split("\n") +
                      ["README.md", "LICENSE.md", ".yardopts"]
  gem.require_paths = ["lib"]

  gem.required_ruby_version = ">= 3.1"

  gem.add_dependency "gapic-common", "~> 1.0"
  gem.add_dependency "google-cloud-errors", "~> 1.0"
end
