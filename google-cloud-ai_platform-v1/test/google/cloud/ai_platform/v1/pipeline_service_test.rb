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

require "google/cloud/aiplatform/v1/pipeline_service_pb"
require "google/cloud/aiplatform/v1/pipeline_service_services_pb"
require "google/cloud/ai_platform/v1/pipeline_service"

class ::Google::Cloud::AIPlatform::V1::PipelineService::ClientTest < Minitest::Test
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

    def endpoint
      "endpoint.example.com"
    end

    def universe_domain
      "example.com"
    end
  end

  def test_create_training_pipeline
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::AIPlatform::V1::TrainingPipeline.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    training_pipeline = {}

    create_training_pipeline_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :create_training_pipeline, name
      assert_kind_of ::Google::Cloud::AIPlatform::V1::CreateTrainingPipelineRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::AIPlatform::V1::TrainingPipeline), request["training_pipeline"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, create_training_pipeline_client_stub do
      # Create client
      client = ::Google::Cloud::AIPlatform::V1::PipelineService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.create_training_pipeline({ parent: parent, training_pipeline: training_pipeline }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.create_training_pipeline parent: parent, training_pipeline: training_pipeline do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.create_training_pipeline ::Google::Cloud::AIPlatform::V1::CreateTrainingPipelineRequest.new(parent: parent, training_pipeline: training_pipeline) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.create_training_pipeline({ parent: parent, training_pipeline: training_pipeline }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.create_training_pipeline(::Google::Cloud::AIPlatform::V1::CreateTrainingPipelineRequest.new(parent: parent, training_pipeline: training_pipeline), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, create_training_pipeline_client_stub.call_rpc_count
    end
  end

  def test_get_training_pipeline
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::AIPlatform::V1::TrainingPipeline.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_training_pipeline_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_training_pipeline, name
      assert_kind_of ::Google::Cloud::AIPlatform::V1::GetTrainingPipelineRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_training_pipeline_client_stub do
      # Create client
      client = ::Google::Cloud::AIPlatform::V1::PipelineService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_training_pipeline({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_training_pipeline name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_training_pipeline ::Google::Cloud::AIPlatform::V1::GetTrainingPipelineRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_training_pipeline({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_training_pipeline(::Google::Cloud::AIPlatform::V1::GetTrainingPipelineRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_training_pipeline_client_stub.call_rpc_count
    end
  end

  def test_list_training_pipelines
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::AIPlatform::V1::ListTrainingPipelinesResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    filter = "hello world"
    page_size = 42
    page_token = "hello world"
    read_mask = {}

    list_training_pipelines_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_training_pipelines, name
      assert_kind_of ::Google::Cloud::AIPlatform::V1::ListTrainingPipelinesRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal "hello world", request["filter"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Protobuf::FieldMask), request["read_mask"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_training_pipelines_client_stub do
      # Create client
      client = ::Google::Cloud::AIPlatform::V1::PipelineService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_training_pipelines({ parent: parent, filter: filter, page_size: page_size, page_token: page_token, read_mask: read_mask }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_training_pipelines parent: parent, filter: filter, page_size: page_size, page_token: page_token, read_mask: read_mask do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_training_pipelines ::Google::Cloud::AIPlatform::V1::ListTrainingPipelinesRequest.new(parent: parent, filter: filter, page_size: page_size, page_token: page_token, read_mask: read_mask) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_training_pipelines({ parent: parent, filter: filter, page_size: page_size, page_token: page_token, read_mask: read_mask }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_training_pipelines(::Google::Cloud::AIPlatform::V1::ListTrainingPipelinesRequest.new(parent: parent, filter: filter, page_size: page_size, page_token: page_token, read_mask: read_mask), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_training_pipelines_client_stub.call_rpc_count
    end
  end

  def test_delete_training_pipeline
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    delete_training_pipeline_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :delete_training_pipeline, name
      assert_kind_of ::Google::Cloud::AIPlatform::V1::DeleteTrainingPipelineRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, delete_training_pipeline_client_stub do
      # Create client
      client = ::Google::Cloud::AIPlatform::V1::PipelineService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.delete_training_pipeline({ name: name }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.delete_training_pipeline name: name do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.delete_training_pipeline ::Google::Cloud::AIPlatform::V1::DeleteTrainingPipelineRequest.new(name: name) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.delete_training_pipeline({ name: name }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.delete_training_pipeline(::Google::Cloud::AIPlatform::V1::DeleteTrainingPipelineRequest.new(name: name), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, delete_training_pipeline_client_stub.call_rpc_count
    end
  end

  def test_cancel_training_pipeline
    # Create GRPC objects.
    grpc_response = ::Google::Protobuf::Empty.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    cancel_training_pipeline_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :cancel_training_pipeline, name
      assert_kind_of ::Google::Cloud::AIPlatform::V1::CancelTrainingPipelineRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, cancel_training_pipeline_client_stub do
      # Create client
      client = ::Google::Cloud::AIPlatform::V1::PipelineService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.cancel_training_pipeline({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.cancel_training_pipeline name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.cancel_training_pipeline ::Google::Cloud::AIPlatform::V1::CancelTrainingPipelineRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.cancel_training_pipeline({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.cancel_training_pipeline(::Google::Cloud::AIPlatform::V1::CancelTrainingPipelineRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, cancel_training_pipeline_client_stub.call_rpc_count
    end
  end

  def test_create_pipeline_job
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::AIPlatform::V1::PipelineJob.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    pipeline_job = {}
    pipeline_job_id = "hello world"

    create_pipeline_job_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :create_pipeline_job, name
      assert_kind_of ::Google::Cloud::AIPlatform::V1::CreatePipelineJobRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::AIPlatform::V1::PipelineJob), request["pipeline_job"]
      assert_equal "hello world", request["pipeline_job_id"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, create_pipeline_job_client_stub do
      # Create client
      client = ::Google::Cloud::AIPlatform::V1::PipelineService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.create_pipeline_job({ parent: parent, pipeline_job: pipeline_job, pipeline_job_id: pipeline_job_id }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.create_pipeline_job parent: parent, pipeline_job: pipeline_job, pipeline_job_id: pipeline_job_id do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.create_pipeline_job ::Google::Cloud::AIPlatform::V1::CreatePipelineJobRequest.new(parent: parent, pipeline_job: pipeline_job, pipeline_job_id: pipeline_job_id) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.create_pipeline_job({ parent: parent, pipeline_job: pipeline_job, pipeline_job_id: pipeline_job_id }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.create_pipeline_job(::Google::Cloud::AIPlatform::V1::CreatePipelineJobRequest.new(parent: parent, pipeline_job: pipeline_job, pipeline_job_id: pipeline_job_id), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, create_pipeline_job_client_stub.call_rpc_count
    end
  end

  def test_get_pipeline_job
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::AIPlatform::V1::PipelineJob.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_pipeline_job_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_pipeline_job, name
      assert_kind_of ::Google::Cloud::AIPlatform::V1::GetPipelineJobRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_pipeline_job_client_stub do
      # Create client
      client = ::Google::Cloud::AIPlatform::V1::PipelineService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_pipeline_job({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_pipeline_job name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_pipeline_job ::Google::Cloud::AIPlatform::V1::GetPipelineJobRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_pipeline_job({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_pipeline_job(::Google::Cloud::AIPlatform::V1::GetPipelineJobRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_pipeline_job_client_stub.call_rpc_count
    end
  end

  def test_list_pipeline_jobs
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::AIPlatform::V1::ListPipelineJobsResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    filter = "hello world"
    page_size = 42
    page_token = "hello world"
    order_by = "hello world"
    read_mask = {}

    list_pipeline_jobs_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_pipeline_jobs, name
      assert_kind_of ::Google::Cloud::AIPlatform::V1::ListPipelineJobsRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal "hello world", request["filter"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      assert_equal "hello world", request["order_by"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Protobuf::FieldMask), request["read_mask"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_pipeline_jobs_client_stub do
      # Create client
      client = ::Google::Cloud::AIPlatform::V1::PipelineService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_pipeline_jobs({ parent: parent, filter: filter, page_size: page_size, page_token: page_token, order_by: order_by, read_mask: read_mask }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_pipeline_jobs parent: parent, filter: filter, page_size: page_size, page_token: page_token, order_by: order_by, read_mask: read_mask do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_pipeline_jobs ::Google::Cloud::AIPlatform::V1::ListPipelineJobsRequest.new(parent: parent, filter: filter, page_size: page_size, page_token: page_token, order_by: order_by, read_mask: read_mask) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_pipeline_jobs({ parent: parent, filter: filter, page_size: page_size, page_token: page_token, order_by: order_by, read_mask: read_mask }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_pipeline_jobs(::Google::Cloud::AIPlatform::V1::ListPipelineJobsRequest.new(parent: parent, filter: filter, page_size: page_size, page_token: page_token, order_by: order_by, read_mask: read_mask), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_pipeline_jobs_client_stub.call_rpc_count
    end
  end

  def test_delete_pipeline_job
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    delete_pipeline_job_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :delete_pipeline_job, name
      assert_kind_of ::Google::Cloud::AIPlatform::V1::DeletePipelineJobRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, delete_pipeline_job_client_stub do
      # Create client
      client = ::Google::Cloud::AIPlatform::V1::PipelineService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.delete_pipeline_job({ name: name }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.delete_pipeline_job name: name do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.delete_pipeline_job ::Google::Cloud::AIPlatform::V1::DeletePipelineJobRequest.new(name: name) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.delete_pipeline_job({ name: name }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.delete_pipeline_job(::Google::Cloud::AIPlatform::V1::DeletePipelineJobRequest.new(name: name), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, delete_pipeline_job_client_stub.call_rpc_count
    end
  end

  def test_cancel_pipeline_job
    # Create GRPC objects.
    grpc_response = ::Google::Protobuf::Empty.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    cancel_pipeline_job_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :cancel_pipeline_job, name
      assert_kind_of ::Google::Cloud::AIPlatform::V1::CancelPipelineJobRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, cancel_pipeline_job_client_stub do
      # Create client
      client = ::Google::Cloud::AIPlatform::V1::PipelineService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.cancel_pipeline_job({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.cancel_pipeline_job name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.cancel_pipeline_job ::Google::Cloud::AIPlatform::V1::CancelPipelineJobRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.cancel_pipeline_job({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.cancel_pipeline_job(::Google::Cloud::AIPlatform::V1::CancelPipelineJobRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, cancel_pipeline_job_client_stub.call_rpc_count
    end
  end

  def test_configure
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = block_config = config = nil
    dummy_stub = ClientStub.new nil, nil
    Gapic::ServiceStub.stub :new, dummy_stub do
      client = ::Google::Cloud::AIPlatform::V1::PipelineService::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::AIPlatform::V1::PipelineService::Client::Configuration, config
  end

  def test_operations_client
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = nil
    dummy_stub = ClientStub.new nil, nil
    Gapic::ServiceStub.stub :new, dummy_stub do
      client = ::Google::Cloud::AIPlatform::V1::PipelineService::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    assert_kind_of ::Google::Cloud::AIPlatform::V1::PipelineService::Operations, client.operations_client
  end
end
