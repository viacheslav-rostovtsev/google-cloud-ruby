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


module Google
  module Cloud
    module Compute
      module V1
        module InstanceGroups
          module Rest
            # GRPC transcoding helper methods for the InstanceGroups REST API.
            module GrpcTranscoding
              # @param request_pb [::Google::Cloud::Compute::V1::AddInstancesInstanceGroupRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def transcode_add_instances request_pb
                uri = "/compute/v1/projects/#{request_pb.project}/zones/#{request_pb.zone}/instanceGroups/#{request_pb.instance_group}/addInstances"
                body = request_pb.instance_groups_add_instances_request_resource.to_json
                query_string_params = {}

                [uri, body, query_string_params]
              end

              # @param request_pb [::Google::Cloud::Compute::V1::AggregatedListInstanceGroupsRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def transcode_aggregated_list request_pb
                uri = "/compute/v1/projects/#{request_pb.project}/aggregated/instanceGroups"
                body = nil
                query_string_params = {}
                query_string_params["filter"] = request_pb.filter.to_s if request_pb.filter && request_pb.filter != ""
                query_string_params["includeAllScopes"] = request_pb.include_all_scopes.to_s if request_pb.include_all_scopes && request_pb.include_all_scopes != false
                query_string_params["maxResults"] = request_pb.max_results.to_s if request_pb.max_results && request_pb.max_results != 0
                query_string_params["orderBy"] = request_pb.order_by.to_s if request_pb.order_by && request_pb.order_by != ""
                query_string_params["pageToken"] = request_pb.page_token.to_s if request_pb.page_token && request_pb.page_token != ""
                query_string_params["returnPartialSuccess"] = request_pb.return_partial_success.to_s if request_pb.return_partial_success && request_pb.return_partial_success != false

                [uri, body, query_string_params]
              end

              # @param request_pb [::Google::Cloud::Compute::V1::DeleteInstanceGroupRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def transcode_delete request_pb
                uri = "/compute/v1/projects/#{request_pb.project}/zones/#{request_pb.zone}/instanceGroups/#{request_pb.instance_group}"
                body = nil
                query_string_params = {}
                query_string_params["requestId"] = request_pb.request_id.to_s if request_pb.request_id && request_pb.request_id != ""

                [uri, body, query_string_params]
              end

              # @param request_pb [::Google::Cloud::Compute::V1::GetInstanceGroupRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def transcode_get request_pb
                uri = "/compute/v1/projects/#{request_pb.project}/zones/#{request_pb.zone}/instanceGroups/#{request_pb.instance_group}"
                body = nil
                query_string_params = {}

                [uri, body, query_string_params]
              end

              # @param request_pb [::Google::Cloud::Compute::V1::InsertInstanceGroupRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def transcode_insert request_pb
                uri = "/compute/v1/projects/#{request_pb.project}/zones/#{request_pb.zone}/instanceGroups"
                body = request_pb.instance_group_resource.to_json
                query_string_params = {}

                [uri, body, query_string_params]
              end

              # @param request_pb [::Google::Cloud::Compute::V1::ListInstanceGroupsRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def transcode_list request_pb
                uri = "/compute/v1/projects/#{request_pb.project}/zones/#{request_pb.zone}/instanceGroups"
                body = nil
                query_string_params = {}
                query_string_params["filter"] = request_pb.filter.to_s if request_pb.filter && request_pb.filter != ""
                query_string_params["maxResults"] = request_pb.max_results.to_s if request_pb.max_results && request_pb.max_results != 0
                query_string_params["orderBy"] = request_pb.order_by.to_s if request_pb.order_by && request_pb.order_by != ""
                query_string_params["pageToken"] = request_pb.page_token.to_s if request_pb.page_token && request_pb.page_token != ""
                query_string_params["returnPartialSuccess"] = request_pb.return_partial_success.to_s if request_pb.return_partial_success && request_pb.return_partial_success != false

                [uri, body, query_string_params]
              end

              # @param request_pb [::Google::Cloud::Compute::V1::ListInstancesInstanceGroupsRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def transcode_list_instances request_pb
                uri = "/compute/v1/projects/#{request_pb.project}/zones/#{request_pb.zone}/instanceGroups/#{request_pb.instance_group}/listInstances"
                body = request_pb.instance_groups_list_instances_request_resource.to_json
                query_string_params = {}

                [uri, body, query_string_params]
              end

              # @param request_pb [::Google::Cloud::Compute::V1::RemoveInstancesInstanceGroupRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def transcode_remove_instances request_pb
                uri = "/compute/v1/projects/#{request_pb.project}/zones/#{request_pb.zone}/instanceGroups/#{request_pb.instance_group}/removeInstances"
                body = request_pb.instance_groups_remove_instances_request_resource.to_json
                query_string_params = {}

                [uri, body, query_string_params]
              end

              # @param request_pb [::Google::Cloud::Compute::V1::SetNamedPortsInstanceGroupRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def transcode_set_named_ports request_pb
                uri = "/compute/v1/projects/#{request_pb.project}/zones/#{request_pb.zone}/instanceGroups/#{request_pb.instance_group}/setNamedPorts"
                body = request_pb.instance_groups_set_named_ports_request_resource.to_json
                query_string_params = {}

                [uri, body, query_string_params]
              end
              extend self
            end
          end
        end
      end
    end
  end
end
