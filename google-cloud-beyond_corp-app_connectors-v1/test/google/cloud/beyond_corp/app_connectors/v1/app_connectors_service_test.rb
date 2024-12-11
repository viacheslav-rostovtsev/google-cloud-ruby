# frozen_string_literal: true

# Copyright 2022 Google LLC
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

require "google/cloud/beyondcorp/appconnectors/v1/app_connectors_service_pb"
require "google/cloud/beyondcorp/appconnectors/v1/app_connectors_service_services_pb"
require "google/cloud/beyond_corp/app_connectors/v1/app_connectors_service"

class ::Google::Cloud::BeyondCorp::AppConnectors::V1::AppConnectorsService::ClientTest < Minitest::Test
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

  def test_list_app_connectors
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::BeyondCorp::AppConnectors::V1::ListAppConnectorsResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"
    filter = "hello world"
    order_by = "hello world"

    list_app_connectors_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_app_connectors, name
      assert_kind_of ::Google::Cloud::BeyondCorp::AppConnectors::V1::ListAppConnectorsRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      assert_equal "hello world", request["filter"]
      assert_equal "hello world", request["order_by"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_app_connectors_client_stub do
      # Create client
      client = ::Google::Cloud::BeyondCorp::AppConnectors::V1::AppConnectorsService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_app_connectors({ parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_app_connectors parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_app_connectors ::Google::Cloud::BeyondCorp::AppConnectors::V1::ListAppConnectorsRequest.new(parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_app_connectors({ parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_app_connectors(::Google::Cloud::BeyondCorp::AppConnectors::V1::ListAppConnectorsRequest.new(parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_app_connectors_client_stub.call_rpc_count
    end
  end

  def test_get_app_connector
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::BeyondCorp::AppConnectors::V1::AppConnector.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_app_connector_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_app_connector, name
      assert_kind_of ::Google::Cloud::BeyondCorp::AppConnectors::V1::GetAppConnectorRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_app_connector_client_stub do
      # Create client
      client = ::Google::Cloud::BeyondCorp::AppConnectors::V1::AppConnectorsService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_app_connector({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_app_connector name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_app_connector ::Google::Cloud::BeyondCorp::AppConnectors::V1::GetAppConnectorRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_app_connector({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_app_connector(::Google::Cloud::BeyondCorp::AppConnectors::V1::GetAppConnectorRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_app_connector_client_stub.call_rpc_count
    end
  end

  def test_create_app_connector
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    app_connector_id = "hello world"
    app_connector = {}
    request_id = "hello world"
    validate_only = true

    create_app_connector_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :create_app_connector, name
      assert_kind_of ::Google::Cloud::BeyondCorp::AppConnectors::V1::CreateAppConnectorRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal "hello world", request["app_connector_id"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::BeyondCorp::AppConnectors::V1::AppConnector), request["app_connector"]
      assert_equal "hello world", request["request_id"]
      assert_equal true, request["validate_only"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, create_app_connector_client_stub do
      # Create client
      client = ::Google::Cloud::BeyondCorp::AppConnectors::V1::AppConnectorsService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.create_app_connector({ parent: parent, app_connector_id: app_connector_id, app_connector: app_connector, request_id: request_id, validate_only: validate_only }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.create_app_connector parent: parent, app_connector_id: app_connector_id, app_connector: app_connector, request_id: request_id, validate_only: validate_only do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.create_app_connector ::Google::Cloud::BeyondCorp::AppConnectors::V1::CreateAppConnectorRequest.new(parent: parent, app_connector_id: app_connector_id, app_connector: app_connector, request_id: request_id, validate_only: validate_only) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.create_app_connector({ parent: parent, app_connector_id: app_connector_id, app_connector: app_connector, request_id: request_id, validate_only: validate_only }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.create_app_connector(::Google::Cloud::BeyondCorp::AppConnectors::V1::CreateAppConnectorRequest.new(parent: parent, app_connector_id: app_connector_id, app_connector: app_connector, request_id: request_id, validate_only: validate_only), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, create_app_connector_client_stub.call_rpc_count
    end
  end

  def test_update_app_connector
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    update_mask = {}
    app_connector = {}
    request_id = "hello world"
    validate_only = true

    update_app_connector_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :update_app_connector, name
      assert_kind_of ::Google::Cloud::BeyondCorp::AppConnectors::V1::UpdateAppConnectorRequest, request
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Protobuf::FieldMask), request["update_mask"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::BeyondCorp::AppConnectors::V1::AppConnector), request["app_connector"]
      assert_equal "hello world", request["request_id"]
      assert_equal true, request["validate_only"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, update_app_connector_client_stub do
      # Create client
      client = ::Google::Cloud::BeyondCorp::AppConnectors::V1::AppConnectorsService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.update_app_connector({ update_mask: update_mask, app_connector: app_connector, request_id: request_id, validate_only: validate_only }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.update_app_connector update_mask: update_mask, app_connector: app_connector, request_id: request_id, validate_only: validate_only do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.update_app_connector ::Google::Cloud::BeyondCorp::AppConnectors::V1::UpdateAppConnectorRequest.new(update_mask: update_mask, app_connector: app_connector, request_id: request_id, validate_only: validate_only) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.update_app_connector({ update_mask: update_mask, app_connector: app_connector, request_id: request_id, validate_only: validate_only }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.update_app_connector(::Google::Cloud::BeyondCorp::AppConnectors::V1::UpdateAppConnectorRequest.new(update_mask: update_mask, app_connector: app_connector, request_id: request_id, validate_only: validate_only), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, update_app_connector_client_stub.call_rpc_count
    end
  end

  def test_delete_app_connector
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    request_id = "hello world"
    validate_only = true

    delete_app_connector_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :delete_app_connector, name
      assert_kind_of ::Google::Cloud::BeyondCorp::AppConnectors::V1::DeleteAppConnectorRequest, request
      assert_equal "hello world", request["name"]
      assert_equal "hello world", request["request_id"]
      assert_equal true, request["validate_only"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, delete_app_connector_client_stub do
      # Create client
      client = ::Google::Cloud::BeyondCorp::AppConnectors::V1::AppConnectorsService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.delete_app_connector({ name: name, request_id: request_id, validate_only: validate_only }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.delete_app_connector name: name, request_id: request_id, validate_only: validate_only do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.delete_app_connector ::Google::Cloud::BeyondCorp::AppConnectors::V1::DeleteAppConnectorRequest.new(name: name, request_id: request_id, validate_only: validate_only) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.delete_app_connector({ name: name, request_id: request_id, validate_only: validate_only }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.delete_app_connector(::Google::Cloud::BeyondCorp::AppConnectors::V1::DeleteAppConnectorRequest.new(name: name, request_id: request_id, validate_only: validate_only), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, delete_app_connector_client_stub.call_rpc_count
    end
  end

  def test_report_status
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    app_connector = "hello world"
    resource_info = {}
    request_id = "hello world"
    validate_only = true

    report_status_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :report_status, name
      assert_kind_of ::Google::Cloud::BeyondCorp::AppConnectors::V1::ReportStatusRequest, request
      assert_equal "hello world", request["app_connector"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::BeyondCorp::AppConnectors::V1::ResourceInfo), request["resource_info"]
      assert_equal "hello world", request["request_id"]
      assert_equal true, request["validate_only"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, report_status_client_stub do
      # Create client
      client = ::Google::Cloud::BeyondCorp::AppConnectors::V1::AppConnectorsService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.report_status({ app_connector: app_connector, resource_info: resource_info, request_id: request_id, validate_only: validate_only }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.report_status app_connector: app_connector, resource_info: resource_info, request_id: request_id, validate_only: validate_only do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.report_status ::Google::Cloud::BeyondCorp::AppConnectors::V1::ReportStatusRequest.new(app_connector: app_connector, resource_info: resource_info, request_id: request_id, validate_only: validate_only) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.report_status({ app_connector: app_connector, resource_info: resource_info, request_id: request_id, validate_only: validate_only }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.report_status(::Google::Cloud::BeyondCorp::AppConnectors::V1::ReportStatusRequest.new(app_connector: app_connector, resource_info: resource_info, request_id: request_id, validate_only: validate_only), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, report_status_client_stub.call_rpc_count
    end
  end

  def test_configure
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = block_config = config = nil
    dummy_stub = ClientStub.new nil, nil
    Gapic::ServiceStub.stub :new, dummy_stub do
      client = ::Google::Cloud::BeyondCorp::AppConnectors::V1::AppConnectorsService::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::BeyondCorp::AppConnectors::V1::AppConnectorsService::Client::Configuration, config
  end

  def test_operations_client
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = nil
    dummy_stub = ClientStub.new nil, nil
    Gapic::ServiceStub.stub :new, dummy_stub do
      client = ::Google::Cloud::BeyondCorp::AppConnectors::V1::AppConnectorsService::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    assert_kind_of ::Google::Cloud::BeyondCorp::AppConnectors::V1::AppConnectorsService::Operations, client.operations_client
  end
end
