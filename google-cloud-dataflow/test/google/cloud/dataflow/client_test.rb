# frozen_string_literal: true

# Copyright 2021 Google LLC
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
require "google/cloud/dataflow"
require "gapic/common"
require "gapic/grpc"
require "gapic/rest"

class Google::Cloud::Dataflow::ClientConstructionMinitest < Minitest::Test
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

  def test_snapshots_grpc
    skip unless Google::Cloud::Dataflow.snapshots_available? transport: :grpc
    Gapic::ServiceStub.stub :new, DummyStub.new do
      grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
      client = Google::Cloud::Dataflow.snapshots transport: :grpc do |config|
        config.credentials = grpc_channel
      end
      assert_kind_of Google::Cloud::Dataflow::V1beta3::Snapshots::Client, client
    end
  end

  def test_snapshots_rest
    skip unless Google::Cloud::Dataflow.snapshots_available? transport: :rest
    Gapic::Rest::ClientStub.stub :new, DummyStub.new do
      client = Google::Cloud::Dataflow.snapshots transport: :rest do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Cloud::Dataflow::V1beta3::Snapshots::Rest::Client, client
    end
  end

  def test_jobs_grpc
    skip unless Google::Cloud::Dataflow.jobs_available? transport: :grpc
    Gapic::ServiceStub.stub :new, DummyStub.new do
      grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
      client = Google::Cloud::Dataflow.jobs transport: :grpc do |config|
        config.credentials = grpc_channel
      end
      assert_kind_of Google::Cloud::Dataflow::V1beta3::Jobs::Client, client
    end
  end

  def test_jobs_rest
    skip unless Google::Cloud::Dataflow.jobs_available? transport: :rest
    Gapic::Rest::ClientStub.stub :new, DummyStub.new do
      client = Google::Cloud::Dataflow.jobs transport: :rest do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Cloud::Dataflow::V1beta3::Jobs::Rest::Client, client
    end
  end

  def test_messages_grpc
    skip unless Google::Cloud::Dataflow.messages_available? transport: :grpc
    Gapic::ServiceStub.stub :new, DummyStub.new do
      grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
      client = Google::Cloud::Dataflow.messages transport: :grpc do |config|
        config.credentials = grpc_channel
      end
      assert_kind_of Google::Cloud::Dataflow::V1beta3::Messages::Client, client
    end
  end

  def test_messages_rest
    skip unless Google::Cloud::Dataflow.messages_available? transport: :rest
    Gapic::Rest::ClientStub.stub :new, DummyStub.new do
      client = Google::Cloud::Dataflow.messages transport: :rest do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Cloud::Dataflow::V1beta3::Messages::Rest::Client, client
    end
  end

  def test_metrics_grpc
    skip unless Google::Cloud::Dataflow.metrics_available? transport: :grpc
    Gapic::ServiceStub.stub :new, DummyStub.new do
      grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
      client = Google::Cloud::Dataflow.metrics transport: :grpc do |config|
        config.credentials = grpc_channel
      end
      assert_kind_of Google::Cloud::Dataflow::V1beta3::Metrics::Client, client
    end
  end

  def test_metrics_rest
    skip unless Google::Cloud::Dataflow.metrics_available? transport: :rest
    Gapic::Rest::ClientStub.stub :new, DummyStub.new do
      client = Google::Cloud::Dataflow.metrics transport: :rest do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Cloud::Dataflow::V1beta3::Metrics::Rest::Client, client
    end
  end

  def test_templates_service_grpc
    skip unless Google::Cloud::Dataflow.templates_service_available? transport: :grpc
    Gapic::ServiceStub.stub :new, DummyStub.new do
      grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
      client = Google::Cloud::Dataflow.templates_service transport: :grpc do |config|
        config.credentials = grpc_channel
      end
      assert_kind_of Google::Cloud::Dataflow::V1beta3::TemplatesService::Client, client
    end
  end

  def test_templates_service_rest
    skip unless Google::Cloud::Dataflow.templates_service_available? transport: :rest
    Gapic::Rest::ClientStub.stub :new, DummyStub.new do
      client = Google::Cloud::Dataflow.templates_service transport: :rest do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Cloud::Dataflow::V1beta3::TemplatesService::Rest::Client, client
    end
  end

  def test_flex_templates_service_grpc
    skip unless Google::Cloud::Dataflow.flex_templates_service_available? transport: :grpc
    Gapic::ServiceStub.stub :new, DummyStub.new do
      grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
      client = Google::Cloud::Dataflow.flex_templates_service transport: :grpc do |config|
        config.credentials = grpc_channel
      end
      assert_kind_of Google::Cloud::Dataflow::V1beta3::FlexTemplatesService::Client, client
    end
  end

  def test_flex_templates_service_rest
    skip unless Google::Cloud::Dataflow.flex_templates_service_available? transport: :rest
    Gapic::Rest::ClientStub.stub :new, DummyStub.new do
      client = Google::Cloud::Dataflow.flex_templates_service transport: :rest do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Cloud::Dataflow::V1beta3::FlexTemplatesService::Rest::Client, client
    end
  end
end
