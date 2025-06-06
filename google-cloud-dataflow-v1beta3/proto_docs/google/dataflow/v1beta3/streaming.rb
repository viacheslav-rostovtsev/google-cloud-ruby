# frozen_string_literal: true

# Copyright 2021 Google LLC
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
    module Dataflow
      module V1beta3
        # Global topology of the streaming Dataflow job, including all
        # computations and their sharded locations.
        # @!attribute [rw] computations
        #   @return [::Array<::Google::Cloud::Dataflow::V1beta3::ComputationTopology>]
        #     The computations associated with a streaming Dataflow job.
        # @!attribute [rw] data_disk_assignments
        #   @return [::Array<::Google::Cloud::Dataflow::V1beta3::DataDiskAssignment>]
        #     The disks assigned to a streaming Dataflow job.
        # @!attribute [rw] user_stage_to_computation_name_map
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Maps user stage names to stable computation names.
        # @!attribute [rw] forwarding_key_bits
        #   @return [::Integer]
        #     The size (in bits) of keys that will be assigned to source messages.
        # @!attribute [rw] persistent_state_version
        #   @return [::Integer]
        #     Version number for persistent state.
        class TopologyConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class UserStageToComputationNameMapEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # Identifies a pubsub location to use for transferring data into or
        # out of a streaming Dataflow job.
        # @!attribute [rw] topic
        #   @return [::String]
        #     A pubsub topic, in the form of
        #     "pubsub.googleapis.com/topics/<project-id>/<topic-name>"
        # @!attribute [rw] subscription
        #   @return [::String]
        #     A pubsub subscription, in the form of
        #     "pubsub.googleapis.com/subscriptions/<project-id>/<subscription-name>"
        # @!attribute [rw] timestamp_label
        #   @return [::String]
        #     If set, contains a pubsub label from which to extract record timestamps.
        #     If left empty, record timestamps will be generated upon arrival.
        # @!attribute [rw] id_label
        #   @return [::String]
        #     If set, contains a pubsub label from which to extract record ids.
        #     If left empty, record deduplication will be strictly best effort.
        # @!attribute [rw] drop_late_data
        #   @return [::Boolean]
        #     Indicates whether the pipeline allows late-arriving data.
        # @!attribute [rw] tracking_subscription
        #   @return [::String]
        #     If set, specifies the pubsub subscription that will be used for tracking
        #     custom time timestamps for watermark estimation.
        # @!attribute [rw] with_attributes
        #   @return [::Boolean]
        #     If true, then the client has requested to get pubsub attributes.
        # @!attribute [rw] dynamic_destinations
        #   @return [::Boolean]
        #     If true, then this location represents dynamic topics.
        class PubsubLocation
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Identifies the location of a streaming computation stage, for
        # stage-to-stage communication.
        # @!attribute [rw] stream_id
        #   @return [::String]
        #     Identifies the particular stream within the streaming Dataflow
        #     job.
        class StreamingStageLocation
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Identifies the location of a streaming side input.
        # @!attribute [rw] tag
        #   @return [::String]
        #     Identifies the particular side input within the streaming Dataflow job.
        # @!attribute [rw] state_family
        #   @return [::String]
        #     Identifies the state family where this side input is stored.
        class StreamingSideInputLocation
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Identifies the location of a custom souce.
        # @!attribute [rw] stateful
        #   @return [::Boolean]
        #     Whether this source is stateful.
        class CustomSourceLocation
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Describes a stream of data, either as input to be processed or as
        # output of a streaming Dataflow job.
        # @!attribute [rw] streaming_stage_location
        #   @return [::Google::Cloud::Dataflow::V1beta3::StreamingStageLocation]
        #     The stream is part of another computation within the current
        #     streaming Dataflow job.
        #
        #     Note: The following fields are mutually exclusive: `streaming_stage_location`, `pubsub_location`, `side_input_location`, `custom_source_location`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] pubsub_location
        #   @return [::Google::Cloud::Dataflow::V1beta3::PubsubLocation]
        #     The stream is a pubsub stream.
        #
        #     Note: The following fields are mutually exclusive: `pubsub_location`, `streaming_stage_location`, `side_input_location`, `custom_source_location`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] side_input_location
        #   @return [::Google::Cloud::Dataflow::V1beta3::StreamingSideInputLocation]
        #     The stream is a streaming side input.
        #
        #     Note: The following fields are mutually exclusive: `side_input_location`, `streaming_stage_location`, `pubsub_location`, `custom_source_location`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] custom_source_location
        #   @return [::Google::Cloud::Dataflow::V1beta3::CustomSourceLocation]
        #     The stream is a custom source.
        #
        #     Note: The following fields are mutually exclusive: `custom_source_location`, `streaming_stage_location`, `pubsub_location`, `side_input_location`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        class StreamLocation
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # State family configuration.
        # @!attribute [rw] state_family
        #   @return [::String]
        #     The state family value.
        # @!attribute [rw] is_read
        #   @return [::Boolean]
        #     If true, this family corresponds to a read operation.
        class StateFamilyConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # All configuration data for a particular Computation.
        # @!attribute [rw] system_stage_name
        #   @return [::String]
        #     The system stage name.
        # @!attribute [rw] computation_id
        #   @return [::String]
        #     The ID of the computation.
        # @!attribute [rw] key_ranges
        #   @return [::Array<::Google::Cloud::Dataflow::V1beta3::KeyRangeLocation>]
        #     The key ranges processed by the computation.
        # @!attribute [rw] inputs
        #   @return [::Array<::Google::Cloud::Dataflow::V1beta3::StreamLocation>]
        #     The inputs to the computation.
        # @!attribute [rw] outputs
        #   @return [::Array<::Google::Cloud::Dataflow::V1beta3::StreamLocation>]
        #     The outputs from the computation.
        # @!attribute [rw] state_families
        #   @return [::Array<::Google::Cloud::Dataflow::V1beta3::StateFamilyConfig>]
        #     The state family values.
        class ComputationTopology
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Location information for a specific key-range of a sharded computation.
        # Currently we only support UTF-8 character splits to simplify encoding into
        # JSON.
        # @!attribute [rw] start
        #   @return [::String]
        #     The start (inclusive) of the key range.
        # @!attribute [rw] end
        #   @return [::String]
        #     The end (exclusive) of the key range.
        # @!attribute [rw] delivery_endpoint
        #   @return [::String]
        #     The physical location of this range assignment to be used for
        #     streaming computation cross-worker message delivery.
        # @!attribute [rw] data_disk
        #   @return [::String]
        #     The name of the data disk where data for this range is stored.
        #     This name is local to the Google Cloud Platform project and uniquely
        #     identifies the disk within that project, for example
        #     "myproject-1014-104817-4c2-harness-0-disk-1".
        # @!attribute [rw] deprecated_persistent_directory
        #   @deprecated This field is deprecated and may be removed in the next major version update.
        #   @return [::String]
        #     DEPRECATED. The location of the persistent state for this range, as a
        #     persistent directory in the worker local filesystem.
        class KeyRangeLocation
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Describes mounted data disk.
        # @!attribute [rw] data_disk
        #   @return [::String]
        #     The name of the data disk.
        #     This name is local to the Google Cloud Platform project and uniquely
        #     identifies the disk within that project, for example
        #     "myproject-1014-104817-4c2-harness-0-disk-1".
        class MountedDataDisk
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Data disk assignment for a given VM instance.
        # @!attribute [rw] vm_instance
        #   @return [::String]
        #     VM instance name the data disks mounted to, for example
        #     "myproject-1014-104817-4c2-harness-0".
        # @!attribute [rw] data_disks
        #   @return [::Array<::String>]
        #     Mounted data disks. The order is important a data disk's 0-based index in
        #     this list defines which persistent directory the disk is mounted to, for
        #     example the list of { "myproject-1014-104817-4c2-harness-0-disk-0" },
        #     { "myproject-1014-104817-4c2-harness-0-disk-1" }.
        class DataDiskAssignment
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Data disk assignment information for a specific key-range of a sharded
        # computation.
        # Currently we only support UTF-8 character splits to simplify encoding into
        # JSON.
        # @!attribute [rw] start
        #   @return [::String]
        #     The start (inclusive) of the key range.
        # @!attribute [rw] end
        #   @return [::String]
        #     The end (exclusive) of the key range.
        # @!attribute [rw] data_disk
        #   @return [::String]
        #     The name of the data disk where data for this range is stored.
        #     This name is local to the Google Cloud Platform project and uniquely
        #     identifies the disk within that project, for example
        #     "myproject-1014-104817-4c2-harness-0-disk-1".
        class KeyRangeDataDiskAssignment
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Describes full or partial data disk assignment information of the computation
        # ranges.
        # @!attribute [rw] computation_id
        #   @return [::String]
        #     The ID of the computation.
        # @!attribute [rw] range_assignments
        #   @return [::Array<::Google::Cloud::Dataflow::V1beta3::KeyRangeDataDiskAssignment>]
        #     Data disk assignments for ranges from this computation.
        class StreamingComputationRanges
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Streaming appliance snapshot configuration.
        # @!attribute [rw] snapshot_id
        #   @return [::String]
        #     If set, indicates the snapshot id for the snapshot being performed.
        # @!attribute [rw] import_state_endpoint
        #   @return [::String]
        #     Indicates which endpoint is used to import appliance state.
        class StreamingApplianceSnapshotConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
