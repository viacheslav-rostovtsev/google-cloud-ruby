# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/aiplatform/v1/feature_registry_service.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/aiplatform/v1/feature_pb'
require 'google/cloud/aiplatform/v1/feature_group_pb'
require 'google/cloud/aiplatform/v1/featurestore_service_pb'
require 'google/cloud/aiplatform/v1/operation_pb'
require 'google/longrunning/operations_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf/field_mask_pb'


descriptor_data = "\n9google/cloud/aiplatform/v1/feature_registry_service.proto\x12\x1agoogle.cloud.aiplatform.v1\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a(google/cloud/aiplatform/v1/feature.proto\x1a.google/cloud/aiplatform/v1/feature_group.proto\x1a\x35google/cloud/aiplatform/v1/featurestore_service.proto\x1a*google/cloud/aiplatform/v1/operation.proto\x1a#google/longrunning/operations.proto\x1a\x1bgoogle/protobuf/empty.proto\x1a google/protobuf/field_mask.proto\"\xc0\x01\n\x19\x43reateFeatureGroupRequest\x12>\n\x06parent\x18\x01 \x01(\tB.\xe0\x41\x02\xfa\x41(\x12&aiplatform.googleapis.com/FeatureGroup\x12\x44\n\rfeature_group\x18\x02 \x01(\x0b\x32(.google.cloud.aiplatform.v1.FeatureGroupB\x03\xe0\x41\x02\x12\x1d\n\x10\x66\x65\x61ture_group_id\x18\x03 \x01(\tB\x03\xe0\x41\x02\"V\n\x16GetFeatureGroupRequest\x12<\n\x04name\x18\x01 \x01(\tB.\xe0\x41\x02\xfa\x41(\n&aiplatform.googleapis.com/FeatureGroup\"\xa3\x01\n\x18ListFeatureGroupsRequest\x12>\n\x06parent\x18\x01 \x01(\tB.\xe0\x41\x02\xfa\x41(\x12&aiplatform.googleapis.com/FeatureGroup\x12\x0e\n\x06\x66ilter\x18\x02 \x01(\t\x12\x11\n\tpage_size\x18\x03 \x01(\x05\x12\x12\n\npage_token\x18\x04 \x01(\t\x12\x10\n\x08order_by\x18\x05 \x01(\t\"v\n\x19ListFeatureGroupsResponse\x12@\n\x0e\x66\x65\x61ture_groups\x18\x01 \x03(\x0b\x32(.google.cloud.aiplatform.v1.FeatureGroup\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\"\x92\x01\n\x19UpdateFeatureGroupRequest\x12\x44\n\rfeature_group\x18\x01 \x01(\x0b\x32(.google.cloud.aiplatform.v1.FeatureGroupB\x03\xe0\x41\x02\x12/\n\x0bupdate_mask\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.FieldMask\"h\n\x19\x44\x65leteFeatureGroupRequest\x12<\n\x04name\x18\x01 \x01(\tB.\xe0\x41\x02\xfa\x41(\n&aiplatform.googleapis.com/FeatureGroup\x12\r\n\x05\x66orce\x18\x02 \x01(\x08\"u\n#CreateFeatureGroupOperationMetadata\x12N\n\x10generic_metadata\x18\x01 \x01(\x0b\x32\x34.google.cloud.aiplatform.v1.GenericOperationMetadata\"u\n#UpdateFeatureGroupOperationMetadata\x12N\n\x10generic_metadata\x18\x01 \x01(\x0b\x32\x34.google.cloud.aiplatform.v1.GenericOperationMetadata\"x\n&CreateRegistryFeatureOperationMetadata\x12N\n\x10generic_metadata\x18\x01 \x01(\x0b\x32\x34.google.cloud.aiplatform.v1.GenericOperationMetadata\"p\n\x1eUpdateFeatureOperationMetadata\x12N\n\x10generic_metadata\x18\x01 \x01(\x0b\x32\x34.google.cloud.aiplatform.v1.GenericOperationMetadata2\xc6\x12\n\x16\x46\x65\x61tureRegistryService\x12\x93\x02\n\x12\x43reateFeatureGroup\x12\x35.google.cloud.aiplatform.v1.CreateFeatureGroupRequest\x1a\x1d.google.longrunning.Operation\"\xa6\x01\xca\x41\x33\n\x0c\x46\x65\x61tureGroup\x12#CreateFeatureGroupOperationMetadata\xda\x41%parent,feature_group,feature_group_id\x82\xd3\xe4\x93\x02\x42\"1/v1/{parent=projects/*/locations/*}/featureGroups:\rfeature_group\x12\xb1\x01\n\x0fGetFeatureGroup\x12\x32.google.cloud.aiplatform.v1.GetFeatureGroupRequest\x1a(.google.cloud.aiplatform.v1.FeatureGroup\"@\xda\x41\x04name\x82\xd3\xe4\x93\x02\x33\x12\x31/v1/{name=projects/*/locations/*/featureGroups/*}\x12\xc4\x01\n\x11ListFeatureGroups\x12\x34.google.cloud.aiplatform.v1.ListFeatureGroupsRequest\x1a\x35.google.cloud.aiplatform.v1.ListFeatureGroupsResponse\"B\xda\x41\x06parent\x82\xd3\xe4\x93\x02\x33\x12\x31/v1/{parent=projects/*/locations/*}/featureGroups\x12\x95\x02\n\x12UpdateFeatureGroup\x12\x35.google.cloud.aiplatform.v1.UpdateFeatureGroupRequest\x1a\x1d.google.longrunning.Operation\"\xa8\x01\xca\x41\x33\n\x0c\x46\x65\x61tureGroup\x12#UpdateFeatureGroupOperationMetadata\xda\x41\x19\x66\x65\x61ture_group,update_mask\x82\xd3\xe4\x93\x02P2?/v1/{feature_group.name=projects/*/locations/*/featureGroups/*}:\rfeature_group\x12\xe5\x01\n\x12\x44\x65leteFeatureGroup\x12\x35.google.cloud.aiplatform.v1.DeleteFeatureGroupRequest\x1a\x1d.google.longrunning.Operation\"y\xca\x41\x30\n\x15google.protobuf.Empty\x12\x17\x44\x65leteOperationMetadata\xda\x41\nname,force\x82\xd3\xe4\x93\x02\x33*1/v1/{name=projects/*/locations/*/featureGroups/*}\x12\xf8\x01\n\rCreateFeature\x12\x30.google.cloud.aiplatform.v1.CreateFeatureRequest\x1a\x1d.google.longrunning.Operation\"\x95\x01\xca\x41)\n\x07\x46\x65\x61ture\x12\x1e\x43reateFeatureOperationMetadata\xda\x41\x19parent,feature,feature_id\x82\xd3\xe4\x93\x02G\"</v1/{parent=projects/*/locations/*/featureGroups/*}/features:\x07\x66\x65\x61ture\x12\xad\x01\n\nGetFeature\x12-.google.cloud.aiplatform.v1.GetFeatureRequest\x1a#.google.cloud.aiplatform.v1.Feature\"K\xda\x41\x04name\x82\xd3\xe4\x93\x02>\x12</v1/{name=projects/*/locations/*/featureGroups/*/features/*}\x12\xc0\x01\n\x0cListFeatures\x12/.google.cloud.aiplatform.v1.ListFeaturesRequest\x1a\x30.google.cloud.aiplatform.v1.ListFeaturesResponse\"M\xda\x41\x06parent\x82\xd3\xe4\x93\x02>\x12</v1/{parent=projects/*/locations/*/featureGroups/*}/features\x12\xfa\x01\n\rUpdateFeature\x12\x30.google.cloud.aiplatform.v1.UpdateFeatureRequest\x1a\x1d.google.longrunning.Operation\"\x97\x01\xca\x41)\n\x07\x46\x65\x61ture\x12\x1eUpdateFeatureOperationMetadata\xda\x41\x13\x66\x65\x61ture,update_mask\x82\xd3\xe4\x93\x02O2D/v1/{feature.name=projects/*/locations/*/featureGroups/*/features/*}:\x07\x66\x65\x61ture\x12\xe0\x01\n\rDeleteFeature\x12\x30.google.cloud.aiplatform.v1.DeleteFeatureRequest\x1a\x1d.google.longrunning.Operation\"~\xca\x41\x30\n\x15google.protobuf.Empty\x12\x17\x44\x65leteOperationMetadata\xda\x41\x04name\x82\xd3\xe4\x93\x02>*</v1/{name=projects/*/locations/*/featureGroups/*/features/*}\x1aM\xca\x41\x19\x61iplatform.googleapis.com\xd2\x41.https://www.googleapis.com/auth/cloud-platformB\xd9\x01\n\x1e\x63om.google.cloud.aiplatform.v1B\x1b\x46\x65\x61tureRegistryServiceProtoP\x01Z>cloud.google.com/go/aiplatform/apiv1/aiplatformpb;aiplatformpb\xaa\x02\x1aGoogle.Cloud.AIPlatform.V1\xca\x02\x1aGoogle\\Cloud\\AIPlatform\\V1\xea\x02\x1dGoogle::Cloud::AIPlatform::V1b\x06proto3"

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
    ["google.cloud.aiplatform.v1.FeatureGroup", "google/cloud/aiplatform/v1/feature_group.proto"],
    ["google.protobuf.FieldMask", "google/protobuf/field_mask.proto"],
    ["google.cloud.aiplatform.v1.GenericOperationMetadata", "google/cloud/aiplatform/v1/operation.proto"],
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
        CreateFeatureGroupRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.CreateFeatureGroupRequest").msgclass
        GetFeatureGroupRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.GetFeatureGroupRequest").msgclass
        ListFeatureGroupsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.ListFeatureGroupsRequest").msgclass
        ListFeatureGroupsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.ListFeatureGroupsResponse").msgclass
        UpdateFeatureGroupRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.UpdateFeatureGroupRequest").msgclass
        DeleteFeatureGroupRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.DeleteFeatureGroupRequest").msgclass
        CreateFeatureGroupOperationMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.CreateFeatureGroupOperationMetadata").msgclass
        UpdateFeatureGroupOperationMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.UpdateFeatureGroupOperationMetadata").msgclass
        CreateRegistryFeatureOperationMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.CreateRegistryFeatureOperationMetadata").msgclass
        UpdateFeatureOperationMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.UpdateFeatureOperationMetadata").msgclass
      end
    end
  end
end
