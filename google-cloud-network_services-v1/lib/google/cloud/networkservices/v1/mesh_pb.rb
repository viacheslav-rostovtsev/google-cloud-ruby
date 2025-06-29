# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/networkservices/v1/mesh.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/networkservices/v1/common_pb'
require 'google/protobuf/field_mask_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n*google/cloud/networkservices/v1/mesh.proto\x12\x1fgoogle.cloud.networkservices.v1\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a,google/cloud/networkservices/v1/common.proto\x1a google/protobuf/field_mask.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"\x91\x04\n\x04Mesh\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x08\x12\x16\n\tself_link\x18\t \x01(\tB\x03\xe0\x41\x03\x12\x34\n\x0b\x63reate_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x34\n\x0bupdate_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x46\n\x06labels\x18\x04 \x03(\x0b\x32\x31.google.cloud.networkservices.v1.Mesh.LabelsEntryB\x03\xe0\x41\x01\x12\x18\n\x0b\x64\x65scription\x18\x05 \x01(\tB\x03\xe0\x41\x01\x12\x1e\n\x11interception_port\x18\x08 \x01(\x05\x42\x03\xe0\x41\x01\x12N\n\renvoy_headers\x18\x10 \x01(\x0e\x32-.google.cloud.networkservices.v1.EnvoyHeadersB\x03\xe0\x41\x01H\x00\x88\x01\x01\x1a-\n\x0bLabelsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01:_\xea\x41\\\n#networkservices.googleapis.com/Mesh\x12\x35projects/{project}/locations/{location}/meshes/{mesh}B\x10\n\x0e_envoy_headers\"\x9c\x01\n\x11ListMeshesRequest\x12;\n\x06parent\x18\x01 \x01(\tB+\xe0\x41\x02\xfa\x41%\x12#networkservices.googleapis.com/Mesh\x12\x11\n\tpage_size\x18\x02 \x01(\x05\x12\x12\n\npage_token\x18\x03 \x01(\t\x12#\n\x16return_partial_success\x18\x04 \x01(\x08\x42\x03\xe0\x41\x01\"y\n\x12ListMeshesResponse\x12\x35\n\x06meshes\x18\x01 \x03(\x0b\x32%.google.cloud.networkservices.v1.Mesh\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\x12\x13\n\x0bunreachable\x18\x03 \x03(\t\"K\n\x0eGetMeshRequest\x12\x39\n\x04name\x18\x01 \x01(\tB+\xe0\x41\x02\xfa\x41%\n#networkservices.googleapis.com/Mesh\"\xa0\x01\n\x11\x43reateMeshRequest\x12;\n\x06parent\x18\x01 \x01(\tB+\xe0\x41\x02\xfa\x41%\x12#networkservices.googleapis.com/Mesh\x12\x14\n\x07mesh_id\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12\x38\n\x04mesh\x18\x03 \x01(\x0b\x32%.google.cloud.networkservices.v1.MeshB\x03\xe0\x41\x02\"\x83\x01\n\x11UpdateMeshRequest\x12\x34\n\x0bupdate_mask\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.FieldMaskB\x03\xe0\x41\x01\x12\x38\n\x04mesh\x18\x02 \x01(\x0b\x32%.google.cloud.networkservices.v1.MeshB\x03\xe0\x41\x02\"N\n\x11\x44\x65leteMeshRequest\x12\x39\n\x04name\x18\x01 \x01(\tB+\xe0\x41\x02\xfa\x41%\n#networkservices.googleapis.com/MeshB\xe4\x02\n#com.google.cloud.networkservices.v1B\tMeshProtoP\x01ZMcloud.google.com/go/networkservices/apiv1/networkservicespb;networkservicespb\xaa\x02\x1fGoogle.Cloud.NetworkServices.V1\xca\x02\x1fGoogle\\Cloud\\NetworkServices\\V1\xea\x02\"Google::Cloud::NetworkServices::V1\xea\x41w\n(compute.googleapis.com/ServiceAttachment\x12Kprojects/{project}/regions/{region}/serviceAttachments/{service_attachment}b\x06proto3"

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
    ["google.protobuf.Timestamp", "google/protobuf/timestamp.proto"],
    ["google.protobuf.FieldMask", "google/protobuf/field_mask.proto"],
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
    module NetworkServices
      module V1
        Mesh = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkservices.v1.Mesh").msgclass
        ListMeshesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkservices.v1.ListMeshesRequest").msgclass
        ListMeshesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkservices.v1.ListMeshesResponse").msgclass
        GetMeshRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkservices.v1.GetMeshRequest").msgclass
        CreateMeshRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkservices.v1.CreateMeshRequest").msgclass
        UpdateMeshRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkservices.v1.UpdateMeshRequest").msgclass
        DeleteMeshRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkservices.v1.DeleteMeshRequest").msgclass
      end
    end
  end
end
