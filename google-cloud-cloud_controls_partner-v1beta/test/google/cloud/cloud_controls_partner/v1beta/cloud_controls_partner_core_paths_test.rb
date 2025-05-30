# frozen_string_literal: true

# Copyright 2024 Google LLC
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

require "google/cloud/cloud_controls_partner/v1beta/cloud_controls_partner_core"

class ::Google::Cloud::CloudControlsPartner::V1beta::CloudControlsPartnerCore::ClientPathsTest < Minitest::Test
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

  def test_customer_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::CloudControlsPartner::V1beta::CloudControlsPartnerCore::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.customer_path organization: "value0", location: "value1", customer: "value2"
      assert_equal "organizations/value0/locations/value1/customers/value2", path
    end
  end

  def test_ekm_connections_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::CloudControlsPartner::V1beta::CloudControlsPartnerCore::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.ekm_connections_path organization: "value0", location: "value1", customer: "value2", workload: "value3"
      assert_equal "organizations/value0/locations/value1/customers/value2/workloads/value3/ekmConnections", path
    end
  end

  def test_organization_location_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::CloudControlsPartner::V1beta::CloudControlsPartnerCore::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.organization_location_path organization: "value0", location: "value1"
      assert_equal "organizations/value0/locations/value1", path
    end
  end

  def test_partner_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::CloudControlsPartner::V1beta::CloudControlsPartnerCore::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.partner_path organization: "value0", location: "value1"
      assert_equal "organizations/value0/locations/value1/partner", path
    end
  end

  def test_partner_permissions_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::CloudControlsPartner::V1beta::CloudControlsPartnerCore::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.partner_permissions_path organization: "value0", location: "value1", customer: "value2", workload: "value3"
      assert_equal "organizations/value0/locations/value1/customers/value2/workloads/value3/partnerPermissions", path
    end
  end

  def test_workload_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::CloudControlsPartner::V1beta::CloudControlsPartnerCore::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.workload_path organization: "value0", location: "value1", customer: "value2", workload: "value3"
      assert_equal "organizations/value0/locations/value1/customers/value2/workloads/value3", path
    end
  end
end
