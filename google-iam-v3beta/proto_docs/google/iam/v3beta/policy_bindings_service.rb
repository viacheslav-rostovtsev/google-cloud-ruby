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


module Google
  module Iam
    module V3beta
      # Request message for CreatePolicyBinding method.
      # @!attribute [rw] parent
      #   @return [::String]
      #     Required. The parent resource where this policy binding will be created.
      #     The binding parent is the closest Resource Manager resource (project,
      #     folder or organization) to the binding target.
      #
      #     Format:
      #
      #     * `projects/{project_id}/locations/{location}`
      #     * `projects/{project_number}/locations/{location}`
      #     * `folders/{folder_id}/locations/{location}`
      #     * `organizations/{organization_id}/locations/{location}`
      # @!attribute [rw] policy_binding_id
      #   @return [::String]
      #     Required. The ID to use for the policy binding, which will become the final
      #     component of the policy binding's resource name.
      #
      #     This value must start with a lowercase letter followed by up to 62
      #     lowercase letters, numbers, hyphens, or dots. Pattern,
      #     /[a-z][a-z0-9-\.]\\{2,62}/.
      # @!attribute [rw] policy_binding
      #   @return [::Google::Iam::V3beta::PolicyBinding]
      #     Required. The policy binding to create.
      # @!attribute [rw] validate_only
      #   @return [::Boolean]
      #     Optional. If set, validate the request and preview the creation, but do not
      #     actually post it.
      class CreatePolicyBindingRequest
        include ::Google::Protobuf::MessageExts
        extend ::Google::Protobuf::MessageExts::ClassMethods
      end

      # Request message for GetPolicyBinding method.
      # @!attribute [rw] name
      #   @return [::String]
      #     Required. The name of the policy binding to retrieve.
      #
      #     Format:
      #
      #     * `projects/{project_id}/locations/{location}/policyBindings/{policy_binding_id}`
      #     * `projects/{project_number}/locations/{location}/policyBindings/{policy_binding_id}`
      #     * `folders/{folder_id}/locations/{location}/policyBindings/{policy_binding_id}`
      #     * `organizations/{organization_id}/locations/{location}/policyBindings/{policy_binding_id}`
      class GetPolicyBindingRequest
        include ::Google::Protobuf::MessageExts
        extend ::Google::Protobuf::MessageExts::ClassMethods
      end

      # Request message for UpdatePolicyBinding method.
      # @!attribute [rw] policy_binding
      #   @return [::Google::Iam::V3beta::PolicyBinding]
      #     Required. The policy binding to update.
      #
      #     The policy binding's `name` field is used to identify the policy binding to
      #     update.
      # @!attribute [rw] validate_only
      #   @return [::Boolean]
      #     Optional. If set, validate the request and preview the update, but do not
      #     actually post it.
      # @!attribute [rw] update_mask
      #   @return [::Google::Protobuf::FieldMask]
      #     Optional. The list of fields to update
      class UpdatePolicyBindingRequest
        include ::Google::Protobuf::MessageExts
        extend ::Google::Protobuf::MessageExts::ClassMethods
      end

      # Request message for DeletePolicyBinding method.
      # @!attribute [rw] name
      #   @return [::String]
      #     Required. The name of the policy binding to delete.
      #
      #     Format:
      #
      #     * `projects/{project_id}/locations/{location}/policyBindings/{policy_binding_id}`
      #     * `projects/{project_number}/locations/{location}/policyBindings/{policy_binding_id}`
      #     * `folders/{folder_id}/locations/{location}/policyBindings/{policy_binding_id}`
      #     * `organizations/{organization_id}/locations/{location}/policyBindings/{policy_binding_id}`
      # @!attribute [rw] etag
      #   @return [::String]
      #     Optional. The etag of the policy binding.
      #     If this is provided, it must match the server's etag.
      # @!attribute [rw] validate_only
      #   @return [::Boolean]
      #     Optional. If set, validate the request and preview the deletion, but do not
      #     actually post it.
      class DeletePolicyBindingRequest
        include ::Google::Protobuf::MessageExts
        extend ::Google::Protobuf::MessageExts::ClassMethods
      end

      # Request message for ListPolicyBindings method.
      # @!attribute [rw] parent
      #   @return [::String]
      #     Required. The parent resource, which owns the collection of policy
      #     bindings.
      #
      #     Format:
      #
      #     * `projects/{project_id}/locations/{location}`
      #     * `projects/{project_number}/locations/{location}`
      #     * `folders/{folder_id}/locations/{location}`
      #     * `organizations/{organization_id}/locations/{location}`
      # @!attribute [rw] page_size
      #   @return [::Integer]
      #     Optional. The maximum number of policy bindings to return. The service may
      #     return fewer than this value.
      #
      #     If unspecified, at most 50 policy bindings will be returned.
      #     The maximum value is 1000; values above 1000 will be coerced to 1000.
      # @!attribute [rw] page_token
      #   @return [::String]
      #     Optional. A page token, received from a previous `ListPolicyBindings` call.
      #     Provide this to retrieve the subsequent page.
      #
      #     When paginating, all other parameters provided to `ListPolicyBindings` must
      #     match the call that provided the page token.
      # @!attribute [rw] filter
      #   @return [::String]
      #     Optional. An expression for filtering the results of the request. Filter
      #     rules are case insensitive. Some eligible fields for filtering are:
      #
      #     + `target`
      #     + `policy`
      #
      #     Some examples of filter queries:
      #
      #     * `target:ex*`: The binding target's name starts with "ex".
      #     * `target:example`: The binding target's name is `example`.
      #     * `policy:example`: The binding policy's name is `example`.
      class ListPolicyBindingsRequest
        include ::Google::Protobuf::MessageExts
        extend ::Google::Protobuf::MessageExts::ClassMethods
      end

      # Response message for ListPolicyBindings method.
      # @!attribute [rw] policy_bindings
      #   @return [::Array<::Google::Iam::V3beta::PolicyBinding>]
      #     The policy bindings from the specified parent.
      # @!attribute [rw] next_page_token
      #   @return [::String]
      #     Optional. A token, which can be sent as `page_token` to retrieve the next
      #     page. If this field is omitted, there are no subsequent pages.
      class ListPolicyBindingsResponse
        include ::Google::Protobuf::MessageExts
        extend ::Google::Protobuf::MessageExts::ClassMethods
      end

      # Request message for SearchTargetPolicyBindings method.
      # @!attribute [rw] target
      #   @return [::String]
      #     Required. The target resource, which is bound to the policy in the binding.
      #
      #     Format:
      #
      #     * `//iam.googleapis.com/locations/global/workforcePools/POOL_ID`
      #     * `//iam.googleapis.com/projects/PROJECT_NUMBER/locations/global/workloadIdentityPools/POOL_ID`
      #     * `//iam.googleapis.com/locations/global/workspace/WORKSPACE_ID`
      #     * `//cloudresourcemanager.googleapis.com/projects/{project_number}`
      #     * `//cloudresourcemanager.googleapis.com/folders/{folder_id}`
      #     * `//cloudresourcemanager.googleapis.com/organizations/{organization_id}`
      # @!attribute [rw] page_size
      #   @return [::Integer]
      #     Optional. The maximum number of policy bindings to return. The service may
      #     return fewer than this value.
      #
      #     If unspecified, at most 50 policy bindings will be returned.
      #     The maximum value is 1000; values above 1000 will be coerced to 1000.
      # @!attribute [rw] page_token
      #   @return [::String]
      #     Optional. A page token, received from a previous
      #     `SearchTargetPolicyBindingsRequest` call. Provide this to retrieve the
      #     subsequent page.
      #
      #     When paginating, all other parameters provided to
      #     `SearchTargetPolicyBindingsRequest` must match the call that provided the
      #     page token.
      # @!attribute [rw] parent
      #   @return [::String]
      #     Required. The parent resource where this search will be performed. This
      #     should be the nearest Resource Manager resource (project, folder, or
      #     organization) to the target.
      #
      #     Format:
      #
      #     * `projects/{project_id}/locations/{location}`
      #     * `projects/{project_number}/locations/{location}`
      #     * `folders/{folder_id}/locations/{location}`
      #     * `organizations/{organization_id}/locations/{location}`
      class SearchTargetPolicyBindingsRequest
        include ::Google::Protobuf::MessageExts
        extend ::Google::Protobuf::MessageExts::ClassMethods
      end

      # Response message for SearchTargetPolicyBindings method.
      # @!attribute [rw] policy_bindings
      #   @return [::Array<::Google::Iam::V3beta::PolicyBinding>]
      #     The policy bindings bound to the specified target.
      # @!attribute [rw] next_page_token
      #   @return [::String]
      #     Optional. A token, which can be sent as `page_token` to retrieve the next
      #     page. If this field is omitted, there are no subsequent pages.
      class SearchTargetPolicyBindingsResponse
        include ::Google::Protobuf::MessageExts
        extend ::Google::Protobuf::MessageExts::ClassMethods
      end
    end
  end
end
