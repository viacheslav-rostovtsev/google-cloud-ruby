# -*- ruby -*-
# encoding: utf-8

require File.expand_path("lib/google/cloud/financial_services/version", __dir__)

Gem::Specification.new do |gem|
  gem.name          = "google-cloud-financial_services"
  gem.version       = Google::Cloud::FinancialServices::VERSION

  gem.authors       = ["Google LLC"]
  gem.email         = "googleapis-packages@google.com"
  gem.description   = "google-cloud-financial_services is the official client library for the Financial Services API."
  gem.summary       = "API Client library for the Financial Services API"
  gem.homepage      = "https://github.com/googleapis/google-cloud-ruby"
  gem.license       = "Apache-2.0"

  gem.platform      = Gem::Platform::RUBY

  gem.files         = `git ls-files -- lib/*`.split("\n") +
                      ["README.md", "AUTHENTICATION.md", "LICENSE.md", ".yardopts"]
  gem.require_paths = ["lib"]

  gem.required_ruby_version = ">= 3.0"

  gem.add_dependency "google-cloud-core", "~> 1.6"
  gem.add_dependency "google-cloud-financial_services-v1", ">= 0.0", "< 2.a"
end
