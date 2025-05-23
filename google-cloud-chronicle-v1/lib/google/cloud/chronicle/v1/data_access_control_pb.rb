# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/chronicle/v1/data_access_control.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf/field_mask_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n3google/cloud/chronicle/v1/data_access_control.proto\x12\x19google.cloud.chronicle.v1\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a\x1bgoogle/protobuf/empty.proto\x1a google/protobuf/field_mask.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"\xcf\x01\n\x1c\x43reateDataAccessLabelRequest\x12@\n\x06parent\x18\x01 \x01(\tB0\xe0\x41\x02\xfa\x41*\x12(chronicle.googleapis.com/DataAccessLabel\x12J\n\x11\x64\x61ta_access_label\x18\x02 \x01(\x0b\x32*.google.cloud.chronicle.v1.DataAccessLabelB\x03\xe0\x41\x02\x12!\n\x14\x64\x61ta_access_label_id\x18\x03 \x01(\tB\x03\xe0\x41\x02\"[\n\x19GetDataAccessLabelRequest\x12>\n\x04name\x18\x01 \x01(\tB0\xe0\x41\x02\xfa\x41*\n(chronicle.googleapis.com/DataAccessLabel\"\x9b\x01\n\x1bListDataAccessLabelsRequest\x12@\n\x06parent\x18\x01 \x01(\tB0\xe0\x41\x02\xfa\x41*\x12(chronicle.googleapis.com/DataAccessLabel\x12\x11\n\tpage_size\x18\x02 \x01(\x05\x12\x12\n\npage_token\x18\x03 \x01(\t\x12\x13\n\x06\x66ilter\x18\x04 \x01(\tB\x03\xe0\x41\x01\"\x7f\n\x1cListDataAccessLabelsResponse\x12\x46\n\x12\x64\x61ta_access_labels\x18\x01 \x03(\x0b\x32*.google.cloud.chronicle.v1.DataAccessLabel\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\"\x9b\x01\n\x1cUpdateDataAccessLabelRequest\x12J\n\x11\x64\x61ta_access_label\x18\x01 \x01(\x0b\x32*.google.cloud.chronicle.v1.DataAccessLabelB\x03\xe0\x41\x02\x12/\n\x0bupdate_mask\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.FieldMask\"^\n\x1c\x44\x65leteDataAccessLabelRequest\x12>\n\x04name\x18\x01 \x01(\tB0\xe0\x41\x02\xfa\x41*\n(chronicle.googleapis.com/DataAccessLabel\"\xcf\x01\n\x1c\x43reateDataAccessScopeRequest\x12@\n\x06parent\x18\x01 \x01(\tB0\xe0\x41\x02\xfa\x41*\x12(chronicle.googleapis.com/DataAccessScope\x12J\n\x11\x64\x61ta_access_scope\x18\x02 \x01(\x0b\x32*.google.cloud.chronicle.v1.DataAccessScopeB\x03\xe0\x41\x02\x12!\n\x14\x64\x61ta_access_scope_id\x18\x03 \x01(\tB\x03\xe0\x41\x02\"[\n\x19GetDataAccessScopeRequest\x12>\n\x04name\x18\x01 \x01(\tB0\xe0\x41\x02\xfa\x41*\n(chronicle.googleapis.com/DataAccessScope\"\x9b\x01\n\x1bListDataAccessScopesRequest\x12@\n\x06parent\x18\x01 \x01(\tB0\xe0\x41\x02\xfa\x41*\x12(chronicle.googleapis.com/DataAccessScope\x12\x11\n\tpage_size\x18\x02 \x01(\x05\x12\x12\n\npage_token\x18\x03 \x01(\t\x12\x13\n\x06\x66ilter\x18\x04 \x01(\tB\x03\xe0\x41\x01\"\xd3\x01\n\x1cListDataAccessScopesResponse\x12\x46\n\x12\x64\x61ta_access_scopes\x18\x01 \x03(\x0b\x32*.google.cloud.chronicle.v1.DataAccessScope\x12-\n global_data_access_scope_granted\x18\x03 \x01(\x08H\x00\x88\x01\x01\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\tB#\n!_global_data_access_scope_granted\"\x9b\x01\n\x1cUpdateDataAccessScopeRequest\x12J\n\x11\x64\x61ta_access_scope\x18\x01 \x01(\x0b\x32*.google.cloud.chronicle.v1.DataAccessScopeB\x03\xe0\x41\x02\x12/\n\x0bupdate_mask\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.FieldMask\"^\n\x1c\x44\x65leteDataAccessScopeRequest\x12>\n\x04name\x18\x01 \x01(\tB0\xe0\x41\x02\xfa\x41*\n(chronicle.googleapis.com/DataAccessScope\"\xd5\x03\n\x0f\x44\x61taAccessLabel\x12\x13\n\tudm_query\x18\x03 \x01(\tH\x00\x12;\n\x04name\x18\x01 \x01(\tB-\xfa\x41*\n(chronicle.googleapis.com/DataAccessLabel\x12\x19\n\x0c\x64isplay_name\x18\x08 \x01(\tB\x03\xe0\x41\x03\x12\x34\n\x0b\x63reate_time\x18\x04 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x34\n\x0bupdate_time\x18\x05 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x13\n\x06\x61uthor\x18\x06 \x01(\tB\x03\xe0\x41\x03\x12\x18\n\x0blast_editor\x18\x07 \x01(\tB\x03\xe0\x41\x03\x12\x18\n\x0b\x64\x65scription\x18\x02 \x01(\tB\x03\xe0\x41\x01:\x91\x01\xea\x41\x8d\x01\n(chronicle.googleapis.com/DataAccessLabel\x12\x61projects/{project}/locations/{location}/instances/{instance}/dataAccessLabels/{data_access_label}B\x0c\n\ndefinition\"\x88\x05\n\x0f\x44\x61taAccessScope\x12>\n\x04name\x18\x01 \x01(\tB0\xe0\x41\x02\xfa\x41*\n(chronicle.googleapis.com/DataAccessScope\x12\\\n\x1a\x61llowed_data_access_labels\x18\x02 \x03(\x0b\x32\x33.google.cloud.chronicle.v1.DataAccessLabelReferenceB\x03\xe0\x41\x01\x12[\n\x19\x64\x65nied_data_access_labels\x18\x03 \x03(\x0b\x32\x33.google.cloud.chronicle.v1.DataAccessLabelReferenceB\x03\xe0\x41\x01\x12\x19\n\x0c\x64isplay_name\x18\x04 \x01(\tB\x03\xe0\x41\x03\x12\x34\n\x0b\x63reate_time\x18\x05 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x34\n\x0bupdate_time\x18\x06 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x13\n\x06\x61uthor\x18\x07 \x01(\tB\x03\xe0\x41\x03\x12\x18\n\x0blast_editor\x18\x08 \x01(\tB\x03\xe0\x41\x03\x12\x18\n\x0b\x64\x65scription\x18\t \x01(\tB\x03\xe0\x41\x01\x12\x16\n\tallow_all\x18\n \x01(\x08\x42\x03\xe0\x41\x01:\x91\x01\xea\x41\x8d\x01\n(chronicle.googleapis.com/DataAccessScope\x12\x61projects/{project}/locations/{location}/instances/{instance}/dataAccessScopes/{data_access_scope}\"\xd0\x01\n\x18\x44\x61taAccessLabelReference\x12\x1b\n\x11\x64\x61ta_access_label\x18\x01 \x01(\tH\x00\x12\x12\n\x08log_type\x18\x02 \x01(\tH\x00\x12\x19\n\x0f\x61sset_namespace\x18\x03 \x01(\tH\x00\x12\x44\n\x0fingestion_label\x18\x04 \x01(\x0b\x32).google.cloud.chronicle.v1.IngestionLabelH\x00\x12\x19\n\x0c\x64isplay_name\x18\x05 \x01(\tB\x03\xe0\x41\x03\x42\x07\n\x05label\"V\n\x0eIngestionLabel\x12 \n\x13ingestion_label_key\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12\"\n\x15ingestion_label_value\x18\x02 \x01(\tB\x03\xe0\x41\x01\x32\xe6\x12\n\x18\x44\x61taAccessControlService\x12\x8a\x02\n\x15\x43reateDataAccessLabel\x12\x37.google.cloud.chronicle.v1.CreateDataAccessLabelRequest\x1a*.google.cloud.chronicle.v1.DataAccessLabel\"\x8b\x01\xda\x41-parent,data_access_label,data_access_label_id\x82\xd3\xe4\x93\x02U\"@/v1/{parent=projects/*/locations/*/instances/*}/dataAccessLabels:\x11\x64\x61ta_access_label\x12\xc7\x01\n\x12GetDataAccessLabel\x12\x34.google.cloud.chronicle.v1.GetDataAccessLabelRequest\x1a*.google.cloud.chronicle.v1.DataAccessLabel\"O\xda\x41\x04name\x82\xd3\xe4\x93\x02\x42\x12@/v1/{name=projects/*/locations/*/instances/*/dataAccessLabels/*}\x12\xda\x01\n\x14ListDataAccessLabels\x12\x36.google.cloud.chronicle.v1.ListDataAccessLabelsRequest\x1a\x37.google.cloud.chronicle.v1.ListDataAccessLabelsResponse\"Q\xda\x41\x06parent\x82\xd3\xe4\x93\x02\x42\x12@/v1/{parent=projects/*/locations/*/instances/*}/dataAccessLabels\x12\x8c\x02\n\x15UpdateDataAccessLabel\x12\x37.google.cloud.chronicle.v1.UpdateDataAccessLabelRequest\x1a*.google.cloud.chronicle.v1.DataAccessLabel\"\x8d\x01\xda\x41\x1d\x64\x61ta_access_label,update_mask\x82\xd3\xe4\x93\x02g2R/v1/{data_access_label.name=projects/*/locations/*/instances/*/dataAccessLabels/*}:\x11\x64\x61ta_access_label\x12\xb9\x01\n\x15\x44\x65leteDataAccessLabel\x12\x37.google.cloud.chronicle.v1.DeleteDataAccessLabelRequest\x1a\x16.google.protobuf.Empty\"O\xda\x41\x04name\x82\xd3\xe4\x93\x02\x42*@/v1/{name=projects/*/locations/*/instances/*/dataAccessLabels/*}\x12\x8a\x02\n\x15\x43reateDataAccessScope\x12\x37.google.cloud.chronicle.v1.CreateDataAccessScopeRequest\x1a*.google.cloud.chronicle.v1.DataAccessScope\"\x8b\x01\xda\x41-parent,data_access_scope,data_access_scope_id\x82\xd3\xe4\x93\x02U\"@/v1/{parent=projects/*/locations/*/instances/*}/dataAccessScopes:\x11\x64\x61ta_access_scope\x12\xc7\x01\n\x12GetDataAccessScope\x12\x34.google.cloud.chronicle.v1.GetDataAccessScopeRequest\x1a*.google.cloud.chronicle.v1.DataAccessScope\"O\xda\x41\x04name\x82\xd3\xe4\x93\x02\x42\x12@/v1/{name=projects/*/locations/*/instances/*/dataAccessScopes/*}\x12\xda\x01\n\x14ListDataAccessScopes\x12\x36.google.cloud.chronicle.v1.ListDataAccessScopesRequest\x1a\x37.google.cloud.chronicle.v1.ListDataAccessScopesResponse\"Q\xda\x41\x06parent\x82\xd3\xe4\x93\x02\x42\x12@/v1/{parent=projects/*/locations/*/instances/*}/dataAccessScopes\x12\x8c\x02\n\x15UpdateDataAccessScope\x12\x37.google.cloud.chronicle.v1.UpdateDataAccessScopeRequest\x1a*.google.cloud.chronicle.v1.DataAccessScope\"\x8d\x01\xda\x41\x1d\x64\x61ta_access_scope,update_mask\x82\xd3\xe4\x93\x02g2R/v1/{data_access_scope.name=projects/*/locations/*/instances/*/dataAccessScopes/*}:\x11\x64\x61ta_access_scope\x12\xb9\x01\n\x15\x44\x65leteDataAccessScope\x12\x37.google.cloud.chronicle.v1.DeleteDataAccessScopeRequest\x1a\x16.google.protobuf.Empty\"O\xda\x41\x04name\x82\xd3\xe4\x93\x02\x42*@/v1/{name=projects/*/locations/*/instances/*/dataAccessScopes/*}\x1aL\xca\x41\x18\x63hronicle.googleapis.com\xd2\x41.https://www.googleapis.com/auth/cloud-platformB\xc6\x01\n\x1d\x63om.google.cloud.chronicle.v1B\x0f\x44\x61taAccessProtoP\x01Z;cloud.google.com/go/chronicle/apiv1/chroniclepb;chroniclepb\xaa\x02\x19Google.Cloud.Chronicle.V1\xca\x02\x19Google\\Cloud\\Chronicle\\V1\xea\x02\x1cGoogle::Cloud::Chronicle::V1b\x06proto3"

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
    ["google.protobuf.FieldMask", "google/protobuf/field_mask.proto"],
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
    module Chronicle
      module V1
        CreateDataAccessLabelRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.chronicle.v1.CreateDataAccessLabelRequest").msgclass
        GetDataAccessLabelRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.chronicle.v1.GetDataAccessLabelRequest").msgclass
        ListDataAccessLabelsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.chronicle.v1.ListDataAccessLabelsRequest").msgclass
        ListDataAccessLabelsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.chronicle.v1.ListDataAccessLabelsResponse").msgclass
        UpdateDataAccessLabelRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.chronicle.v1.UpdateDataAccessLabelRequest").msgclass
        DeleteDataAccessLabelRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.chronicle.v1.DeleteDataAccessLabelRequest").msgclass
        CreateDataAccessScopeRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.chronicle.v1.CreateDataAccessScopeRequest").msgclass
        GetDataAccessScopeRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.chronicle.v1.GetDataAccessScopeRequest").msgclass
        ListDataAccessScopesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.chronicle.v1.ListDataAccessScopesRequest").msgclass
        ListDataAccessScopesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.chronicle.v1.ListDataAccessScopesResponse").msgclass
        UpdateDataAccessScopeRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.chronicle.v1.UpdateDataAccessScopeRequest").msgclass
        DeleteDataAccessScopeRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.chronicle.v1.DeleteDataAccessScopeRequest").msgclass
        DataAccessLabel = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.chronicle.v1.DataAccessLabel").msgclass
        DataAccessScope = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.chronicle.v1.DataAccessScope").msgclass
        DataAccessLabelReference = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.chronicle.v1.DataAccessLabelReference").msgclass
        IngestionLabel = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.chronicle.v1.IngestionLabel").msgclass
      end
    end
  end
end
