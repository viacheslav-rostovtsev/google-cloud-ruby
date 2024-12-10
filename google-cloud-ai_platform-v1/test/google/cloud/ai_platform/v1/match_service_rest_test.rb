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
require "google/cloud/aiplatform/v1/match_service_pb"
require "google/cloud/ai_platform/v1/match_service/rest"


class ::Google::Cloud::AIPlatform::V1::MatchService::Rest::ClientTest < Minitest::Test
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
  end

  def test_find_neighbors
    # Create test objects.
    client_result = ::Google::Cloud::AIPlatform::V1::FindNeighborsResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    index_endpoint = "hello world"
    deployed_index_id = "hello world"
    queries = [{}]
    return_full_datapoint = true

    find_neighbors_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::AIPlatform::V1::MatchService::Rest::ServiceStub.stub :transcode_find_neighbors_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, find_neighbors_client_stub do
        # Create client
        client = ::Google::Cloud::AIPlatform::V1::MatchService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.find_neighbors({ index_endpoint: index_endpoint, deployed_index_id: deployed_index_id, queries: queries, return_full_datapoint: return_full_datapoint }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.find_neighbors index_endpoint: index_endpoint, deployed_index_id: deployed_index_id, queries: queries, return_full_datapoint: return_full_datapoint do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.find_neighbors ::Google::Cloud::AIPlatform::V1::FindNeighborsRequest.new(index_endpoint: index_endpoint, deployed_index_id: deployed_index_id, queries: queries, return_full_datapoint: return_full_datapoint) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.find_neighbors({ index_endpoint: index_endpoint, deployed_index_id: deployed_index_id, queries: queries, return_full_datapoint: return_full_datapoint }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.find_neighbors(::Google::Cloud::AIPlatform::V1::FindNeighborsRequest.new(index_endpoint: index_endpoint, deployed_index_id: deployed_index_id, queries: queries, return_full_datapoint: return_full_datapoint), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, find_neighbors_client_stub.call_count
      end
    end
  end

  def test_read_index_datapoints
    # Create test objects.
    client_result = ::Google::Cloud::AIPlatform::V1::ReadIndexDatapointsResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    index_endpoint = "hello world"
    deployed_index_id = "hello world"
    ids = ["hello world"]

    read_index_datapoints_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::AIPlatform::V1::MatchService::Rest::ServiceStub.stub :transcode_read_index_datapoints_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, read_index_datapoints_client_stub do
        # Create client
        client = ::Google::Cloud::AIPlatform::V1::MatchService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.read_index_datapoints({ index_endpoint: index_endpoint, deployed_index_id: deployed_index_id, ids: ids }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.read_index_datapoints index_endpoint: index_endpoint, deployed_index_id: deployed_index_id, ids: ids do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.read_index_datapoints ::Google::Cloud::AIPlatform::V1::ReadIndexDatapointsRequest.new(index_endpoint: index_endpoint, deployed_index_id: deployed_index_id, ids: ids) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.read_index_datapoints({ index_endpoint: index_endpoint, deployed_index_id: deployed_index_id, ids: ids }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.read_index_datapoints(::Google::Cloud::AIPlatform::V1::ReadIndexDatapointsRequest.new(index_endpoint: index_endpoint, deployed_index_id: deployed_index_id, ids: ids), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, read_index_datapoints_client_stub.call_count
      end
    end
  end

  def test_configure
    credentials_token = :dummy_value

    client = block_config = config = nil
    dummy_stub = ClientStub.new nil
    Gapic::Rest::ClientStub.stub :new, dummy_stub do
      client = ::Google::Cloud::AIPlatform::V1::MatchService::Rest::Client.new do |config|
        config.credentials = credentials_token
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::AIPlatform::V1::MatchService::Rest::Client::Configuration, config
  end
end
