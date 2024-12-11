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

require "google/cloud/assuredworkloads/v1beta1/assuredworkloads_service_pb"
require "google/cloud/assuredworkloads/v1beta1/assuredworkloads_service_services_pb"
require "google/cloud/assured_workloads/v1beta1/assured_workloads_service"

class ::Google::Cloud::AssuredWorkloads::V1beta1::AssuredWorkloadsService::ClientTest < Minitest::Test
  class ClientStub
    attr_accessor :call_rpc_count, :requests

    def initialize response, operation, &block
      @response = response
      @operation = operation
      @block = block
      @call_rpc_count = 0
      @requests = []
    end

    def call_rpc *args, **kwargs
      @call_rpc_count += 1

      @requests << @block&.call(*args, **kwargs)

      catch :response do
        yield @response, @operation if block_given?
        @response
      end
    end

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

  def test_create_workload
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    workload = {}
    external_id = "hello world"

    create_workload_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :create_workload, name
      assert_kind_of ::Google::Cloud::AssuredWorkloads::V1beta1::CreateWorkloadRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::AssuredWorkloads::V1beta1::Workload), request["workload"]
      assert_equal "hello world", request["external_id"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, create_workload_client_stub do
      # Create client
      client = ::Google::Cloud::AssuredWorkloads::V1beta1::AssuredWorkloadsService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.create_workload({ parent: parent, workload: workload, external_id: external_id }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.create_workload parent: parent, workload: workload, external_id: external_id do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.create_workload ::Google::Cloud::AssuredWorkloads::V1beta1::CreateWorkloadRequest.new(parent: parent, workload: workload, external_id: external_id) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.create_workload({ parent: parent, workload: workload, external_id: external_id }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.create_workload(::Google::Cloud::AssuredWorkloads::V1beta1::CreateWorkloadRequest.new(parent: parent, workload: workload, external_id: external_id), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, create_workload_client_stub.call_rpc_count
    end
  end

  def test_update_workload
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::AssuredWorkloads::V1beta1::Workload.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    workload = {}
    update_mask = {}

    update_workload_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :update_workload, name
      assert_kind_of ::Google::Cloud::AssuredWorkloads::V1beta1::UpdateWorkloadRequest, request
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::AssuredWorkloads::V1beta1::Workload), request["workload"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Protobuf::FieldMask), request["update_mask"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, update_workload_client_stub do
      # Create client
      client = ::Google::Cloud::AssuredWorkloads::V1beta1::AssuredWorkloadsService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.update_workload({ workload: workload, update_mask: update_mask }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.update_workload workload: workload, update_mask: update_mask do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.update_workload ::Google::Cloud::AssuredWorkloads::V1beta1::UpdateWorkloadRequest.new(workload: workload, update_mask: update_mask) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.update_workload({ workload: workload, update_mask: update_mask }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.update_workload(::Google::Cloud::AssuredWorkloads::V1beta1::UpdateWorkloadRequest.new(workload: workload, update_mask: update_mask), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, update_workload_client_stub.call_rpc_count
    end
  end

  def test_restrict_allowed_resources
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::AssuredWorkloads::V1beta1::RestrictAllowedResourcesResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    restriction_type = :RESTRICTION_TYPE_UNSPECIFIED

    restrict_allowed_resources_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :restrict_allowed_resources, name
      assert_kind_of ::Google::Cloud::AssuredWorkloads::V1beta1::RestrictAllowedResourcesRequest, request
      assert_equal "hello world", request["name"]
      assert_equal :RESTRICTION_TYPE_UNSPECIFIED, request["restriction_type"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, restrict_allowed_resources_client_stub do
      # Create client
      client = ::Google::Cloud::AssuredWorkloads::V1beta1::AssuredWorkloadsService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.restrict_allowed_resources({ name: name, restriction_type: restriction_type }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.restrict_allowed_resources name: name, restriction_type: restriction_type do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.restrict_allowed_resources ::Google::Cloud::AssuredWorkloads::V1beta1::RestrictAllowedResourcesRequest.new(name: name, restriction_type: restriction_type) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.restrict_allowed_resources({ name: name, restriction_type: restriction_type }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.restrict_allowed_resources(::Google::Cloud::AssuredWorkloads::V1beta1::RestrictAllowedResourcesRequest.new(name: name, restriction_type: restriction_type), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, restrict_allowed_resources_client_stub.call_rpc_count
    end
  end

  def test_delete_workload
    # Create GRPC objects.
    grpc_response = ::Google::Protobuf::Empty.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    etag = "hello world"

    delete_workload_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :delete_workload, name
      assert_kind_of ::Google::Cloud::AssuredWorkloads::V1beta1::DeleteWorkloadRequest, request
      assert_equal "hello world", request["name"]
      assert_equal "hello world", request["etag"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, delete_workload_client_stub do
      # Create client
      client = ::Google::Cloud::AssuredWorkloads::V1beta1::AssuredWorkloadsService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.delete_workload({ name: name, etag: etag }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.delete_workload name: name, etag: etag do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.delete_workload ::Google::Cloud::AssuredWorkloads::V1beta1::DeleteWorkloadRequest.new(name: name, etag: etag) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.delete_workload({ name: name, etag: etag }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.delete_workload(::Google::Cloud::AssuredWorkloads::V1beta1::DeleteWorkloadRequest.new(name: name, etag: etag), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, delete_workload_client_stub.call_rpc_count
    end
  end

  def test_get_workload
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::AssuredWorkloads::V1beta1::Workload.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_workload_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_workload, name
      assert_kind_of ::Google::Cloud::AssuredWorkloads::V1beta1::GetWorkloadRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_workload_client_stub do
      # Create client
      client = ::Google::Cloud::AssuredWorkloads::V1beta1::AssuredWorkloadsService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_workload({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_workload name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_workload ::Google::Cloud::AssuredWorkloads::V1beta1::GetWorkloadRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_workload({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_workload(::Google::Cloud::AssuredWorkloads::V1beta1::GetWorkloadRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_workload_client_stub.call_rpc_count
    end
  end

  def test_analyze_workload_move
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::AssuredWorkloads::V1beta1::AnalyzeWorkloadMoveResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    source = "hello world"
    target = "hello world"

    analyze_workload_move_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :analyze_workload_move, name
      assert_kind_of ::Google::Cloud::AssuredWorkloads::V1beta1::AnalyzeWorkloadMoveRequest, request
      assert_equal "hello world", request["source"]
      assert_equal :source, request.projectOrWorkloadResource
      assert_equal "hello world", request["target"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, analyze_workload_move_client_stub do
      # Create client
      client = ::Google::Cloud::AssuredWorkloads::V1beta1::AssuredWorkloadsService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.analyze_workload_move({ source: source, target: target }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.analyze_workload_move source: source, target: target do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.analyze_workload_move ::Google::Cloud::AssuredWorkloads::V1beta1::AnalyzeWorkloadMoveRequest.new(source: source, target: target) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.analyze_workload_move({ source: source, target: target }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.analyze_workload_move(::Google::Cloud::AssuredWorkloads::V1beta1::AnalyzeWorkloadMoveRequest.new(source: source, target: target), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, analyze_workload_move_client_stub.call_rpc_count
    end
  end

  def test_list_workloads
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::AssuredWorkloads::V1beta1::ListWorkloadsResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"
    filter = "hello world"

    list_workloads_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_workloads, name
      assert_kind_of ::Google::Cloud::AssuredWorkloads::V1beta1::ListWorkloadsRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      assert_equal "hello world", request["filter"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_workloads_client_stub do
      # Create client
      client = ::Google::Cloud::AssuredWorkloads::V1beta1::AssuredWorkloadsService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_workloads({ parent: parent, page_size: page_size, page_token: page_token, filter: filter }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_workloads parent: parent, page_size: page_size, page_token: page_token, filter: filter do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_workloads ::Google::Cloud::AssuredWorkloads::V1beta1::ListWorkloadsRequest.new(parent: parent, page_size: page_size, page_token: page_token, filter: filter) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_workloads({ parent: parent, page_size: page_size, page_token: page_token, filter: filter }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_workloads(::Google::Cloud::AssuredWorkloads::V1beta1::ListWorkloadsRequest.new(parent: parent, page_size: page_size, page_token: page_token, filter: filter), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_workloads_client_stub.call_rpc_count
    end
  end

  def test_configure
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = block_config = config = nil
    dummy_stub = ClientStub.new nil, nil
    Gapic::ServiceStub.stub :new, dummy_stub do
      client = ::Google::Cloud::AssuredWorkloads::V1beta1::AssuredWorkloadsService::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::AssuredWorkloads::V1beta1::AssuredWorkloadsService::Client::Configuration, config
  end

  def test_operations_client
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = nil
    dummy_stub = ClientStub.new nil, nil
    Gapic::ServiceStub.stub :new, dummy_stub do
      client = ::Google::Cloud::AssuredWorkloads::V1beta1::AssuredWorkloadsService::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    assert_kind_of ::Google::Cloud::AssuredWorkloads::V1beta1::AssuredWorkloadsService::Operations, client.operations_client
  end
end
