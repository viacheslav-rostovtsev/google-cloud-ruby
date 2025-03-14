# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/eventarc/publishing/v1/cloud_event.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/protobuf/any_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n5google/cloud/eventarc/publishing/v1/cloud_event.proto\x12#google.cloud.eventarc.publishing.v1\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/protobuf/any.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"\xfc\x04\n\nCloudEvent\x12\x0f\n\x02id\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12\x13\n\x06source\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12\x19\n\x0cspec_version\x18\x03 \x01(\tB\x03\xe0\x41\x02\x12\x11\n\x04type\x18\x04 \x01(\tB\x03\xe0\x41\x02\x12X\n\nattributes\x18\x05 \x03(\x0b\x32?.google.cloud.eventarc.publishing.v1.CloudEvent.AttributesEntryB\x03\xe0\x41\x01\x12\x1a\n\x0b\x62inary_data\x18\x06 \x01(\x0c\x42\x03\xe0\x41\x01H\x00\x12\x18\n\ttext_data\x18\x07 \x01(\tB\x03\xe0\x41\x01H\x00\x12/\n\nproto_data\x18\x08 \x01(\x0b\x32\x14.google.protobuf.AnyB\x03\xe0\x41\x01H\x00\x1a\xd3\x01\n\x18\x43loudEventAttributeValue\x12\x14\n\nce_boolean\x18\x01 \x01(\x08H\x00\x12\x14\n\nce_integer\x18\x02 \x01(\x05H\x00\x12\x13\n\tce_string\x18\x03 \x01(\tH\x00\x12\x12\n\x08\x63\x65_bytes\x18\x04 \x01(\x0cH\x00\x12\x10\n\x06\x63\x65_uri\x18\x05 \x01(\tH\x00\x12\x14\n\nce_uri_ref\x18\x06 \x01(\tH\x00\x12\x32\n\x0c\x63\x65_timestamp\x18\x07 \x01(\x0b\x32\x1a.google.protobuf.TimestampH\x00\x42\x06\n\x04\x61ttr\x1a{\n\x0f\x41ttributesEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12W\n\x05value\x18\x02 \x01(\x0b\x32H.google.cloud.eventarc.publishing.v1.CloudEvent.CloudEventAttributeValue:\x02\x38\x01\x42\x06\n\x04\x64\x61taB\xfb\x01\n\'com.google.cloud.eventarc.publishing.v1B\x0f\x43loudEventProtoP\x01ZGcloud.google.com/go/eventarc/publishing/apiv1/publishingpb;publishingpb\xaa\x02#Google.Cloud.Eventarc.Publishing.V1\xca\x02#Google\\Cloud\\Eventarc\\Publishing\\V1\xea\x02\'Google::Cloud::Eventarc::Publishing::V1b\x06proto3"

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
    ["google.protobuf.Any", "google/protobuf/any.proto"],
    ["google.protobuf.Timestamp", "google/protobuf/timestamp.proto"],
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
    module Eventarc
      module Publishing
        module V1
          CloudEvent = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.eventarc.publishing.v1.CloudEvent").msgclass
          CloudEvent::CloudEventAttributeValue = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.eventarc.publishing.v1.CloudEvent.CloudEventAttributeValue").msgclass
        end
      end
    end
  end
end
