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
    module Support
      module V2beta
        # The request message for the ListComments endpoint.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The name of the case for which to list comments.
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     The maximum number of comments to fetch. Defaults to 10.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     A token identifying the page of results to return. If unspecified, the
        #     first page is returned.
        class ListCommentsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The response message for the ListComments endpoint.
        # @!attribute [rw] comments
        #   @return [::Array<::Google::Cloud::Support::V2beta::Comment>]
        #     List of the comments associated with the case.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     A token to retrieve the next page of results. Set this in the `page_token`
        #     field of subsequent `cases.comments.list` requests. If unspecified, there
        #     are no more results to retrieve.
        class ListCommentsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The request message for the CreateComment endpoint.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The name of the case to which the comment should be added.
        # @!attribute [rw] comment
        #   @return [::Google::Cloud::Support::V2beta::Comment]
        #     Required. The comment to be added.
        class CreateCommentRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
