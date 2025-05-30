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

require "google/cloud/support/v2beta/case_service_pb"

module Google
  module Cloud
    module Support
      module V2beta
        module CaseService
          module Rest
            ##
            # REST service stub for the CaseService service.
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
              # Baseline implementation for the get_case REST call
              #
              # @param request_pb [::Google::Cloud::Support::V2beta::GetCaseRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Google::Cloud::Support::V2beta::Case]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Google::Cloud::Support::V2beta::Case]
              #   A result object deserialized from the server's reply
              def get_case request_pb, options = nil
                raise ::ArgumentError, "request must be provided" if request_pb.nil?

                verb, uri, query_string_params, body = ServiceStub.transcode_get_case_request request_pb
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
                  method_name: "get_case",
                  options: options
                )
                operation = ::Gapic::Rest::TransportOperation.new response
                result = ::Google::Cloud::Support::V2beta::Case.decode_json response.body, ignore_unknown_fields: true
                catch :response do
                  yield result, operation if block_given?
                  result
                end
              end

              ##
              # Baseline implementation for the list_cases REST call
              #
              # @param request_pb [::Google::Cloud::Support::V2beta::ListCasesRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Google::Cloud::Support::V2beta::ListCasesResponse]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Google::Cloud::Support::V2beta::ListCasesResponse]
              #   A result object deserialized from the server's reply
              def list_cases request_pb, options = nil
                raise ::ArgumentError, "request must be provided" if request_pb.nil?

                verb, uri, query_string_params, body = ServiceStub.transcode_list_cases_request request_pb
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
                  method_name: "list_cases",
                  options: options
                )
                operation = ::Gapic::Rest::TransportOperation.new response
                result = ::Google::Cloud::Support::V2beta::ListCasesResponse.decode_json response.body, ignore_unknown_fields: true
                catch :response do
                  yield result, operation if block_given?
                  result
                end
              end

              ##
              # Baseline implementation for the search_cases REST call
              #
              # @param request_pb [::Google::Cloud::Support::V2beta::SearchCasesRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Google::Cloud::Support::V2beta::SearchCasesResponse]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Google::Cloud::Support::V2beta::SearchCasesResponse]
              #   A result object deserialized from the server's reply
              def search_cases request_pb, options = nil
                raise ::ArgumentError, "request must be provided" if request_pb.nil?

                verb, uri, query_string_params, body = ServiceStub.transcode_search_cases_request request_pb
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
                  method_name: "search_cases",
                  options: options
                )
                operation = ::Gapic::Rest::TransportOperation.new response
                result = ::Google::Cloud::Support::V2beta::SearchCasesResponse.decode_json response.body, ignore_unknown_fields: true
                catch :response do
                  yield result, operation if block_given?
                  result
                end
              end

              ##
              # Baseline implementation for the create_case REST call
              #
              # @param request_pb [::Google::Cloud::Support::V2beta::CreateCaseRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Google::Cloud::Support::V2beta::Case]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Google::Cloud::Support::V2beta::Case]
              #   A result object deserialized from the server's reply
              def create_case request_pb, options = nil
                raise ::ArgumentError, "request must be provided" if request_pb.nil?

                verb, uri, query_string_params, body = ServiceStub.transcode_create_case_request request_pb
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
                  method_name: "create_case",
                  options: options
                )
                operation = ::Gapic::Rest::TransportOperation.new response
                result = ::Google::Cloud::Support::V2beta::Case.decode_json response.body, ignore_unknown_fields: true
                catch :response do
                  yield result, operation if block_given?
                  result
                end
              end

              ##
              # Baseline implementation for the update_case REST call
              #
              # @param request_pb [::Google::Cloud::Support::V2beta::UpdateCaseRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Google::Cloud::Support::V2beta::Case]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Google::Cloud::Support::V2beta::Case]
              #   A result object deserialized from the server's reply
              def update_case request_pb, options = nil
                raise ::ArgumentError, "request must be provided" if request_pb.nil?

                verb, uri, query_string_params, body = ServiceStub.transcode_update_case_request request_pb
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
                  method_name: "update_case",
                  options: options
                )
                operation = ::Gapic::Rest::TransportOperation.new response
                result = ::Google::Cloud::Support::V2beta::Case.decode_json response.body, ignore_unknown_fields: true
                catch :response do
                  yield result, operation if block_given?
                  result
                end
              end

              ##
              # Baseline implementation for the escalate_case REST call
              #
              # @param request_pb [::Google::Cloud::Support::V2beta::EscalateCaseRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Google::Cloud::Support::V2beta::Case]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Google::Cloud::Support::V2beta::Case]
              #   A result object deserialized from the server's reply
              def escalate_case request_pb, options = nil
                raise ::ArgumentError, "request must be provided" if request_pb.nil?

                verb, uri, query_string_params, body = ServiceStub.transcode_escalate_case_request request_pb
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
                  method_name: "escalate_case",
                  options: options
                )
                operation = ::Gapic::Rest::TransportOperation.new response
                result = ::Google::Cloud::Support::V2beta::Case.decode_json response.body, ignore_unknown_fields: true
                catch :response do
                  yield result, operation if block_given?
                  result
                end
              end

              ##
              # Baseline implementation for the close_case REST call
              #
              # @param request_pb [::Google::Cloud::Support::V2beta::CloseCaseRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Google::Cloud::Support::V2beta::Case]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Google::Cloud::Support::V2beta::Case]
              #   A result object deserialized from the server's reply
              def close_case request_pb, options = nil
                raise ::ArgumentError, "request must be provided" if request_pb.nil?

                verb, uri, query_string_params, body = ServiceStub.transcode_close_case_request request_pb
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
                  method_name: "close_case",
                  options: options
                )
                operation = ::Gapic::Rest::TransportOperation.new response
                result = ::Google::Cloud::Support::V2beta::Case.decode_json response.body, ignore_unknown_fields: true
                catch :response do
                  yield result, operation if block_given?
                  result
                end
              end

              ##
              # Baseline implementation for the search_case_classifications REST call
              #
              # @param request_pb [::Google::Cloud::Support::V2beta::SearchCaseClassificationsRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Google::Cloud::Support::V2beta::SearchCaseClassificationsResponse]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Google::Cloud::Support::V2beta::SearchCaseClassificationsResponse]
              #   A result object deserialized from the server's reply
              def search_case_classifications request_pb, options = nil
                raise ::ArgumentError, "request must be provided" if request_pb.nil?

                verb, uri, query_string_params, body = ServiceStub.transcode_search_case_classifications_request request_pb
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
                  method_name: "search_case_classifications",
                  options: options
                )
                operation = ::Gapic::Rest::TransportOperation.new response
                result = ::Google::Cloud::Support::V2beta::SearchCaseClassificationsResponse.decode_json response.body, ignore_unknown_fields: true
                catch :response do
                  yield result, operation if block_given?
                  result
                end
              end

              ##
              # @private
              #
              # GRPC transcoding helper method for the get_case REST call
              #
              # @param request_pb [::Google::Cloud::Support::V2beta::GetCaseRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def self.transcode_get_case_request request_pb
                transcoder = Gapic::Rest::GrpcTranscoder.new
                                                        .with_bindings(
                                                          uri_method: :get,
                                                          uri_template: "/v2beta/{name}",
                                                          matches: [
                                                            ["name", %r{^projects/[^/]+/cases/[^/]+/?$}, false]
                                                          ]
                                                        )
                                                        .with_bindings(
                                                          uri_method: :get,
                                                          uri_template: "/v2beta/{name}",
                                                          matches: [
                                                            ["name", %r{^organizations/[^/]+/cases/[^/]+/?$}, false]
                                                          ]
                                                        )
                transcoder.transcode request_pb
              end

              ##
              # @private
              #
              # GRPC transcoding helper method for the list_cases REST call
              #
              # @param request_pb [::Google::Cloud::Support::V2beta::ListCasesRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def self.transcode_list_cases_request request_pb
                transcoder = Gapic::Rest::GrpcTranscoder.new
                                                        .with_bindings(
                                                          uri_method: :get,
                                                          uri_template: "/v2beta/{parent}/cases",
                                                          matches: [
                                                            ["parent", %r{^projects/[^/]+/?$}, false]
                                                          ]
                                                        )
                                                        .with_bindings(
                                                          uri_method: :get,
                                                          uri_template: "/v2beta/{parent}/cases",
                                                          matches: [
                                                            ["parent", %r{^organizations/[^/]+/?$}, false]
                                                          ]
                                                        )
                transcoder.transcode request_pb
              end

              ##
              # @private
              #
              # GRPC transcoding helper method for the search_cases REST call
              #
              # @param request_pb [::Google::Cloud::Support::V2beta::SearchCasesRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def self.transcode_search_cases_request request_pb
                transcoder = Gapic::Rest::GrpcTranscoder.new
                                                        .with_bindings(
                                                          uri_method: :get,
                                                          uri_template: "/v2beta/{parent}/cases:search",
                                                          matches: [
                                                            ["parent", %r{^projects/[^/]+/?$}, false]
                                                          ]
                                                        )
                                                        .with_bindings(
                                                          uri_method: :get,
                                                          uri_template: "/v2beta/{parent}/cases:search",
                                                          matches: [
                                                            ["parent", %r{^organizations/[^/]+/?$}, false]
                                                          ]
                                                        )
                transcoder.transcode request_pb
              end

              ##
              # @private
              #
              # GRPC transcoding helper method for the create_case REST call
              #
              # @param request_pb [::Google::Cloud::Support::V2beta::CreateCaseRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def self.transcode_create_case_request request_pb
                transcoder = Gapic::Rest::GrpcTranscoder.new
                                                        .with_bindings(
                                                          uri_method: :post,
                                                          uri_template: "/v2beta/{parent}/cases",
                                                          body: "case",
                                                          matches: [
                                                            ["parent", %r{^projects/[^/]+/?$}, false]
                                                          ]
                                                        )
                                                        .with_bindings(
                                                          uri_method: :post,
                                                          uri_template: "/v2beta/{parent}/cases",
                                                          body: "case",
                                                          matches: [
                                                            ["parent", %r{^organizations/[^/]+/?$}, false]
                                                          ]
                                                        )
                transcoder.transcode request_pb
              end

              ##
              # @private
              #
              # GRPC transcoding helper method for the update_case REST call
              #
              # @param request_pb [::Google::Cloud::Support::V2beta::UpdateCaseRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def self.transcode_update_case_request request_pb
                transcoder = Gapic::Rest::GrpcTranscoder.new
                                                        .with_bindings(
                                                          uri_method: :patch,
                                                          uri_template: "/v2beta/{case.name}",
                                                          body: "case",
                                                          matches: [
                                                            ["case.name", %r{^projects/[^/]+/cases/[^/]+/?$}, false]
                                                          ]
                                                        )
                                                        .with_bindings(
                                                          uri_method: :patch,
                                                          uri_template: "/v2beta/{case.name}",
                                                          body: "case",
                                                          matches: [
                                                            ["case.name", %r{^organizations/[^/]+/cases/[^/]+/?$}, false]
                                                          ]
                                                        )
                transcoder.transcode request_pb
              end

              ##
              # @private
              #
              # GRPC transcoding helper method for the escalate_case REST call
              #
              # @param request_pb [::Google::Cloud::Support::V2beta::EscalateCaseRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def self.transcode_escalate_case_request request_pb
                transcoder = Gapic::Rest::GrpcTranscoder.new
                                                        .with_bindings(
                                                          uri_method: :post,
                                                          uri_template: "/v2beta/{name}:escalate",
                                                          body: "*",
                                                          matches: [
                                                            ["name", %r{^projects/[^/]+/cases/[^/]+/?$}, false]
                                                          ]
                                                        )
                                                        .with_bindings(
                                                          uri_method: :post,
                                                          uri_template: "/v2beta/{name}:escalate",
                                                          body: "*",
                                                          matches: [
                                                            ["name", %r{^organizations/[^/]+/cases/[^/]+/?$}, false]
                                                          ]
                                                        )
                transcoder.transcode request_pb
              end

              ##
              # @private
              #
              # GRPC transcoding helper method for the close_case REST call
              #
              # @param request_pb [::Google::Cloud::Support::V2beta::CloseCaseRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def self.transcode_close_case_request request_pb
                transcoder = Gapic::Rest::GrpcTranscoder.new
                                                        .with_bindings(
                                                          uri_method: :post,
                                                          uri_template: "/v2beta/{name}:close",
                                                          body: "*",
                                                          matches: [
                                                            ["name", %r{^projects/[^/]+/cases/[^/]+/?$}, false]
                                                          ]
                                                        )
                                                        .with_bindings(
                                                          uri_method: :post,
                                                          uri_template: "/v2beta/{name}:close",
                                                          body: "*",
                                                          matches: [
                                                            ["name", %r{^organizations/[^/]+/cases/[^/]+/?$}, false]
                                                          ]
                                                        )
                transcoder.transcode request_pb
              end

              ##
              # @private
              #
              # GRPC transcoding helper method for the search_case_classifications REST call
              #
              # @param request_pb [::Google::Cloud::Support::V2beta::SearchCaseClassificationsRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def self.transcode_search_case_classifications_request request_pb
                transcoder = Gapic::Rest::GrpcTranscoder.new
                                                        .with_bindings(
                                                          uri_method: :get,
                                                          uri_template: "/v2beta/caseClassifications:search",
                                                          matches: []
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
