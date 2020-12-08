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

require "google/firestore/admin/v1/firestore_admin_pb"
require "google/firestore/admin/v1/firestore_admin_services_pb"
require "google/cloud/firestore/admin/v1/firestore_admin"

class ::Google::Cloud::Firestore::Admin::V1::FirestoreAdmin::ClientTest < Minitest::Test
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

      yield @response, @operation if block_given?

      @response
    end
  end

  def test_create_index
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    index = {}

    create_index_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :create_index, name
      assert_kind_of ::Google::Cloud::Firestore::Admin::V1::CreateIndexRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Firestore::Admin::V1::Index), request["index"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, create_index_client_stub do
      # Create client
      client = ::Google::Cloud::Firestore::Admin::V1::FirestoreAdmin::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.create_index({ parent: parent, index: index }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.create_index parent: parent, index: index do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.create_index ::Google::Cloud::Firestore::Admin::V1::CreateIndexRequest.new(parent: parent, index: index) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.create_index({ parent: parent, index: index }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.create_index ::Google::Cloud::Firestore::Admin::V1::CreateIndexRequest.new(parent: parent, index: index), grpc_options do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, create_index_client_stub.call_rpc_count
    end
  end

  def test_list_indexes
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Firestore::Admin::V1::ListIndexesResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    filter = "hello world"
    page_size = 42
    page_token = "hello world"

    list_indexes_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_indexes, name
      assert_kind_of ::Google::Cloud::Firestore::Admin::V1::ListIndexesRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal "hello world", request["filter"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_indexes_client_stub do
      # Create client
      client = ::Google::Cloud::Firestore::Admin::V1::FirestoreAdmin::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_indexes({ parent: parent, filter: filter, page_size: page_size, page_token: page_token }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_indexes parent: parent, filter: filter, page_size: page_size, page_token: page_token do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_indexes ::Google::Cloud::Firestore::Admin::V1::ListIndexesRequest.new(parent: parent, filter: filter, page_size: page_size, page_token: page_token) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_indexes({ parent: parent, filter: filter, page_size: page_size, page_token: page_token }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_indexes ::Google::Cloud::Firestore::Admin::V1::ListIndexesRequest.new(parent: parent, filter: filter, page_size: page_size, page_token: page_token), grpc_options do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_indexes_client_stub.call_rpc_count
    end
  end

  def test_get_index
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Firestore::Admin::V1::Index.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_index_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_index, name
      assert_kind_of ::Google::Cloud::Firestore::Admin::V1::GetIndexRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_index_client_stub do
      # Create client
      client = ::Google::Cloud::Firestore::Admin::V1::FirestoreAdmin::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_index({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_index name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_index ::Google::Cloud::Firestore::Admin::V1::GetIndexRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_index({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_index ::Google::Cloud::Firestore::Admin::V1::GetIndexRequest.new(name: name), grpc_options do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_index_client_stub.call_rpc_count
    end
  end

  def test_delete_index
    # Create GRPC objects.
    grpc_response = ::Google::Protobuf::Empty.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    delete_index_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :delete_index, name
      assert_kind_of ::Google::Cloud::Firestore::Admin::V1::DeleteIndexRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, delete_index_client_stub do
      # Create client
      client = ::Google::Cloud::Firestore::Admin::V1::FirestoreAdmin::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.delete_index({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.delete_index name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.delete_index ::Google::Cloud::Firestore::Admin::V1::DeleteIndexRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.delete_index({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.delete_index ::Google::Cloud::Firestore::Admin::V1::DeleteIndexRequest.new(name: name), grpc_options do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, delete_index_client_stub.call_rpc_count
    end
  end

  def test_get_field
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Firestore::Admin::V1::Field.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_field_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_field, name
      assert_kind_of ::Google::Cloud::Firestore::Admin::V1::GetFieldRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_field_client_stub do
      # Create client
      client = ::Google::Cloud::Firestore::Admin::V1::FirestoreAdmin::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_field({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_field name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_field ::Google::Cloud::Firestore::Admin::V1::GetFieldRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_field({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_field ::Google::Cloud::Firestore::Admin::V1::GetFieldRequest.new(name: name), grpc_options do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_field_client_stub.call_rpc_count
    end
  end

  def test_update_field
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    field = {}
    update_mask = {}

    update_field_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :update_field, name
      assert_kind_of ::Google::Cloud::Firestore::Admin::V1::UpdateFieldRequest, request
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Firestore::Admin::V1::Field), request["field"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Protobuf::FieldMask), request["update_mask"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, update_field_client_stub do
      # Create client
      client = ::Google::Cloud::Firestore::Admin::V1::FirestoreAdmin::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.update_field({ field: field, update_mask: update_mask }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.update_field field: field, update_mask: update_mask do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.update_field ::Google::Cloud::Firestore::Admin::V1::UpdateFieldRequest.new(field: field, update_mask: update_mask) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.update_field({ field: field, update_mask: update_mask }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.update_field ::Google::Cloud::Firestore::Admin::V1::UpdateFieldRequest.new(field: field, update_mask: update_mask), grpc_options do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, update_field_client_stub.call_rpc_count
    end
  end

  def test_list_fields
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Firestore::Admin::V1::ListFieldsResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    filter = "hello world"
    page_size = 42
    page_token = "hello world"

    list_fields_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_fields, name
      assert_kind_of ::Google::Cloud::Firestore::Admin::V1::ListFieldsRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal "hello world", request["filter"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_fields_client_stub do
      # Create client
      client = ::Google::Cloud::Firestore::Admin::V1::FirestoreAdmin::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_fields({ parent: parent, filter: filter, page_size: page_size, page_token: page_token }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_fields parent: parent, filter: filter, page_size: page_size, page_token: page_token do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_fields ::Google::Cloud::Firestore::Admin::V1::ListFieldsRequest.new(parent: parent, filter: filter, page_size: page_size, page_token: page_token) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_fields({ parent: parent, filter: filter, page_size: page_size, page_token: page_token }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_fields ::Google::Cloud::Firestore::Admin::V1::ListFieldsRequest.new(parent: parent, filter: filter, page_size: page_size, page_token: page_token), grpc_options do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_fields_client_stub.call_rpc_count
    end
  end

  def test_export_documents
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    collection_ids = ["hello world"]
    output_uri_prefix = "hello world"

    export_documents_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :export_documents, name
      assert_kind_of ::Google::Cloud::Firestore::Admin::V1::ExportDocumentsRequest, request
      assert_equal "hello world", request["name"]
      assert_equal ["hello world"], request["collection_ids"]
      assert_equal "hello world", request["output_uri_prefix"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, export_documents_client_stub do
      # Create client
      client = ::Google::Cloud::Firestore::Admin::V1::FirestoreAdmin::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.export_documents({ name: name, collection_ids: collection_ids, output_uri_prefix: output_uri_prefix }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.export_documents name: name, collection_ids: collection_ids, output_uri_prefix: output_uri_prefix do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.export_documents ::Google::Cloud::Firestore::Admin::V1::ExportDocumentsRequest.new(name: name, collection_ids: collection_ids, output_uri_prefix: output_uri_prefix) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.export_documents({ name: name, collection_ids: collection_ids, output_uri_prefix: output_uri_prefix }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.export_documents ::Google::Cloud::Firestore::Admin::V1::ExportDocumentsRequest.new(name: name, collection_ids: collection_ids, output_uri_prefix: output_uri_prefix), grpc_options do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, export_documents_client_stub.call_rpc_count
    end
  end

  def test_import_documents
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    collection_ids = ["hello world"]
    input_uri_prefix = "hello world"

    import_documents_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :import_documents, name
      assert_kind_of ::Google::Cloud::Firestore::Admin::V1::ImportDocumentsRequest, request
      assert_equal "hello world", request["name"]
      assert_equal ["hello world"], request["collection_ids"]
      assert_equal "hello world", request["input_uri_prefix"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, import_documents_client_stub do
      # Create client
      client = ::Google::Cloud::Firestore::Admin::V1::FirestoreAdmin::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.import_documents({ name: name, collection_ids: collection_ids, input_uri_prefix: input_uri_prefix }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.import_documents name: name, collection_ids: collection_ids, input_uri_prefix: input_uri_prefix do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.import_documents ::Google::Cloud::Firestore::Admin::V1::ImportDocumentsRequest.new(name: name, collection_ids: collection_ids, input_uri_prefix: input_uri_prefix) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.import_documents({ name: name, collection_ids: collection_ids, input_uri_prefix: input_uri_prefix }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.import_documents ::Google::Cloud::Firestore::Admin::V1::ImportDocumentsRequest.new(name: name, collection_ids: collection_ids, input_uri_prefix: input_uri_prefix), grpc_options do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, import_documents_client_stub.call_rpc_count
    end
  end

  def test_configure
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = block_config = config = nil
    Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Firestore::Admin::V1::FirestoreAdmin::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::Firestore::Admin::V1::FirestoreAdmin::Client::Configuration, config
  end

  def test_operations_client
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = nil
    Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Firestore::Admin::V1::FirestoreAdmin::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    assert_kind_of ::Google::Cloud::Firestore::Admin::V1::FirestoreAdmin::Operations, client.operations_client
  end
end
