# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/spanner/admin/database/v1/backup_schedule.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf/duration_pb'
require 'google/protobuf/field_mask_pb'
require 'google/protobuf/timestamp_pb'
require 'google/spanner/admin/database/v1/backup_pb'


descriptor_data = "\n6google/spanner/admin/database/v1/backup_schedule.proto\x12 google.spanner.admin.database.v1\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a\x1egoogle/protobuf/duration.proto\x1a google/protobuf/field_mask.proto\x1a\x1fgoogle/protobuf/timestamp.proto\x1a-google/spanner/admin/database/v1/backup.proto\"i\n\x12\x42\x61\x63kupScheduleSpec\x12\x42\n\tcron_spec\x18\x01 \x01(\x0b\x32-.google.spanner.admin.database.v1.CrontabSpecH\x00\x42\x0f\n\rschedule_spec\"\xa4\x05\n\x0e\x42\x61\x63kupSchedule\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x08\x12G\n\x04spec\x18\x06 \x01(\x0b\x32\x34.google.spanner.admin.database.v1.BackupScheduleSpecB\x03\xe0\x41\x01\x12:\n\x12retention_duration\x18\x03 \x01(\x0b\x32\x19.google.protobuf.DurationB\x03\xe0\x41\x01\x12^\n\x11\x65ncryption_config\x18\x04 \x01(\x0b\x32>.google.spanner.admin.database.v1.CreateBackupEncryptionConfigB\x03\xe0\x41\x01\x12L\n\x10\x66ull_backup_spec\x18\x07 \x01(\x0b\x32\x30.google.spanner.admin.database.v1.FullBackupSpecH\x00\x12Z\n\x17incremental_backup_spec\x18\x08 \x01(\x0b\x32\x37.google.spanner.admin.database.v1.IncrementalBackupSpecH\x00\x12\x34\n\x0bupdate_time\x18\t \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03:\xa5\x01\xea\x41\xa1\x01\n%spanner.googleapis.com/BackupSchedule\x12Wprojects/{project}/instances/{instance}/databases/{database}/backupSchedules/{schedule}*\x0f\x62\x61\x63kupSchedules2\x0e\x62\x61\x63kupScheduleB\x12\n\x10\x62\x61\x63kup_type_spec\"q\n\x0b\x43rontabSpec\x12\x11\n\x04text\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12\x16\n\ttime_zone\x18\x02 \x01(\tB\x03\xe0\x41\x03\x12\x37\n\x0f\x63reation_window\x18\x03 \x01(\x0b\x32\x19.google.protobuf.DurationB\x03\xe0\x41\x03\"\xc7\x01\n\x1b\x43reateBackupScheduleRequest\x12\x37\n\x06parent\x18\x01 \x01(\tB\'\xe0\x41\x02\xfa\x41!\n\x1fspanner.googleapis.com/Database\x12\x1f\n\x12\x62\x61\x63kup_schedule_id\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12N\n\x0f\x62\x61\x63kup_schedule\x18\x03 \x01(\x0b\x32\x30.google.spanner.admin.database.v1.BackupScheduleB\x03\xe0\x41\x02\"W\n\x18GetBackupScheduleRequest\x12;\n\x04name\x18\x01 \x01(\tB-\xe0\x41\x02\xfa\x41\'\n%spanner.googleapis.com/BackupSchedule\"Z\n\x1b\x44\x65leteBackupScheduleRequest\x12;\n\x04name\x18\x01 \x01(\tB-\xe0\x41\x02\xfa\x41\'\n%spanner.googleapis.com/BackupSchedule\"\x86\x01\n\x1aListBackupSchedulesRequest\x12\x37\n\x06parent\x18\x01 \x01(\tB\'\xe0\x41\x02\xfa\x41!\n\x1fspanner.googleapis.com/Database\x12\x16\n\tpage_size\x18\x02 \x01(\x05\x42\x03\xe0\x41\x01\x12\x17\n\npage_token\x18\x04 \x01(\tB\x03\xe0\x41\x01\"\x82\x01\n\x1bListBackupSchedulesResponse\x12J\n\x10\x62\x61\x63kup_schedules\x18\x01 \x03(\x0b\x32\x30.google.spanner.admin.database.v1.BackupSchedule\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\"\xa3\x01\n\x1bUpdateBackupScheduleRequest\x12N\n\x0f\x62\x61\x63kup_schedule\x18\x01 \x01(\x0b\x32\x30.google.spanner.admin.database.v1.BackupScheduleB\x03\xe0\x41\x02\x12\x34\n\x0bupdate_mask\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.FieldMaskB\x03\xe0\x41\x02\x42\x85\x02\n$com.google.spanner.admin.database.v1B\x13\x42\x61\x63kupScheduleProtoP\x01ZFcloud.google.com/go/spanner/admin/database/apiv1/databasepb;databasepb\xaa\x02&Google.Cloud.Spanner.Admin.Database.V1\xca\x02&Google\\Cloud\\Spanner\\Admin\\Database\\V1\xea\x02+Google::Cloud::Spanner::Admin::Database::V1b\x06proto3"

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
    ["google.protobuf.Duration", "google/protobuf/duration.proto"],
    ["google.spanner.admin.database.v1.CreateBackupEncryptionConfig", "google/spanner/admin/database/v1/backup.proto"],
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
    module Spanner
      module Admin
        module Database
          module V1
            BackupScheduleSpec = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.admin.database.v1.BackupScheduleSpec").msgclass
            BackupSchedule = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.admin.database.v1.BackupSchedule").msgclass
            CrontabSpec = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.admin.database.v1.CrontabSpec").msgclass
            CreateBackupScheduleRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.admin.database.v1.CreateBackupScheduleRequest").msgclass
            GetBackupScheduleRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.admin.database.v1.GetBackupScheduleRequest").msgclass
            DeleteBackupScheduleRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.admin.database.v1.DeleteBackupScheduleRequest").msgclass
            ListBackupSchedulesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.admin.database.v1.ListBackupSchedulesRequest").msgclass
            ListBackupSchedulesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.admin.database.v1.ListBackupSchedulesResponse").msgclass
            UpdateBackupScheduleRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.admin.database.v1.UpdateBackupScheduleRequest").msgclass
          end
        end
      end
    end
  end
end
