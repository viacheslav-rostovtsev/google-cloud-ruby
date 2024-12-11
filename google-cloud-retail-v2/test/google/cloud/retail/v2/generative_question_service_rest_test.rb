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
require "gapic/rest"
require "google/cloud/retail/v2/generative_question_service_pb"
require "google/cloud/retail/v2/generative_question_service/rest"


class ::Google::Cloud::Retail::V2::GenerativeQuestionService::Rest::ClientTest < Minitest::Test
  class ClientStub
    attr_accessor :call_count, :requests

    def initialize response, &block
      @response = response
      @block = block
      @call_count = 0
      @requests = []
    end

    def make_get_request uri:, params: {}, options: {}, method_name: nil
      make_http_request :get, uri: uri, body: nil, params: params, options: options, method_name: method_name
    end

    def make_delete_request uri:, params: {}, options: {}, method_name: nil
      make_http_request :delete, uri: uri, body: nil, params: params, options: options, method_name: method_name
    end

    def make_post_request uri:, body: nil, params: {}, options: {}, method_name: nil
      make_http_request :post, uri: uri, body: body, params: params, options: options, method_name: method_name
    end

    def make_patch_request uri:, body:, params: {}, options: {}, method_name: nil
      make_http_request :patch, uri: uri, body: body, params: params, options: options, method_name: method_name
    end

    def make_put_request uri:, body:, params: {}, options: {}, method_name: nil
      make_http_request :put, uri: uri, body: body, params: params, options: options, method_name: method_name
    end

    def make_http_request *args, **kwargs
      @call_count += 1

      @requests << @block&.call(*args, **kwargs)

      @response
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

  def test_update_generative_questions_feature_config
    # Create test objects.
    client_result = ::Google::Cloud::Retail::V2::GenerativeQuestionsFeatureConfig.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    generative_questions_feature_config = {}
    update_mask = {}

    update_generative_questions_feature_config_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Retail::V2::GenerativeQuestionService::Rest::ServiceStub.stub :transcode_update_generative_questions_feature_config_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, update_generative_questions_feature_config_client_stub do
        # Create client
        client = ::Google::Cloud::Retail::V2::GenerativeQuestionService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.update_generative_questions_feature_config({ generative_questions_feature_config: generative_questions_feature_config, update_mask: update_mask }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.update_generative_questions_feature_config generative_questions_feature_config: generative_questions_feature_config, update_mask: update_mask do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.update_generative_questions_feature_config ::Google::Cloud::Retail::V2::UpdateGenerativeQuestionsFeatureConfigRequest.new(generative_questions_feature_config: generative_questions_feature_config, update_mask: update_mask) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.update_generative_questions_feature_config({ generative_questions_feature_config: generative_questions_feature_config, update_mask: update_mask }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.update_generative_questions_feature_config(::Google::Cloud::Retail::V2::UpdateGenerativeQuestionsFeatureConfigRequest.new(generative_questions_feature_config: generative_questions_feature_config, update_mask: update_mask), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, update_generative_questions_feature_config_client_stub.call_count
      end
    end
  end

  def test_get_generative_questions_feature_config
    # Create test objects.
    client_result = ::Google::Cloud::Retail::V2::GenerativeQuestionsFeatureConfig.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    catalog = "hello world"

    get_generative_questions_feature_config_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Retail::V2::GenerativeQuestionService::Rest::ServiceStub.stub :transcode_get_generative_questions_feature_config_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, get_generative_questions_feature_config_client_stub do
        # Create client
        client = ::Google::Cloud::Retail::V2::GenerativeQuestionService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.get_generative_questions_feature_config({ catalog: catalog }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.get_generative_questions_feature_config catalog: catalog do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.get_generative_questions_feature_config ::Google::Cloud::Retail::V2::GetGenerativeQuestionsFeatureConfigRequest.new(catalog: catalog) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.get_generative_questions_feature_config({ catalog: catalog }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.get_generative_questions_feature_config(::Google::Cloud::Retail::V2::GetGenerativeQuestionsFeatureConfigRequest.new(catalog: catalog), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, get_generative_questions_feature_config_client_stub.call_count
      end
    end
  end

  def test_list_generative_question_configs
    # Create test objects.
    client_result = ::Google::Cloud::Retail::V2::ListGenerativeQuestionConfigsResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"

    list_generative_question_configs_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Retail::V2::GenerativeQuestionService::Rest::ServiceStub.stub :transcode_list_generative_question_configs_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, list_generative_question_configs_client_stub do
        # Create client
        client = ::Google::Cloud::Retail::V2::GenerativeQuestionService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.list_generative_question_configs({ parent: parent }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.list_generative_question_configs parent: parent do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.list_generative_question_configs ::Google::Cloud::Retail::V2::ListGenerativeQuestionConfigsRequest.new(parent: parent) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.list_generative_question_configs({ parent: parent }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.list_generative_question_configs(::Google::Cloud::Retail::V2::ListGenerativeQuestionConfigsRequest.new(parent: parent), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, list_generative_question_configs_client_stub.call_count
      end
    end
  end

  def test_update_generative_question_config
    # Create test objects.
    client_result = ::Google::Cloud::Retail::V2::GenerativeQuestionConfig.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    generative_question_config = {}
    update_mask = {}

    update_generative_question_config_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Retail::V2::GenerativeQuestionService::Rest::ServiceStub.stub :transcode_update_generative_question_config_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, update_generative_question_config_client_stub do
        # Create client
        client = ::Google::Cloud::Retail::V2::GenerativeQuestionService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.update_generative_question_config({ generative_question_config: generative_question_config, update_mask: update_mask }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.update_generative_question_config generative_question_config: generative_question_config, update_mask: update_mask do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.update_generative_question_config ::Google::Cloud::Retail::V2::UpdateGenerativeQuestionConfigRequest.new(generative_question_config: generative_question_config, update_mask: update_mask) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.update_generative_question_config({ generative_question_config: generative_question_config, update_mask: update_mask }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.update_generative_question_config(::Google::Cloud::Retail::V2::UpdateGenerativeQuestionConfigRequest.new(generative_question_config: generative_question_config, update_mask: update_mask), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, update_generative_question_config_client_stub.call_count
      end
    end
  end

  def test_batch_update_generative_question_configs
    # Create test objects.
    client_result = ::Google::Cloud::Retail::V2::BatchUpdateGenerativeQuestionConfigsResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    requests = [{}]

    batch_update_generative_question_configs_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Retail::V2::GenerativeQuestionService::Rest::ServiceStub.stub :transcode_batch_update_generative_question_configs_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, batch_update_generative_question_configs_client_stub do
        # Create client
        client = ::Google::Cloud::Retail::V2::GenerativeQuestionService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.batch_update_generative_question_configs({ parent: parent, requests: requests }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.batch_update_generative_question_configs parent: parent, requests: requests do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.batch_update_generative_question_configs ::Google::Cloud::Retail::V2::BatchUpdateGenerativeQuestionConfigsRequest.new(parent: parent, requests: requests) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.batch_update_generative_question_configs({ parent: parent, requests: requests }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.batch_update_generative_question_configs(::Google::Cloud::Retail::V2::BatchUpdateGenerativeQuestionConfigsRequest.new(parent: parent, requests: requests), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, batch_update_generative_question_configs_client_stub.call_count
      end
    end
  end

  def test_configure
    credentials_token = :dummy_value

    client = block_config = config = nil
    dummy_stub = ClientStub.new nil
    Gapic::Rest::ClientStub.stub :new, dummy_stub do
      client = ::Google::Cloud::Retail::V2::GenerativeQuestionService::Rest::Client.new do |config|
        config.credentials = credentials_token
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::Retail::V2::GenerativeQuestionService::Rest::Client::Configuration, config
  end
end
