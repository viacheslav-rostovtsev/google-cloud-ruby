# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/support/v2beta/attachment.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/support/v2beta/actor_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n,google/cloud/support/v2beta/attachment.proto\x12\x1bgoogle.cloud.support.v2beta\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a\'google/cloud/support/v2beta/actor.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"\x88\x03\n\nAttachment\x12\x14\n\x04name\x18\x01 \x01(\tB\x06\xe0\x41\x03\xe0\x41\x08\x12\x34\n\x0b\x63reate_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x38\n\x07\x63reator\x18\x03 \x01(\x0b\x32\".google.cloud.support.v2beta.ActorB\x03\xe0\x41\x03\x12\x10\n\x08\x66ilename\x18\x04 \x01(\t\x12\x16\n\tmime_type\x18\x05 \x01(\tB\x03\xe0\x41\x03\x12\x17\n\nsize_bytes\x18\x06 \x01(\x03\x42\x03\xe0\x41\x03:\xb0\x01\xea\x41\xac\x01\n&cloudsupport.googleapis.com/Attachment\x12\x45organizations/{organization}/cases/{case}/attachments/{attachment_id}\x12;projects/{project}/cases/{case}/attachments/{attachment_id}B\xcc\x01\n\x1f\x63om.google.cloud.support.v2betaB\x0f\x41ttachmentProtoP\x01Z9cloud.google.com/go/support/apiv2beta/supportpb;supportpb\xaa\x02\x1bGoogle.Cloud.Support.V2Beta\xca\x02\x1bGoogle\\Cloud\\Support\\V2beta\xea\x02\x1eGoogle::Cloud::Support::V2betab\x06proto3"

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
    ["google.cloud.support.v2beta.Actor", "google/cloud/support/v2beta/actor.proto"],
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
    module Support
      module V2beta
        Attachment = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.support.v2beta.Attachment").msgclass
      end
    end
  end
end
