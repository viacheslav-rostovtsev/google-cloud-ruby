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


module Google
  module Cloud
    module AppHub
      module V1
        # Application defines the governance boundary for App Hub entities that
        # perform a logical end-to-end business function.
        # App Hub supports application level IAM permission to align with governance
        # requirements.
        # @!attribute [rw] name
        #   @return [::String]
        #     Identifier. The resource name of an Application. Format:
        #     `"projects/{host-project-id}/locations/{location}/applications/{application-id}"`
        # @!attribute [rw] display_name
        #   @return [::String]
        #     Optional. User-defined name for the Application.
        #     Can have a maximum length of 63 characters.
        # @!attribute [rw] description
        #   @return [::String]
        #     Optional. User-defined description of an Application.
        #     Can have a maximum length of 2048 characters.
        # @!attribute [rw] attributes
        #   @return [::Google::Cloud::AppHub::V1::Attributes]
        #     Optional. Consumer provided attributes.
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Create time.
        # @!attribute [r] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Update time.
        # @!attribute [rw] scope
        #   @return [::Google::Cloud::AppHub::V1::Scope]
        #     Required. Immutable. Defines what data can be included into this
        #     Application. Limits which Services and Workloads can be registered.
        # @!attribute [r] uid
        #   @return [::String]
        #     Output only. A universally unique identifier (in UUID4 format) for the
        #     `Application`.
        # @!attribute [r] state
        #   @return [::Google::Cloud::AppHub::V1::Application::State]
        #     Output only. Application state.
        class Application
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Application state.
          module State
            # Unspecified state.
            STATE_UNSPECIFIED = 0

            # The Application is being created.
            CREATING = 1

            # The Application is ready to register Services and Workloads.
            ACTIVE = 2

            # The Application is being deleted.
            DELETING = 3
          end
        end

        # Scope of an application.
        # @!attribute [rw] type
        #   @return [::Google::Cloud::AppHub::V1::Scope::Type]
        #     Required. Scope Type.
        class Scope
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Scope Type.
          module Type
            # Unspecified type.
            TYPE_UNSPECIFIED = 0

            # Regional type.
            REGIONAL = 1

            # Global type.
            GLOBAL = 2
          end
        end
      end
    end
  end
end
