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
        # A detailed representation of a Yum artifact.
        # @!attribute [r] name
        #   @return [::String]
        #     Output only. The Artifact Registry resource name of the artifact.
        # @!attribute [r] package_name
        #   @return [::String]
        #     Output only. The yum package name of the artifact.
        # @!attribute [r] package_type
        #   @return [::Google::Cloud::ArtifactRegistry::V1::YumArtifact::PackageType]
        #     Output only. An artifact is a binary or source package.
        # @!attribute [r] architecture
        #   @return [::String]
        #     Output only. Operating system architecture of the artifact.
        class YumArtifact
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Package type is either binary or source.
          module PackageType
            # Package type is not specified.
            PACKAGE_TYPE_UNSPECIFIED = 0

            # Binary package (.rpm).
            BINARY = 1

            # Source package (.srpm).
            SOURCE = 2
          end
        end

        # Google Cloud Storage location where the artifacts currently reside.
        # @!attribute [rw] uris
        #   @return [::Array<::String>]
        #     Cloud Storage paths URI (e.g., gs://my_bucket//my_object).
        # @!attribute [rw] use_wildcards
        #   @return [::Boolean]
        #     Supports URI wildcards for matching multiple objects from a single URI.
        class ImportYumArtifactsGcsSource
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The request to import new yum artifacts.
        # @!attribute [rw] gcs_source
        #   @return [::Google::Cloud::ArtifactRegistry::V1::ImportYumArtifactsGcsSource]
        #     Google Cloud Storage location where input content is located.
        # @!attribute [rw] parent
        #   @return [::String]
        #     The name of the parent resource where the artifacts will be imported.
        class ImportYumArtifactsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Error information explaining why a package was not imported.
        # @!attribute [rw] gcs_source
        #   @return [::Google::Cloud::ArtifactRegistry::V1::ImportYumArtifactsGcsSource]
        #     Google Cloud Storage location requested.
        # @!attribute [rw] error
        #   @return [::Google::Rpc::Status]
        #     The detailed error status.
        class ImportYumArtifactsErrorInfo
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The response message from importing YUM artifacts.
        # @!attribute [rw] yum_artifacts
        #   @return [::Array<::Google::Cloud::ArtifactRegistry::V1::YumArtifact>]
        #     The yum artifacts imported.
        # @!attribute [rw] errors
        #   @return [::Array<::Google::Cloud::ArtifactRegistry::V1::ImportYumArtifactsErrorInfo>]
        #     Detailed error info for packages that were not imported.
        class ImportYumArtifactsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The operation metadata for importing artifacts.
        class ImportYumArtifactsMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
