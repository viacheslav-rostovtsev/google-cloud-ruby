# frozen_string_literal: true

# Copyright 2023 Google LLC
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
    module AIPlatform
      module V1
        # Vertex AI Feature Group.
        # @!attribute [rw] big_query
        #   @return [::Google::Cloud::AIPlatform::V1::FeatureGroup::BigQuery]
        #     Indicates that features for this group come from BigQuery Table/View.
        #     By default treats the source as a sparse time series source, which is
        #     required to have an entity_id and a feature_timestamp column in the
        #     source.
        # @!attribute [rw] name
        #   @return [::String]
        #     Identifier. Name of the FeatureGroup. Format:
        #     `projects/{project}/locations/{location}/featureGroups/{featureGroup}`
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Timestamp when this FeatureGroup was created.
        # @!attribute [r] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Timestamp when this FeatureGroup was last updated.
        # @!attribute [rw] etag
        #   @return [::String]
        #     Optional. Used to perform consistent read-modify-write updates. If not set,
        #     a blind "overwrite" update happens.
        # @!attribute [rw] labels
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Optional. The labels with user-defined metadata to organize your
        #     FeatureGroup.
        #
        #     Label keys and values can be no longer than 64 characters
        #     (Unicode codepoints), can only contain lowercase letters, numeric
        #     characters, underscores and dashes. International characters are allowed.
        #
        #     See https://goo.gl/xmQnxf for more information on and examples of labels.
        #     No more than 64 user labels can be associated with one
        #     FeatureGroup(System labels are excluded)." System reserved label keys
        #     are prefixed with "aiplatform.googleapis.com/" and are immutable.
        # @!attribute [rw] description
        #   @return [::String]
        #     Optional. Description of the FeatureGroup.
        class FeatureGroup
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Input source type for BigQuery Tables and Views.
          # @!attribute [rw] big_query_source
          #   @return [::Google::Cloud::AIPlatform::V1::BigQuerySource]
          #     Required. Immutable. The BigQuery source URI that points to either a
          #     BigQuery Table or View.
          # @!attribute [rw] entity_id_columns
          #   @return [::Array<::String>]
          #     Optional. Columns to construct entity_id / row keys. Currently only
          #     supports 1 entity_id_column. If not provided defaults to `entity_id`.
          class BigQuery
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class LabelsEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end
      end
    end
  end
end
