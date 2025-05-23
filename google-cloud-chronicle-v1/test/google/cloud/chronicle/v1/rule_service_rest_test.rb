# frozen_string_literal: true

# Copyright 2025 Google LLC
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
require "google/cloud/chronicle/v1/rule_pb"
require "google/cloud/chronicle/v1/rule_service/rest"


class ::Google::Cloud::Chronicle::V1::RuleService::Rest::ClientTest < Minitest::Test
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

  def test_create_rule
    # Create test objects.
    client_result = ::Google::Cloud::Chronicle::V1::Rule.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    rule = {}

    create_rule_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Chronicle::V1::RuleService::Rest::ServiceStub.stub :transcode_create_rule_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, create_rule_client_stub do
        # Create client
        client = ::Google::Cloud::Chronicle::V1::RuleService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.create_rule({ parent: parent, rule: rule }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.create_rule parent: parent, rule: rule do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.create_rule ::Google::Cloud::Chronicle::V1::CreateRuleRequest.new(parent: parent, rule: rule) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.create_rule({ parent: parent, rule: rule }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.create_rule(::Google::Cloud::Chronicle::V1::CreateRuleRequest.new(parent: parent, rule: rule), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, create_rule_client_stub.call_count
      end
    end
  end

  def test_get_rule
    # Create test objects.
    client_result = ::Google::Cloud::Chronicle::V1::Rule.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    view = :RULE_VIEW_UNSPECIFIED

    get_rule_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Chronicle::V1::RuleService::Rest::ServiceStub.stub :transcode_get_rule_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, get_rule_client_stub do
        # Create client
        client = ::Google::Cloud::Chronicle::V1::RuleService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.get_rule({ name: name, view: view }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.get_rule name: name, view: view do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.get_rule ::Google::Cloud::Chronicle::V1::GetRuleRequest.new(name: name, view: view) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.get_rule({ name: name, view: view }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.get_rule(::Google::Cloud::Chronicle::V1::GetRuleRequest.new(name: name, view: view), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, get_rule_client_stub.call_count
      end
    end
  end

  def test_list_rules
    # Create test objects.
    client_result = ::Google::Cloud::Chronicle::V1::ListRulesResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"
    view = :RULE_VIEW_UNSPECIFIED
    filter = "hello world"

    list_rules_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Chronicle::V1::RuleService::Rest::ServiceStub.stub :transcode_list_rules_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, list_rules_client_stub do
        # Create client
        client = ::Google::Cloud::Chronicle::V1::RuleService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.list_rules({ parent: parent, page_size: page_size, page_token: page_token, view: view, filter: filter }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.list_rules parent: parent, page_size: page_size, page_token: page_token, view: view, filter: filter do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.list_rules ::Google::Cloud::Chronicle::V1::ListRulesRequest.new(parent: parent, page_size: page_size, page_token: page_token, view: view, filter: filter) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.list_rules({ parent: parent, page_size: page_size, page_token: page_token, view: view, filter: filter }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.list_rules(::Google::Cloud::Chronicle::V1::ListRulesRequest.new(parent: parent, page_size: page_size, page_token: page_token, view: view, filter: filter), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, list_rules_client_stub.call_count
      end
    end
  end

  def test_update_rule
    # Create test objects.
    client_result = ::Google::Cloud::Chronicle::V1::Rule.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    rule = {}
    update_mask = {}

    update_rule_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Chronicle::V1::RuleService::Rest::ServiceStub.stub :transcode_update_rule_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, update_rule_client_stub do
        # Create client
        client = ::Google::Cloud::Chronicle::V1::RuleService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.update_rule({ rule: rule, update_mask: update_mask }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.update_rule rule: rule, update_mask: update_mask do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.update_rule ::Google::Cloud::Chronicle::V1::UpdateRuleRequest.new(rule: rule, update_mask: update_mask) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.update_rule({ rule: rule, update_mask: update_mask }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.update_rule(::Google::Cloud::Chronicle::V1::UpdateRuleRequest.new(rule: rule, update_mask: update_mask), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, update_rule_client_stub.call_count
      end
    end
  end

  def test_delete_rule
    # Create test objects.
    client_result = ::Google::Protobuf::Empty.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    force = true

    delete_rule_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Chronicle::V1::RuleService::Rest::ServiceStub.stub :transcode_delete_rule_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, delete_rule_client_stub do
        # Create client
        client = ::Google::Cloud::Chronicle::V1::RuleService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.delete_rule({ name: name, force: force }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.delete_rule name: name, force: force do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.delete_rule ::Google::Cloud::Chronicle::V1::DeleteRuleRequest.new(name: name, force: force) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.delete_rule({ name: name, force: force }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.delete_rule(::Google::Cloud::Chronicle::V1::DeleteRuleRequest.new(name: name, force: force), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, delete_rule_client_stub.call_count
      end
    end
  end

  def test_list_rule_revisions
    # Create test objects.
    client_result = ::Google::Cloud::Chronicle::V1::ListRuleRevisionsResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    page_size = 42
    page_token = "hello world"
    view = :RULE_VIEW_UNSPECIFIED

    list_rule_revisions_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Chronicle::V1::RuleService::Rest::ServiceStub.stub :transcode_list_rule_revisions_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, list_rule_revisions_client_stub do
        # Create client
        client = ::Google::Cloud::Chronicle::V1::RuleService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.list_rule_revisions({ name: name, page_size: page_size, page_token: page_token, view: view }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.list_rule_revisions name: name, page_size: page_size, page_token: page_token, view: view do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.list_rule_revisions ::Google::Cloud::Chronicle::V1::ListRuleRevisionsRequest.new(name: name, page_size: page_size, page_token: page_token, view: view) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.list_rule_revisions({ name: name, page_size: page_size, page_token: page_token, view: view }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.list_rule_revisions(::Google::Cloud::Chronicle::V1::ListRuleRevisionsRequest.new(name: name, page_size: page_size, page_token: page_token, view: view), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, list_rule_revisions_client_stub.call_count
      end
    end
  end

  def test_create_retrohunt
    # Create test objects.
    client_result = ::Google::Longrunning::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    retrohunt = {}

    create_retrohunt_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Chronicle::V1::RuleService::Rest::ServiceStub.stub :transcode_create_retrohunt_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, create_retrohunt_client_stub do
        # Create client
        client = ::Google::Cloud::Chronicle::V1::RuleService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.create_retrohunt({ parent: parent, retrohunt: retrohunt }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.create_retrohunt parent: parent, retrohunt: retrohunt do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.create_retrohunt ::Google::Cloud::Chronicle::V1::CreateRetrohuntRequest.new(parent: parent, retrohunt: retrohunt) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.create_retrohunt({ parent: parent, retrohunt: retrohunt }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.create_retrohunt(::Google::Cloud::Chronicle::V1::CreateRetrohuntRequest.new(parent: parent, retrohunt: retrohunt), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, create_retrohunt_client_stub.call_count
      end
    end
  end

  def test_get_retrohunt
    # Create test objects.
    client_result = ::Google::Cloud::Chronicle::V1::Retrohunt.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_retrohunt_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Chronicle::V1::RuleService::Rest::ServiceStub.stub :transcode_get_retrohunt_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, get_retrohunt_client_stub do
        # Create client
        client = ::Google::Cloud::Chronicle::V1::RuleService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.get_retrohunt({ name: name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.get_retrohunt name: name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.get_retrohunt ::Google::Cloud::Chronicle::V1::GetRetrohuntRequest.new(name: name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.get_retrohunt({ name: name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.get_retrohunt(::Google::Cloud::Chronicle::V1::GetRetrohuntRequest.new(name: name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, get_retrohunt_client_stub.call_count
      end
    end
  end

  def test_list_retrohunts
    # Create test objects.
    client_result = ::Google::Cloud::Chronicle::V1::ListRetrohuntsResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"
    filter = "hello world"

    list_retrohunts_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Chronicle::V1::RuleService::Rest::ServiceStub.stub :transcode_list_retrohunts_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, list_retrohunts_client_stub do
        # Create client
        client = ::Google::Cloud::Chronicle::V1::RuleService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.list_retrohunts({ parent: parent, page_size: page_size, page_token: page_token, filter: filter }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.list_retrohunts parent: parent, page_size: page_size, page_token: page_token, filter: filter do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.list_retrohunts ::Google::Cloud::Chronicle::V1::ListRetrohuntsRequest.new(parent: parent, page_size: page_size, page_token: page_token, filter: filter) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.list_retrohunts({ parent: parent, page_size: page_size, page_token: page_token, filter: filter }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.list_retrohunts(::Google::Cloud::Chronicle::V1::ListRetrohuntsRequest.new(parent: parent, page_size: page_size, page_token: page_token, filter: filter), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, list_retrohunts_client_stub.call_count
      end
    end
  end

  def test_get_rule_deployment
    # Create test objects.
    client_result = ::Google::Cloud::Chronicle::V1::RuleDeployment.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_rule_deployment_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Chronicle::V1::RuleService::Rest::ServiceStub.stub :transcode_get_rule_deployment_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, get_rule_deployment_client_stub do
        # Create client
        client = ::Google::Cloud::Chronicle::V1::RuleService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.get_rule_deployment({ name: name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.get_rule_deployment name: name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.get_rule_deployment ::Google::Cloud::Chronicle::V1::GetRuleDeploymentRequest.new(name: name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.get_rule_deployment({ name: name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.get_rule_deployment(::Google::Cloud::Chronicle::V1::GetRuleDeploymentRequest.new(name: name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, get_rule_deployment_client_stub.call_count
      end
    end
  end

  def test_list_rule_deployments
    # Create test objects.
    client_result = ::Google::Cloud::Chronicle::V1::ListRuleDeploymentsResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"
    filter = "hello world"

    list_rule_deployments_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Chronicle::V1::RuleService::Rest::ServiceStub.stub :transcode_list_rule_deployments_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, list_rule_deployments_client_stub do
        # Create client
        client = ::Google::Cloud::Chronicle::V1::RuleService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.list_rule_deployments({ parent: parent, page_size: page_size, page_token: page_token, filter: filter }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.list_rule_deployments parent: parent, page_size: page_size, page_token: page_token, filter: filter do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.list_rule_deployments ::Google::Cloud::Chronicle::V1::ListRuleDeploymentsRequest.new(parent: parent, page_size: page_size, page_token: page_token, filter: filter) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.list_rule_deployments({ parent: parent, page_size: page_size, page_token: page_token, filter: filter }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.list_rule_deployments(::Google::Cloud::Chronicle::V1::ListRuleDeploymentsRequest.new(parent: parent, page_size: page_size, page_token: page_token, filter: filter), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, list_rule_deployments_client_stub.call_count
      end
    end
  end

  def test_update_rule_deployment
    # Create test objects.
    client_result = ::Google::Cloud::Chronicle::V1::RuleDeployment.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    rule_deployment = {}
    update_mask = {}

    update_rule_deployment_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Chronicle::V1::RuleService::Rest::ServiceStub.stub :transcode_update_rule_deployment_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, update_rule_deployment_client_stub do
        # Create client
        client = ::Google::Cloud::Chronicle::V1::RuleService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.update_rule_deployment({ rule_deployment: rule_deployment, update_mask: update_mask }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.update_rule_deployment rule_deployment: rule_deployment, update_mask: update_mask do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.update_rule_deployment ::Google::Cloud::Chronicle::V1::UpdateRuleDeploymentRequest.new(rule_deployment: rule_deployment, update_mask: update_mask) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.update_rule_deployment({ rule_deployment: rule_deployment, update_mask: update_mask }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.update_rule_deployment(::Google::Cloud::Chronicle::V1::UpdateRuleDeploymentRequest.new(rule_deployment: rule_deployment, update_mask: update_mask), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, update_rule_deployment_client_stub.call_count
      end
    end
  end

  def test_configure
    credentials_token = :dummy_value

    client = block_config = config = nil
    dummy_stub = ClientStub.new nil
    Gapic::Rest::ClientStub.stub :new, dummy_stub do
      client = ::Google::Cloud::Chronicle::V1::RuleService::Rest::Client.new do |config|
        config.credentials = credentials_token
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::Chronicle::V1::RuleService::Rest::Client::Configuration, config
  end
end
