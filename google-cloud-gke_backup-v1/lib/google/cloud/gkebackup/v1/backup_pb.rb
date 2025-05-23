# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/gkebackup/v1/backup.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/gkebackup/v1/common_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n&google/cloud/gkebackup/v1/backup.proto\x12\x19google.cloud.gkebackup.v1\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a&google/cloud/gkebackup/v1/common.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"\xbe\x0e\n\x06\x42\x61\x63kup\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x03\x12\x10\n\x03uid\x18\x02 \x01(\tB\x03\xe0\x41\x03\x12\x34\n\x0b\x63reate_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x34\n\x0bupdate_time\x18\x04 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x13\n\x06manual\x18\x05 \x01(\x08\x42\x03\xe0\x41\x03\x12\x42\n\x06labels\x18\x06 \x03(\x0b\x32-.google.cloud.gkebackup.v1.Backup.LabelsEntryB\x03\xe0\x41\x01\x12\x1d\n\x10\x64\x65lete_lock_days\x18\x07 \x01(\x05\x42\x03\xe0\x41\x01\x12@\n\x17\x64\x65lete_lock_expire_time\x18\x08 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x18\n\x0bretain_days\x18\t \x01(\x05\x42\x03\xe0\x41\x01\x12;\n\x12retain_expire_time\x18\n \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x45\n\x0e\x65ncryption_key\x18\x0b \x01(\x0b\x32(.google.cloud.gkebackup.v1.EncryptionKeyB\x03\xe0\x41\x03\x12\x1d\n\x0e\x61ll_namespaces\x18\x0c \x01(\x08\x42\x03\xe0\x41\x03H\x00\x12I\n\x13selected_namespaces\x18\r \x01(\x0b\x32%.google.cloud.gkebackup.v1.NamespacesB\x03\xe0\x41\x03H\x00\x12P\n\x15selected_applications\x18\x0e \x01(\x0b\x32*.google.cloud.gkebackup.v1.NamespacedNamesB\x03\xe0\x41\x03H\x00\x12!\n\x14\x63ontains_volume_data\x18\x0f \x01(\x08\x42\x03\xe0\x41\x03\x12\x1d\n\x10\x63ontains_secrets\x18\x10 \x01(\x08\x42\x03\xe0\x41\x03\x12P\n\x10\x63luster_metadata\x18\x11 \x01(\x0b\x32\x31.google.cloud.gkebackup.v1.Backup.ClusterMetadataB\x03\xe0\x41\x03\x12;\n\x05state\x18\x12 \x01(\x0e\x32\'.google.cloud.gkebackup.v1.Backup.StateB\x03\xe0\x41\x03\x12\x19\n\x0cstate_reason\x18\x13 \x01(\tB\x03\xe0\x41\x03\x12\x36\n\rcomplete_time\x18\x14 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x1b\n\x0eresource_count\x18\x15 \x01(\x05\x42\x03\xe0\x41\x03\x12\x19\n\x0cvolume_count\x18\x16 \x01(\x05\x42\x03\xe0\x41\x03\x12\x17\n\nsize_bytes\x18\x17 \x01(\x03\x42\x03\xe0\x41\x03\x12\x11\n\x04\x65tag\x18\x18 \x01(\tB\x03\xe0\x41\x03\x12\x18\n\x0b\x64\x65scription\x18\x19 \x01(\tB\x03\xe0\x41\x01\x12\x16\n\tpod_count\x18\x1a \x01(\x05\x42\x03\xe0\x41\x03\x12%\n\x18\x63onfig_backup_size_bytes\x18\x1b \x01(\x03\x42\x03\xe0\x41\x03\x12\x1c\n\x0fpermissive_mode\x18\x1c \x01(\x08\x42\x03\xe0\x41\x03\x12\x1a\n\rsatisfies_pzs\x18\x1d \x01(\x08\x42\x03\xe0\x41\x03\x12\x1a\n\rsatisfies_pzi\x18\x1e \x01(\x08\x42\x03\xe0\x41\x03\x1a\xb6\x02\n\x0f\x43lusterMetadata\x12\x14\n\x07\x63luster\x18\x01 \x01(\tB\x03\xe0\x41\x03\x12\x18\n\x0bk8s_version\x18\x02 \x01(\tB\x03\xe0\x41\x03\x12j\n\x13\x62\x61\x63kup_crd_versions\x18\x03 \x03(\x0b\x32H.google.cloud.gkebackup.v1.Backup.ClusterMetadata.BackupCrdVersionsEntryB\x03\xe0\x41\x03\x12\x1a\n\x0bgke_version\x18\x04 \x01(\tB\x03\xe0\x41\x03H\x00\x12\x1d\n\x0e\x61nthos_version\x18\x05 \x01(\tB\x03\xe0\x41\x03H\x00\x1a\x38\n\x16\x42\x61\x63kupCrdVersionsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\x42\x12\n\x10platform_version\x1a-\n\x0bLabelsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\"f\n\x05State\x12\x15\n\x11STATE_UNSPECIFIED\x10\x00\x12\x0c\n\x08\x43REATING\x10\x01\x12\x0f\n\x0bIN_PROGRESS\x10\x02\x12\r\n\tSUCCEEDED\x10\x03\x12\n\n\x06\x46\x41ILED\x10\x04\x12\x0c\n\x08\x44\x45LETING\x10\x05:x\xea\x41u\n\x1fgkebackup.googleapis.com/Backup\x12Rprojects/{project}/locations/{location}/backupPlans/{backup_plan}/backups/{backup}B\x0e\n\x0c\x62\x61\x63kup_scopeB\xc2\x01\n\x1d\x63om.google.cloud.gkebackup.v1B\x0b\x42\x61\x63kupProtoP\x01Z;cloud.google.com/go/gkebackup/apiv1/gkebackuppb;gkebackuppb\xaa\x02\x19Google.Cloud.GkeBackup.V1\xca\x02\x19Google\\Cloud\\GkeBackup\\V1\xea\x02\x1cGoogle::Cloud::GkeBackup::V1b\x06proto3"

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
    ["google.cloud.gkebackup.v1.EncryptionKey", "google/cloud/gkebackup/v1/common.proto"],
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
    module GkeBackup
      module V1
        Backup = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkebackup.v1.Backup").msgclass
        Backup::ClusterMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkebackup.v1.Backup.ClusterMetadata").msgclass
        Backup::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkebackup.v1.Backup.State").enummodule
      end
    end
  end
end
