# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/aiplatform/v1/featurestore_monitoring.proto

require 'google/protobuf'


descriptor_data = "\n8google/cloud/aiplatform/v1/featurestore_monitoring.proto\x12\x1agoogle.cloud.aiplatform.v1\"\xa9\x08\n\x1c\x46\x65\x61turestoreMonitoringConfig\x12\x64\n\x11snapshot_analysis\x18\x01 \x01(\x0b\x32I.google.cloud.aiplatform.v1.FeaturestoreMonitoringConfig.SnapshotAnalysis\x12q\n\x18import_features_analysis\x18\x02 \x01(\x0b\x32O.google.cloud.aiplatform.v1.FeaturestoreMonitoringConfig.ImportFeaturesAnalysis\x12l\n\x1anumerical_threshold_config\x18\x03 \x01(\x0b\x32H.google.cloud.aiplatform.v1.FeaturestoreMonitoringConfig.ThresholdConfig\x12n\n\x1c\x63\x61tegorical_threshold_config\x18\x04 \x01(\x0b\x32H.google.cloud.aiplatform.v1.FeaturestoreMonitoringConfig.ThresholdConfig\x1a^\n\x10SnapshotAnalysis\x12\x10\n\x08\x64isabled\x18\x01 \x01(\x08\x12 \n\x18monitoring_interval_days\x18\x03 \x01(\x05\x12\x16\n\x0estaleness_days\x18\x04 \x01(\x05\x1a\xc0\x03\n\x16ImportFeaturesAnalysis\x12\x64\n\x05state\x18\x01 \x01(\x0e\x32U.google.cloud.aiplatform.v1.FeaturestoreMonitoringConfig.ImportFeaturesAnalysis.State\x12|\n\x1a\x61nomaly_detection_baseline\x18\x02 \x01(\x0e\x32X.google.cloud.aiplatform.v1.FeaturestoreMonitoringConfig.ImportFeaturesAnalysis.Baseline\"F\n\x05State\x12\x15\n\x11STATE_UNSPECIFIED\x10\x00\x12\x0b\n\x07\x44\x45\x46\x41ULT\x10\x01\x12\x0b\n\x07\x45NABLED\x10\x02\x12\x0c\n\x08\x44ISABLED\x10\x03\"z\n\x08\x42\x61seline\x12\x18\n\x14\x42\x41SELINE_UNSPECIFIED\x10\x00\x12\x10\n\x0cLATEST_STATS\x10\x01\x12\x1e\n\x1aMOST_RECENT_SNAPSHOT_STATS\x10\x02\x12\"\n\x1ePREVIOUS_IMPORT_FEATURES_STATS\x10\x03\x1a/\n\x0fThresholdConfig\x12\x0f\n\x05value\x18\x01 \x01(\x01H\x00\x42\x0b\n\tthresholdB\xd9\x01\n\x1e\x63om.google.cloud.aiplatform.v1B\x1b\x46\x65\x61turestoreMonitoringProtoP\x01Z>cloud.google.com/go/aiplatform/apiv1/aiplatformpb;aiplatformpb\xaa\x02\x1aGoogle.Cloud.AIPlatform.V1\xca\x02\x1aGoogle\\Cloud\\AIPlatform\\V1\xea\x02\x1dGoogle::Cloud::AIPlatform::V1b\x06proto3"

pool = Google::Protobuf::DescriptorPool.generated_pool

begin
  pool.add_serialized_file(descriptor_data)
rescue TypeError
  # Compatibility code: will be removed in the next major version.
  require 'google/protobuf/descriptor_pb'
  parsed = Google::Protobuf::FileDescriptorProto.decode(descriptor_data)
  parsed.clear_dependency
  serialized = parsed.class.encode(parsed)
  file = pool.add_serialized_file(serialized)
  warn "Warning: Protobuf detected an import path issue while loading generated file #{__FILE__}"
  imports = [
  ]
  imports.each do |type_name, expected_filename|
    import_file = pool.lookup(type_name).file_descriptor
    if import_file.name != expected_filename
      warn "- #{file.name} imports #{expected_filename}, but that import was loaded as #{import_file.name}"
    end
  end
  warn "Each proto file must use a consistent fully-qualified name."
  warn "This will become an error in the next major version."
end

module Google
  module Cloud
    module AIPlatform
      module V1
        FeaturestoreMonitoringConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.FeaturestoreMonitoringConfig").msgclass
        FeaturestoreMonitoringConfig::SnapshotAnalysis = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.FeaturestoreMonitoringConfig.SnapshotAnalysis").msgclass
        FeaturestoreMonitoringConfig::ImportFeaturesAnalysis = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.FeaturestoreMonitoringConfig.ImportFeaturesAnalysis").msgclass
        FeaturestoreMonitoringConfig::ImportFeaturesAnalysis::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.FeaturestoreMonitoringConfig.ImportFeaturesAnalysis.State").enummodule
        FeaturestoreMonitoringConfig::ImportFeaturesAnalysis::Baseline = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.FeaturestoreMonitoringConfig.ImportFeaturesAnalysis.Baseline").enummodule
        FeaturestoreMonitoringConfig::ThresholdConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.FeaturestoreMonitoringConfig.ThresholdConfig").msgclass
      end
    end
  end
end
