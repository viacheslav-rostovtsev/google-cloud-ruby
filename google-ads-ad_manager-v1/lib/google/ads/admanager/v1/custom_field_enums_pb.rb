# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/admanager/v1/custom_field_enums.proto

require 'google/protobuf'


descriptor_data = "\n0google/ads/admanager/v1/custom_field_enums.proto\x12\x17google.ads.admanager.v1\"\x8b\x01\n\x17\x43ustomFieldDataTypeEnum\"p\n\x13\x43ustomFieldDataType\x12&\n\"CUSTOM_FIELD_DATA_TYPE_UNSPECIFIED\x10\x00\x12\n\n\x06STRING\x10\x01\x12\n\n\x06NUMBER\x10\x02\x12\n\n\x06TOGGLE\x10\x03\x12\r\n\tDROP_DOWN\x10\x04\"\xad\x01\n\x19\x43ustomFieldEntityTypeEnum\"\x8f\x01\n\x15\x43ustomFieldEntityType\x12(\n$CUSTOM_FIELD_ENTITY_TYPE_UNSPECIFIED\x10\x00\x12\r\n\tLINE_ITEM\x10\x01\x12\t\n\x05ORDER\x10\x02\x12\x0c\n\x08\x43REATIVE\x10\x03\x12\x0c\n\x08PROPOSAL\x10\x04\x12\x16\n\x12PROPOSAL_LINE_ITEM\x10\x05\"k\n\x15\x43ustomFieldStatusEnum\"R\n\x11\x43ustomFieldStatus\x12#\n\x1f\x43USTOM_FIELD_STATUS_UNSPECIFIED\x10\x00\x12\n\n\x06\x41\x43TIVE\x10\x01\x12\x0c\n\x08INACTIVE\x10\x02\"\x86\x01\n\x19\x43ustomFieldVisibilityEnum\"i\n\x15\x43ustomFieldVisibility\x12\'\n#CUSTOM_FIELD_VISIBILITY_UNSPECIFIED\x10\x00\x12\n\n\x06HIDDEN\x10\x01\x12\r\n\tREAD_ONLY\x10\x02\x12\x0c\n\x08\x45\x44ITABLE\x10\x03\x42\xc9\x01\n\x1b\x63om.google.ads.admanager.v1B\x15\x43ustomFieldEnumsProtoP\x01Z@google.golang.org/genproto/googleapis/ads/admanager/v1;admanager\xaa\x02\x17Google.Ads.AdManager.V1\xca\x02\x17Google\\Ads\\AdManager\\V1\xea\x02\x1aGoogle::Ads::AdManager::V1b\x06proto3"

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
  module Ads
    module AdManager
      module V1
        CustomFieldDataTypeEnum = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.admanager.v1.CustomFieldDataTypeEnum").msgclass
        CustomFieldDataTypeEnum::CustomFieldDataType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.admanager.v1.CustomFieldDataTypeEnum.CustomFieldDataType").enummodule
        CustomFieldEntityTypeEnum = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.admanager.v1.CustomFieldEntityTypeEnum").msgclass
        CustomFieldEntityTypeEnum::CustomFieldEntityType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.admanager.v1.CustomFieldEntityTypeEnum.CustomFieldEntityType").enummodule
        CustomFieldStatusEnum = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.admanager.v1.CustomFieldStatusEnum").msgclass
        CustomFieldStatusEnum::CustomFieldStatus = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.admanager.v1.CustomFieldStatusEnum.CustomFieldStatus").enummodule
        CustomFieldVisibilityEnum = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.admanager.v1.CustomFieldVisibilityEnum").msgclass
        CustomFieldVisibilityEnum::CustomFieldVisibility = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.admanager.v1.CustomFieldVisibilityEnum.CustomFieldVisibility").enummodule
      end
    end
  end
end
