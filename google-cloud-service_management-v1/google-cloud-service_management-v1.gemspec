# -*- ruby -*-
# encoding: utf-8

require File.expand_path("lib/google/cloud/service_management/v1/version", __dir__)

Gem::Specification.new do |gem|
  gem.name          = "google-cloud-service_management-v1"
  gem.version       = Google::Cloud::ServiceManagement::V1::VERSION

  gem.authors       = ["Google LLC"]
  gem.email         = "googleapis-packages@google.com"
  gem.description   = "Google Service Management allows service producers to publish their services on Google Cloud Platform so that they can be discovered and used by service consumers. Note that google-cloud-service_management-v1 is a version-specific client library. For most uses, we recommend installing the main client library google-cloud-service_management instead. See the readme for more details."
  gem.summary       = "Google Service Management allows service producers to publish their services on Google Cloud Platform so that they can be discovered and used by service consumers."
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
  gem.add_dependency "google-iam-v1", "~> 1.3"
end
