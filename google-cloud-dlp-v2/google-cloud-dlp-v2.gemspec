# -*- ruby -*-
# encoding: utf-8

require File.expand_path("lib/google/cloud/dlp/v2/version", __dir__)

Gem::Specification.new do |gem|
  gem.name          = "google-cloud-dlp-v2"
  gem.version       = Google::Cloud::Dlp::V2::VERSION

  gem.authors       = ["Google LLC"]
  gem.email         = "googleapis-packages@google.com"
  gem.description   = "Provides methods for detection of privacy-sensitive fragments in text, images, and Google Cloud Platform storage repositories. Note that google-cloud-dlp-v2 is a version-specific client library. For most uses, we recommend installing the main client library google-cloud-dlp instead. See the readme for more details."
  gem.summary       = "Discover and protect your sensitive data. A fully managed service designed to help you discover, classify, and protect your valuable data assets with ease."
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
