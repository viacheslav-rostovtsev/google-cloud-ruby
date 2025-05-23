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
  module Apps
    module Chat
      module V1
        module ChatService
          # Path helper methods for the ChatService API.
          module Paths
            ##
            # Create a fully-qualified Attachment resource string.
            #
            # The resource will be in the following format:
            #
            # `spaces/{space}/messages/{message}/attachments/{attachment}`
            #
            # @param space [String]
            # @param message [String]
            # @param attachment [String]
            #
            # @return [::String]
            def attachment_path space:, message:, attachment:
              raise ::ArgumentError, "space cannot contain /" if space.to_s.include? "/"
              raise ::ArgumentError, "message cannot contain /" if message.to_s.include? "/"

              "spaces/#{space}/messages/#{message}/attachments/#{attachment}"
            end

            ##
            # Create a fully-qualified CustomEmoji resource string.
            #
            # The resource will be in the following format:
            #
            # `customEmojis/{custom_emoji}`
            #
            # @param custom_emoji [String]
            #
            # @return [::String]
            def custom_emoji_path custom_emoji:
              "customEmojis/#{custom_emoji}"
            end

            ##
            # Create a fully-qualified Membership resource string.
            #
            # The resource will be in the following format:
            #
            # `spaces/{space}/members/{member}`
            #
            # @param space [String]
            # @param member [String]
            #
            # @return [::String]
            def membership_path space:, member:
              raise ::ArgumentError, "space cannot contain /" if space.to_s.include? "/"

              "spaces/#{space}/members/#{member}"
            end

            ##
            # Create a fully-qualified Message resource string.
            #
            # The resource will be in the following format:
            #
            # `spaces/{space}/messages/{message}`
            #
            # @param space [String]
            # @param message [String]
            #
            # @return [::String]
            def message_path space:, message:
              raise ::ArgumentError, "space cannot contain /" if space.to_s.include? "/"

              "spaces/#{space}/messages/#{message}"
            end

            ##
            # Create a fully-qualified QuotedMessageMetadata resource string.
            #
            # The resource will be in the following format:
            #
            # `spaces/{space}/messages/{message}/quotedMessageMetadata/{quoted_message_metadata}`
            #
            # @param space [String]
            # @param message [String]
            # @param quoted_message_metadata [String]
            #
            # @return [::String]
            def quoted_message_metadata_path space:, message:, quoted_message_metadata:
              raise ::ArgumentError, "space cannot contain /" if space.to_s.include? "/"
              raise ::ArgumentError, "message cannot contain /" if message.to_s.include? "/"

              "spaces/#{space}/messages/#{message}/quotedMessageMetadata/#{quoted_message_metadata}"
            end

            ##
            # Create a fully-qualified Reaction resource string.
            #
            # The resource will be in the following format:
            #
            # `spaces/{space}/messages/{message}/reactions/{reaction}`
            #
            # @param space [String]
            # @param message [String]
            # @param reaction [String]
            #
            # @return [::String]
            def reaction_path space:, message:, reaction:
              raise ::ArgumentError, "space cannot contain /" if space.to_s.include? "/"
              raise ::ArgumentError, "message cannot contain /" if message.to_s.include? "/"

              "spaces/#{space}/messages/#{message}/reactions/#{reaction}"
            end

            ##
            # Create a fully-qualified Space resource string.
            #
            # The resource will be in the following format:
            #
            # `spaces/{space}`
            #
            # @param space [String]
            #
            # @return [::String]
            def space_path space:
              "spaces/#{space}"
            end

            ##
            # Create a fully-qualified SpaceEvent resource string.
            #
            # The resource will be in the following format:
            #
            # `spaces/{space}/spaceEvents/{space_event}`
            #
            # @param space [String]
            # @param space_event [String]
            #
            # @return [::String]
            def space_event_path space:, space_event:
              raise ::ArgumentError, "space cannot contain /" if space.to_s.include? "/"

              "spaces/#{space}/spaceEvents/#{space_event}"
            end

            ##
            # Create a fully-qualified SpaceNotificationSetting resource string.
            #
            # The resource will be in the following format:
            #
            # `users/{user}/spaces/{space}/spaceNotificationSetting`
            #
            # @param user [String]
            # @param space [String]
            #
            # @return [::String]
            def space_notification_setting_path user:, space:
              raise ::ArgumentError, "user cannot contain /" if user.to_s.include? "/"

              "users/#{user}/spaces/#{space}/spaceNotificationSetting"
            end

            ##
            # Create a fully-qualified SpaceReadState resource string.
            #
            # The resource will be in the following format:
            #
            # `users/{user}/spaces/{space}/spaceReadState`
            #
            # @param user [String]
            # @param space [String]
            #
            # @return [::String]
            def space_read_state_path user:, space:
              raise ::ArgumentError, "user cannot contain /" if user.to_s.include? "/"

              "users/#{user}/spaces/#{space}/spaceReadState"
            end

            ##
            # Create a fully-qualified Thread resource string.
            #
            # The resource will be in the following format:
            #
            # `spaces/{space}/threads/{thread}`
            #
            # @param space [String]
            # @param thread [String]
            #
            # @return [::String]
            def thread_path space:, thread:
              raise ::ArgumentError, "space cannot contain /" if space.to_s.include? "/"

              "spaces/#{space}/threads/#{thread}"
            end

            ##
            # Create a fully-qualified ThreadReadState resource string.
            #
            # The resource will be in the following format:
            #
            # `users/{user}/spaces/{space}/threads/{thread}/threadReadState`
            #
            # @param user [String]
            # @param space [String]
            # @param thread [String]
            #
            # @return [::String]
            def thread_read_state_path user:, space:, thread:
              raise ::ArgumentError, "user cannot contain /" if user.to_s.include? "/"
              raise ::ArgumentError, "space cannot contain /" if space.to_s.include? "/"

              "users/#{user}/spaces/#{space}/threads/#{thread}/threadReadState"
            end

            extend self
          end
        end
      end
    end
  end
end
