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
    module NetApp
      module V1
        # GetKmsConfigRequest gets a KMS Config.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Name of the KmsConfig
        class GetKmsConfigRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # ListKmsConfigsRequest lists KMS Configs.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. Parent value
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     The maximum number of items to return.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     The next_page_token value to use if there are additional
        #     results to retrieve for this list request.
        # @!attribute [rw] order_by
        #   @return [::String]
        #     Sort results. Supported values are "name", "name desc" or "" (unsorted).
        # @!attribute [rw] filter
        #   @return [::String]
        #     List filter.
        class ListKmsConfigsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # ListKmsConfigsResponse is the response to a ListKmsConfigsRequest.
        # @!attribute [rw] kms_configs
        #   @return [::Array<::Google::Cloud::NetApp::V1::KmsConfig>]
        #     The list of KmsConfigs
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     A token identifying a page of results the server should return.
        # @!attribute [rw] unreachable
        #   @return [::Array<::String>]
        #     Locations that could not be reached.
        class ListKmsConfigsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # CreateKmsConfigRequest creates a KMS Config.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. Value for parent.
        # @!attribute [rw] kms_config_id
        #   @return [::String]
        #     Required. Id of the requesting KmsConfig. Must be unique within the parent
        #     resource. Must contain only letters, numbers and hyphen, with the first
        #     character a letter, the last a letter or a
        #     number, and a 63 character maximum.
        # @!attribute [rw] kms_config
        #   @return [::Google::Cloud::NetApp::V1::KmsConfig]
        #     Required. The required parameters to create a new KmsConfig.
        class CreateKmsConfigRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # UpdateKmsConfigRequest updates a KMS Config.
        # @!attribute [rw] update_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     Required. Field mask is used to specify the fields to be overwritten in the
        #     KmsConfig resource by the update.
        #     The fields specified in the update_mask are relative to the resource, not
        #     the full request. A field will be overwritten if it is in the mask. If the
        #     user does not provide a mask then all fields will be overwritten.
        # @!attribute [rw] kms_config
        #   @return [::Google::Cloud::NetApp::V1::KmsConfig]
        #     Required. The KmsConfig being updated
        class UpdateKmsConfigRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # DeleteKmsConfigRequest deletes a KMS Config.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Name of the KmsConfig.
        class DeleteKmsConfigRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # EncryptVolumesRequest specifies the KMS config to encrypt existing volumes.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Name of the KmsConfig.
        class EncryptVolumesRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # VerifyKmsConfigRequest specifies the KMS config to be validated.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Name of the KMS Config to be verified.
        class VerifyKmsConfigRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # VerifyKmsConfigResponse contains the information if the config is correctly
        # and error message.
        # @!attribute [r] healthy
        #   @return [::Boolean]
        #     Output only. If the customer key configured correctly to the encrypt
        #     volume.
        # @!attribute [r] health_error
        #   @return [::String]
        #     Output only. Error message if config is not healthy.
        # @!attribute [r] instructions
        #   @return [::String]
        #     Output only. Instructions for the customers to provide the access to the
        #     encryption key.
        class VerifyKmsConfigResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # KmsConfig is the customer managed encryption key(CMEK) configuration.
        # @!attribute [rw] name
        #   @return [::String]
        #     Identifier. Name of the KmsConfig.
        # @!attribute [rw] crypto_key_name
        #   @return [::String]
        #     Required. Customer managed crypto key resource full name. Format:
        #     projects/\\{project}/locations/\\{location}/keyRings/\\{key_ring}/cryptoKeys/\\{key}.
        # @!attribute [r] state
        #   @return [::Google::Cloud::NetApp::V1::KmsConfig::State]
        #     Output only. State of the KmsConfig.
        # @!attribute [r] state_details
        #   @return [::String]
        #     Output only. State details of the KmsConfig.
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Create time of the KmsConfig.
        # @!attribute [rw] description
        #   @return [::String]
        #     Description of the KmsConfig.
        # @!attribute [rw] labels
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Labels as key value pairs
        # @!attribute [r] instructions
        #   @return [::String]
        #     Output only. Instructions to provide the access to the customer provided
        #     encryption key.
        # @!attribute [r] service_account
        #   @return [::String]
        #     Output only. The Service account which will have access to the customer
        #     provided encryption key.
        class KmsConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class LabelsEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The KmsConfig States
          module State
            # Unspecified KmsConfig State
            STATE_UNSPECIFIED = 0

            # KmsConfig State is Ready
            READY = 1

            # KmsConfig State is Creating
            CREATING = 2

            # KmsConfig State is Deleting
            DELETING = 3

            # KmsConfig State is Updating
            UPDATING = 4

            # KmsConfig State is In Use.
            IN_USE = 5

            # KmsConfig State is Error
            ERROR = 6

            # KmsConfig State is Pending to verify crypto key access.
            KEY_CHECK_PENDING = 7

            # KmsConfig State is Not accessbile by the SDE service account to the
            # crypto key.
            KEY_NOT_REACHABLE = 8

            # KmsConfig State is Disabling.
            DISABLING = 9

            # KmsConfig State is Disabled.
            DISABLED = 10

            # KmsConfig State is Migrating.
            # The existing volumes are migrating from SMEK to CMEK.
            MIGRATING = 11
          end
        end
      end
    end
  end
end
