# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/maps/fleetengine/delivery/v1/header.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'


descriptor_data = "\n0google/maps/fleetengine/delivery/v1/header.proto\x12\x1cmaps.fleetengine.delivery.v1\x1a\x1fgoogle/api/field_behavior.proto\"\xb0\x04\n\x15\x44\x65liveryRequestHeader\x12\x15\n\rlanguage_code\x18\x01 \x01(\t\x12\x18\n\x0bregion_code\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12\x13\n\x0bsdk_version\x18\x03 \x01(\t\x12\x12\n\nos_version\x18\x04 \x01(\t\x12\x14\n\x0c\x64\x65vice_model\x18\x05 \x01(\t\x12M\n\x08sdk_type\x18\x06 \x01(\x0e\x32;.maps.fleetengine.delivery.v1.DeliveryRequestHeader.SdkType\x12\x18\n\x10maps_sdk_version\x18\x07 \x01(\t\x12\x17\n\x0fnav_sdk_version\x18\x08 \x01(\t\x12N\n\x08platform\x18\t \x01(\x0e\x32<.maps.fleetengine.delivery.v1.DeliveryRequestHeader.Platform\x12\x14\n\x0cmanufacturer\x18\n \x01(\t\x12\x19\n\x11\x61ndroid_api_level\x18\x0b \x01(\x05\x12\x10\n\x08trace_id\x18\x0c \x01(\t\"M\n\x07SdkType\x12\x18\n\x14SDK_TYPE_UNSPECIFIED\x10\x00\x12\x0c\n\x08\x43ONSUMER\x10\x01\x12\n\n\x06\x44RIVER\x10\x02\x12\x0e\n\nJAVASCRIPT\x10\x03\"C\n\x08Platform\x12\x18\n\x14PLATFORM_UNSPECIFIED\x10\x00\x12\x0b\n\x07\x41NDROID\x10\x01\x12\x07\n\x03IOS\x10\x02\x12\x07\n\x03WEB\x10\x03\x42\xf8\x01\n#google.maps.fleetengine.delivery.v1B\x07HeadersP\x01ZIcloud.google.com/go/maps/fleetengine/delivery/apiv1/deliverypb;deliverypb\xa2\x02\x04\x43\x46\x45\x44\xaa\x02#Google.Maps.FleetEngine.Delivery.V1\xca\x02#Google\\Maps\\FleetEngine\\Delivery\\V1\xea\x02\'Google::Maps::FleetEngine::Delivery::V1b\x06proto3"

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
  module Maps
    module FleetEngine
      module Delivery
        module V1
          DeliveryRequestHeader = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("maps.fleetengine.delivery.v1.DeliveryRequestHeader").msgclass
          DeliveryRequestHeader::SdkType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("maps.fleetengine.delivery.v1.DeliveryRequestHeader.SdkType").enummodule
          DeliveryRequestHeader::Platform = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("maps.fleetengine.delivery.v1.DeliveryRequestHeader.Platform").enummodule
        end
      end
    end
  end
end
