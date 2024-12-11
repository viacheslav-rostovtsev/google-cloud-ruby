# frozen_string_literal: true

# Copyright 2020 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Auto-generated by gapic-generator-ruby. DO NOT EDIT!

require "helper"

require "gapic/grpc/service_stub"

require "google/cloud/speech/v1p1beta1/speech"

class ::Google::Cloud::Speech::V1p1beta1::Speech::ClientPathsTest < Minitest::Test
  class DummyStub
    def endpoint
      "endpoint.example.com"
    end
  
    def universe_domain
      "example.com"
    end

    def stub_logger
      nil
    end

    def logger
      nil
    end
  end

  def test_custom_class_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::Speech::V1p1beta1::Speech::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.custom_class_path project: "value0", location: "value1", custom_class: "value2"
      assert_equal "projects/value0/locations/value1/customClasses/value2", path
    end
  end

  def test_phrase_set_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::Speech::V1p1beta1::Speech::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.phrase_set_path project: "value0", location: "value1", phrase_set: "value2"
      assert_equal "projects/value0/locations/value1/phraseSets/value2", path
    end
  end
end
