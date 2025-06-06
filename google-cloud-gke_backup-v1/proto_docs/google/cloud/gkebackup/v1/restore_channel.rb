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
  module Cloud
    module GkeBackup
      module V1
        # A RestoreChannel imposes constraints on where backups can be restored.
        # The RestoreChannel should be in the same project and region
        # as the backups. The backups can only be restored in the
        # `destination_project`.
        # @!attribute [rw] name
        #   @return [::String]
        #     Identifier. The fully qualified name of the RestoreChannel.
        #     `projects/*/locations/*/restoreChannels/*`
        # @!attribute [rw] destination_project
        #   @return [::String]
        #     Required. Immutable. The project into which the backups will be restored.
        #     The format is `projects/{projectId}` or `projects/{projectNumber}`.
        # @!attribute [r] uid
        #   @return [::String]
        #     Output only. Server generated global unique identifier of
        #     [UUID](https://en.wikipedia.org/wiki/Universally_unique_identifier) format.
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The timestamp when this RestoreChannel was created.
        # @!attribute [r] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The timestamp when this RestoreChannel was last updated.
        # @!attribute [rw] labels
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Optional. A set of custom labels supplied by user.
        # @!attribute [rw] description
        #   @return [::String]
        #     Optional. User specified descriptive string for this RestoreChannel.
        # @!attribute [r] etag
        #   @return [::String]
        #     Output only. `etag` is used for optimistic concurrency control as a way to
        #     help prevent simultaneous updates of a RestoreChannel from overwriting each
        #     other. It is strongly suggested that systems make use of the 'etag' in the
        #     read-modify-write cycle to perform RestoreChannel updates in order to
        #     avoid race conditions: An `etag` is returned in the response to
        #     `GetRestoreChannel`, and systems are expected to put that etag in the
        #     request to `UpdateRestoreChannel` or `DeleteRestoreChannel` to
        #     ensure that their change will be applied to the same version of the
        #     resource.
        # @!attribute [r] destination_project_id
        #   @return [::String]
        #     Output only. The project_id where backups will be restored.
        #     Example Project ID: "my-project-id".
        #     This will be an OUTPUT_ONLY field to return the project_id of the
        #     destination project.
        class RestoreChannel
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
        end
      end
    end
  end
end
