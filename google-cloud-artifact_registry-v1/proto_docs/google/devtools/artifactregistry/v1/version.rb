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


module Google
  module Cloud
    module ArtifactRegistry
      module V1
        # The body of a version resource. A version resource represents a
        # collection of components, such as files and other data. This may correspond
        # to a version in many package management schemes.
        # @!attribute [rw] name
        #   @return [::String]
        #     The name of the version, for example:
        #     `projects/p1/locations/us-central1/repositories/repo1/packages/pkg1/versions/art1`.
        #     If the package or version ID parts contain slashes, the slashes are
        #     escaped.
        # @!attribute [rw] description
        #   @return [::String]
        #     Optional. Description of the version, as specified in its metadata.
        # @!attribute [rw] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     The time when the version was created.
        # @!attribute [rw] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     The time when the version was last updated.
        # @!attribute [rw] related_tags
        #   @return [::Array<::Google::Cloud::ArtifactRegistry::V1::Tag>]
        #     Output only. A list of related tags. Will contain up to 100 tags that
        #     reference this version.
        # @!attribute [r] metadata
        #   @return [::Google::Protobuf::Struct]
        #     Output only. Repository-specific Metadata stored against this version.
        #     The fields returned are defined by the underlying repository-specific
        #     resource. Currently, the resources could be:
        #     {::Google::Cloud::ArtifactRegistry::V1::DockerImage DockerImage}
        #     {::Google::Cloud::ArtifactRegistry::V1::MavenArtifact MavenArtifact}
        # @!attribute [rw] annotations
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Optional. Client specified annotations.
        class Version
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class AnnotationsEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # The request to list versions.
        # @!attribute [rw] parent
        #   @return [::String]
        #     The name of the parent resource whose versions will be listed.
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     The maximum number of versions to return. Maximum page size is 1,000.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     The next_page_token value returned from a previous list request, if any.
        # @!attribute [rw] view
        #   @return [::Google::Cloud::ArtifactRegistry::V1::VersionView]
        #     The view that should be returned in the response.
        # @!attribute [rw] order_by
        #   @return [::String]
        #     Optional. The field to order the results by.
        # @!attribute [rw] filter
        #   @return [::String]
        #     Optional. An expression for filtering the results of the request. Filter
        #     rules are case insensitive. The fields eligible for filtering are:
        #
        #       * `name`
        #       * `annotations`
        #
        #      Examples of using a filter:
        #
        #      To filter the results of your request to versions with the name
        #      `my-version` in project `my-project` in the `us-central` region, in
        #      repository `my-repo`, append the following filter expression to your
        #      request:
        #
        #       * `name="projects/my-project/locations/us-central1/repositories/my-repo/packages/my-package/versions/my-version"`
        #
        #      You can also use wildcards to match any number of characters before or
        #      after the value:
        #
        #       * `name="projects/my-project/locations/us-central1/repositories/my-repo/packages/my-package/versions/*version"`
        #       * `name="projects/my-project/locations/us-central1/repositories/my-repo/packages/my-package/versions/my*"`
        #       * `name="projects/my-project/locations/us-central1/repositories/my-repo/packages/my-package/versions/*version*"`
        #
        #      To filter the results of your request to versions with the annotation
        #      key-value pair [`external_link`: `external_link_value`], append the
        #      following filter expression to your request:
        #
        #       * `"annotations.external_link:external_link_value"`
        #
        #      To filter just for a specific annotation key `external_link`, append the
        #      following filter expression to your request:
        #
        #       * `"annotations.external_link"`
        #
        #      If the annotation key or value contains special characters, you can escape
        #      them by surrounding the value with backticks. For example, to filter the
        #      results of your request to versions with the annotation key-value pair
        #      [`external.link`:`https://example.com/my-version`], append the following
        #      filter expression to your request:
        #
        #       * `` "annotations.`external.link`:`https://example.com/my-version`" ``
        #
        #      You can also filter with annotations with a wildcard to
        #      match any number of characters before or after the value:
        #
        #       * `` "annotations.*_link:`*example.com*`" ``
        class ListVersionsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The response from listing versions.
        # @!attribute [rw] versions
        #   @return [::Array<::Google::Cloud::ArtifactRegistry::V1::Version>]
        #     The versions returned.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     The token to retrieve the next page of versions, or empty if there are no
        #     more versions to return.
        class ListVersionsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The request to retrieve a version.
        # @!attribute [rw] name
        #   @return [::String]
        #     The name of the version to retrieve.
        # @!attribute [rw] view
        #   @return [::Google::Cloud::ArtifactRegistry::V1::VersionView]
        #     The view that should be returned in the response.
        class GetVersionRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The request to delete a version.
        # @!attribute [rw] name
        #   @return [::String]
        #     The name of the version to delete.
        # @!attribute [rw] force
        #   @return [::Boolean]
        #     By default, a version that is tagged may not be deleted. If force=true, the
        #     version and any tags pointing to the version are deleted.
        class DeleteVersionRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The request to delete multiple versions across a repository.
        # @!attribute [rw] parent
        #   @return [::String]
        #     The name of the repository holding all requested versions.
        # @!attribute [rw] names
        #   @return [::Array<::String>]
        #     Required. The names of the versions to delete.
        #     The maximum number of versions deleted per batch is determined by the
        #     service and is dependent on the available resources in the region.
        # @!attribute [rw] validate_only
        #   @return [::Boolean]
        #     If true, the request is performed without deleting data, following AIP-163.
        class BatchDeleteVersionsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The metadata of an LRO from deleting multiple versions.
        # @!attribute [rw] failed_versions
        #   @return [::Array<::String>]
        #     The versions the operation failed to delete.
        class BatchDeleteVersionsMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The request to update a version.
        # @!attribute [rw] version
        #   @return [::Google::Cloud::ArtifactRegistry::V1::Version]
        #     Required. The Version that replaces the resource on the server.
        # @!attribute [rw] update_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     The update mask applies to the resource. For the `FieldMask` definition,
        #     see
        #     https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#fieldmask
        class UpdateVersionRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The view, which determines what version information is returned in a
        # response.
        module VersionView
          # The default / unset value.
          # The API will default to the BASIC view.
          VERSION_VIEW_UNSPECIFIED = 0

          # Includes basic information about the version, but not any related tags.
          BASIC = 1

          # Include everything.
          FULL = 2
        end
      end
    end
  end
end
