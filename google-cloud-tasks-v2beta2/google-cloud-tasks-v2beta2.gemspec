# -*- ruby -*-
# encoding: utf-8

require File.expand_path("lib/google/cloud/tasks/v2beta2/version", __dir__)

Gem::Specification.new do |gem|
  gem.name          = "google-cloud-tasks-v2beta2"
  gem.version       = Google::Cloud::Tasks::V2beta2::VERSION

  gem.authors       = ["Google LLC"]
  gem.email         = "googleapis-packages@google.com"
  gem.description   = "Cloud Tasks is a fully managed service that allows you to manage the execution, dispatch and delivery of a large number of distributed tasks. You can asynchronously perform work outside of a user request. Your tasks can be executed on App Engine or any arbitrary HTTP endpoint. Note that google-cloud-tasks-v2beta2 is a version-specific client library. For most uses, we recommend installing the main client library google-cloud-tasks instead. See the readme for more details."
  gem.summary       = "Manages the execution of large numbers of distributed requests."
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
  gem.add_dependency "grpc-google-iam-v1", "~> 1.11"
end
