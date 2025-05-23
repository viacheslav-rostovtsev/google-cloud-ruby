# -*- ruby -*-
# encoding: utf-8

require File.expand_path("lib/google/cloud/device_streaming/version", __dir__)

Gem::Specification.new do |gem|
  gem.name          = "google-cloud-device_streaming"
  gem.version       = Google::Cloud::DeviceStreaming::VERSION

  gem.authors       = ["Google LLC"]
  gem.email         = "googleapis-packages@google.com"
  gem.description   = "The Cloud API for device streaming usage."
  gem.summary       = "The Cloud API for device streaming usage."
  gem.homepage      = "https://github.com/googleapis/google-cloud-ruby"
  gem.license       = "Apache-2.0"

  gem.platform      = Gem::Platform::RUBY

  gem.files         = `git ls-files -- lib/*`.split("\n") +
                      ["README.md", "AUTHENTICATION.md", "LICENSE.md", ".yardopts"]
  gem.require_paths = ["lib"]

  gem.required_ruby_version = ">= 3.0"

  gem.add_dependency "google-cloud-core", "~> 1.6"
  gem.add_dependency "google-cloud-device_streaming-v1", ">= 0.0", "< 2.a"
end
