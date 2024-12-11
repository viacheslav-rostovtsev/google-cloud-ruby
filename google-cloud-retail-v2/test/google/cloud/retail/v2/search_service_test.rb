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

require "gapic/grpc/service_stub"

require "google/cloud/retail/v2/search_service_pb"
require "google/cloud/retail/v2/search_service_services_pb"
require "google/cloud/retail/v2/search_service"

class ::Google::Cloud::Retail::V2::SearchService::ClientTest < Minitest::Test
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

  def test_search
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Retail::V2::SearchResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    placement = "hello world"
    branch = "hello world"
    query = "hello world"
    visitor_id = "hello world"
    user_info = {}
    page_size = 42
    page_token = "hello world"
    offset = 42
    filter = "hello world"
    canonical_filter = "hello world"
    order_by = "hello world"
    facet_specs = [{}]
    dynamic_facet_spec = {}
    boost_spec = {}
    query_expansion_spec = {}
    variant_rollup_keys = ["hello world"]
    page_categories = ["hello world"]
    search_mode = :SEARCH_MODE_UNSPECIFIED
    personalization_spec = {}
    labels = {}
    spell_correction_spec = {}
    entity = "hello world"
    conversational_search_spec = {}
    tile_navigation_spec = {}

    search_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :search, name
      assert_kind_of ::Google::Cloud::Retail::V2::SearchRequest, request
      assert_equal "hello world", request["placement"]
      assert_equal "hello world", request["branch"]
      assert_equal "hello world", request["query"]
      assert_equal "hello world", request["visitor_id"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Retail::V2::UserInfo), request["user_info"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      assert_equal 42, request["offset"]
      assert_equal "hello world", request["filter"]
      assert_equal "hello world", request["canonical_filter"]
      assert_equal "hello world", request["order_by"]
      assert_kind_of ::Google::Cloud::Retail::V2::SearchRequest::FacetSpec, request["facet_specs"].first
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Retail::V2::SearchRequest::DynamicFacetSpec), request["dynamic_facet_spec"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Retail::V2::SearchRequest::BoostSpec), request["boost_spec"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Retail::V2::SearchRequest::QueryExpansionSpec), request["query_expansion_spec"]
      assert_equal ["hello world"], request["variant_rollup_keys"]
      assert_equal ["hello world"], request["page_categories"]
      assert_equal :SEARCH_MODE_UNSPECIFIED, request["search_mode"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Retail::V2::SearchRequest::PersonalizationSpec), request["personalization_spec"]
      assert_equal({}, request["labels"].to_h)
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Retail::V2::SearchRequest::SpellCorrectionSpec), request["spell_correction_spec"]
      assert request.has_spell_correction_spec?
      assert_equal "hello world", request["entity"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Retail::V2::SearchRequest::ConversationalSearchSpec), request["conversational_search_spec"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Retail::V2::SearchRequest::TileNavigationSpec), request["tile_navigation_spec"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, search_client_stub do
      # Create client
      client = ::Google::Cloud::Retail::V2::SearchService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.search({ placement: placement, branch: branch, query: query, visitor_id: visitor_id, user_info: user_info, page_size: page_size, page_token: page_token, offset: offset, filter: filter, canonical_filter: canonical_filter, order_by: order_by, facet_specs: facet_specs, dynamic_facet_spec: dynamic_facet_spec, boost_spec: boost_spec, query_expansion_spec: query_expansion_spec, variant_rollup_keys: variant_rollup_keys, page_categories: page_categories, search_mode: search_mode, personalization_spec: personalization_spec, labels: labels, spell_correction_spec: spell_correction_spec, entity: entity, conversational_search_spec: conversational_search_spec, tile_navigation_spec: tile_navigation_spec }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.search placement: placement, branch: branch, query: query, visitor_id: visitor_id, user_info: user_info, page_size: page_size, page_token: page_token, offset: offset, filter: filter, canonical_filter: canonical_filter, order_by: order_by, facet_specs: facet_specs, dynamic_facet_spec: dynamic_facet_spec, boost_spec: boost_spec, query_expansion_spec: query_expansion_spec, variant_rollup_keys: variant_rollup_keys, page_categories: page_categories, search_mode: search_mode, personalization_spec: personalization_spec, labels: labels, spell_correction_spec: spell_correction_spec, entity: entity, conversational_search_spec: conversational_search_spec, tile_navigation_spec: tile_navigation_spec do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.search ::Google::Cloud::Retail::V2::SearchRequest.new(placement: placement, branch: branch, query: query, visitor_id: visitor_id, user_info: user_info, page_size: page_size, page_token: page_token, offset: offset, filter: filter, canonical_filter: canonical_filter, order_by: order_by, facet_specs: facet_specs, dynamic_facet_spec: dynamic_facet_spec, boost_spec: boost_spec, query_expansion_spec: query_expansion_spec, variant_rollup_keys: variant_rollup_keys, page_categories: page_categories, search_mode: search_mode, personalization_spec: personalization_spec, labels: labels, spell_correction_spec: spell_correction_spec, entity: entity, conversational_search_spec: conversational_search_spec, tile_navigation_spec: tile_navigation_spec) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.search({ placement: placement, branch: branch, query: query, visitor_id: visitor_id, user_info: user_info, page_size: page_size, page_token: page_token, offset: offset, filter: filter, canonical_filter: canonical_filter, order_by: order_by, facet_specs: facet_specs, dynamic_facet_spec: dynamic_facet_spec, boost_spec: boost_spec, query_expansion_spec: query_expansion_spec, variant_rollup_keys: variant_rollup_keys, page_categories: page_categories, search_mode: search_mode, personalization_spec: personalization_spec, labels: labels, spell_correction_spec: spell_correction_spec, entity: entity, conversational_search_spec: conversational_search_spec, tile_navigation_spec: tile_navigation_spec }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.search(::Google::Cloud::Retail::V2::SearchRequest.new(placement: placement, branch: branch, query: query, visitor_id: visitor_id, user_info: user_info, page_size: page_size, page_token: page_token, offset: offset, filter: filter, canonical_filter: canonical_filter, order_by: order_by, facet_specs: facet_specs, dynamic_facet_spec: dynamic_facet_spec, boost_spec: boost_spec, query_expansion_spec: query_expansion_spec, variant_rollup_keys: variant_rollup_keys, page_categories: page_categories, search_mode: search_mode, personalization_spec: personalization_spec, labels: labels, spell_correction_spec: spell_correction_spec, entity: entity, conversational_search_spec: conversational_search_spec, tile_navigation_spec: tile_navigation_spec), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, search_client_stub.call_rpc_count
    end
  end

  def test_configure
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = block_config = config = nil
    dummy_stub = ClientStub.new nil, nil
    Gapic::ServiceStub.stub :new, dummy_stub do
      client = ::Google::Cloud::Retail::V2::SearchService::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::Retail::V2::SearchService::Client::Configuration, config
  end
end
