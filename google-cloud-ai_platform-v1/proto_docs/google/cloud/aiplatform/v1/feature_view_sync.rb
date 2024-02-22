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
    module Aiplatform
      module V1
        # FeatureViewSync is a representation of sync operation which copies data from
        # data source to Feature View in Online Store.
        # @!attribute [rw] name
        #   @return [::String]
        #     Identifier. Name of the FeatureViewSync. Format:
        #     `projects/{project}/locations/{location}/featureOnlineStores/{feature_online_store}/featureViews/{feature_view}/featureViewSyncs/{feature_view_sync}`
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Time when this FeatureViewSync is created. Creation of a
        #     FeatureViewSync means that the job is pending / waiting for sufficient
        #     resources but may not have started the actual data transfer yet.
        # @!attribute [r] run_time
        #   @return [::Google::Type::Interval]
        #     Output only. Time when this FeatureViewSync is finished.
        # @!attribute [r] final_status
        #   @return [::Google::Rpc::Status]
        #     Output only. Final status of the FeatureViewSync.
        class FeatureViewSync
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
