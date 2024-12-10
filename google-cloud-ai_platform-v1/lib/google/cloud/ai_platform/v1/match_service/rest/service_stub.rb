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

require "google/cloud/aiplatform/v1/match_service_pb"

module Google
  module Cloud
    module AIPlatform
      module V1
        module MatchService
          module Rest
            ##
            # REST service stub for the MatchService service.
            # Service stub contains baseline method implementations
            # including transcoding, making the REST call, and deserialing the response.
            #
            class ServiceStub
              # @private
              def initialize endpoint:, endpoint_template:, universe_domain:, credentials:, logger:
                # These require statements are intentionally placed here to initialize
                # the REST modules only when it's required.
                require "gapic/rest"

                @client_stub = ::Gapic::Rest::ClientStub.new endpoint: endpoint,
                                                             endpoint_template: endpoint_template,
                                                             universe_domain: universe_domain,
                                                             credentials: credentials,
                                                             numeric_enums: true,
                                                             service_name: self.class,
                                                             raise_faraday_errors: false,
                                                             logger: logger
              end

              ##
              # The effective universe domain
              #
              # @return [String]
              #
              def universe_domain
                @client_stub.universe_domain
              end

              ##
              # The effective endpoint
              #
              # @return [String]
              #
              def endpoint
                @client_stub.endpoint
              end

              ##
              # The logger used for request/response debug logging.
              #
              # @return [Logger]
              #
              def logger stub: false
                stub ? @client_stub.stub_logger : @client_stub.logger
              end

              ##
              # Baseline implementation for the find_neighbors REST call
              #
              # @param request_pb [::Google::Cloud::AIPlatform::V1::FindNeighborsRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Google::Cloud::AIPlatform::V1::FindNeighborsResponse]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Google::Cloud::AIPlatform::V1::FindNeighborsResponse]
              #   A result object deserialized from the server's reply
              def find_neighbors request_pb, options = nil
                raise ::ArgumentError, "request must be provided" if request_pb.nil?

                verb, uri, query_string_params, body = ServiceStub.transcode_find_neighbors_request request_pb
                query_string_params = if query_string_params.any?
                                        query_string_params.to_h { |p| p.split "=", 2 }
                                      else
                                        {}
                                      end

                response = @client_stub.make_http_request(
                  verb,
                  uri: uri,
                  body: body || "",
                  params: query_string_params,
                  method_name: "find_neighbors",
                  options: options
                )
                operation = ::Gapic::Rest::TransportOperation.new response
                result = ::Google::Cloud::AIPlatform::V1::FindNeighborsResponse.decode_json response.body, ignore_unknown_fields: true
                catch :response do
                  yield result, operation if block_given?
                  result
                end
              end

              ##
              # Baseline implementation for the read_index_datapoints REST call
              #
              # @param request_pb [::Google::Cloud::AIPlatform::V1::ReadIndexDatapointsRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Google::Cloud::AIPlatform::V1::ReadIndexDatapointsResponse]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Google::Cloud::AIPlatform::V1::ReadIndexDatapointsResponse]
              #   A result object deserialized from the server's reply
              def read_index_datapoints request_pb, options = nil
                raise ::ArgumentError, "request must be provided" if request_pb.nil?

                verb, uri, query_string_params, body = ServiceStub.transcode_read_index_datapoints_request request_pb
                query_string_params = if query_string_params.any?
                                        query_string_params.to_h { |p| p.split "=", 2 }
                                      else
                                        {}
                                      end

                response = @client_stub.make_http_request(
                  verb,
                  uri: uri,
                  body: body || "",
                  params: query_string_params,
                  method_name: "read_index_datapoints",
                  options: options
                )
                operation = ::Gapic::Rest::TransportOperation.new response
                result = ::Google::Cloud::AIPlatform::V1::ReadIndexDatapointsResponse.decode_json response.body, ignore_unknown_fields: true
                catch :response do
                  yield result, operation if block_given?
                  result
                end
              end

              ##
              # @private
              #
              # GRPC transcoding helper method for the find_neighbors REST call
              #
              # @param request_pb [::Google::Cloud::AIPlatform::V1::FindNeighborsRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def self.transcode_find_neighbors_request request_pb
                transcoder = Gapic::Rest::GrpcTranscoder.new
                                                        .with_bindings(
                                                          uri_method: :post,
                                                          uri_template: "/v1/{index_endpoint}:findNeighbors",
                                                          body: "*",
                                                          matches: [
                                                            ["index_endpoint", %r{^projects/[^/]+/locations/[^/]+/indexEndpoints/[^/]+/?$}, false]
                                                          ]
                                                        )
                transcoder.transcode request_pb
              end

              ##
              # @private
              #
              # GRPC transcoding helper method for the read_index_datapoints REST call
              #
              # @param request_pb [::Google::Cloud::AIPlatform::V1::ReadIndexDatapointsRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def self.transcode_read_index_datapoints_request request_pb
                transcoder = Gapic::Rest::GrpcTranscoder.new
                                                        .with_bindings(
                                                          uri_method: :post,
                                                          uri_template: "/v1/{index_endpoint}:readIndexDatapoints",
                                                          body: "*",
                                                          matches: [
                                                            ["index_endpoint", %r{^projects/[^/]+/locations/[^/]+/indexEndpoints/[^/]+/?$}, false]
                                                          ]
                                                        )
                transcoder.transcode request_pb
              end
            end
          end
        end
      end
    end
  end
end
