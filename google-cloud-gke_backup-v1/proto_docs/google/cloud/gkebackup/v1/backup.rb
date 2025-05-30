# frozen_string_literal: true

# Copyright 2022 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Auto-generated by gapic-generator-ruby. DO NOT EDIT!


module Google
  module Cloud
    module GkeBackup
      module V1
        # Represents a request to perform a single point-in-time capture of
        # some portion of the state of a GKE cluster, the record of the backup
        # operation itself, and an anchor for the underlying artifacts that
        # comprise the Backup (the config backup and VolumeBackups).
        # @!attribute [r] name
        #   @return [::String]
        #     Output only. The fully qualified name of the Backup.
        #     `projects/*/locations/*/backupPlans/*/backups/*`
        # @!attribute [r] uid
        #   @return [::String]
        #     Output only. Server generated global unique identifier of
        #     [UUID4](https://en.wikipedia.org/wiki/Universally_unique_identifier)
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The timestamp when this Backup resource was created.
        # @!attribute [r] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The timestamp when this Backup resource was last updated.
        # @!attribute [r] manual
        #   @return [::Boolean]
        #     Output only. This flag indicates whether this Backup resource was created
        #     manually by a user or via a schedule in the BackupPlan. A value of True
        #     means that the Backup was created manually.
        # @!attribute [rw] labels
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Optional. A set of custom labels supplied by user.
        # @!attribute [rw] delete_lock_days
        #   @return [::Integer]
        #     Optional. Minimum age for this Backup (in days). If this field is set to a
        #     non-zero value, the Backup will be "locked" against deletion (either manual
        #     or automatic deletion) for the number of days provided (measured from the
        #     creation time of the Backup).  MUST be an integer value between 0-90
        #     (inclusive).
        #
        #     Defaults to parent BackupPlan's
        #     {::Google::Cloud::GkeBackup::V1::BackupPlan::RetentionPolicy#backup_delete_lock_days backup_delete_lock_days}
        #     setting and may only be increased
        #     (either at creation time or in a subsequent update).
        # @!attribute [r] delete_lock_expire_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The time at which an existing delete lock will expire for this
        #     backup (calculated from create_time +
        #     {::Google::Cloud::GkeBackup::V1::Backup#delete_lock_days delete_lock_days}).
        # @!attribute [rw] retain_days
        #   @return [::Integer]
        #     Optional. The age (in days) after which this Backup will be automatically
        #     deleted. Must be an integer value >= 0:
        #
        #     - If 0, no automatic deletion will occur for this Backup.
        #     - If not 0, this must be >=
        #     {::Google::Cloud::GkeBackup::V1::Backup#delete_lock_days delete_lock_days} and
        #     <= 365.
        #
        #     Once a Backup is created, this value may only be increased.
        #
        #     Defaults to the parent BackupPlan's
        #     {::Google::Cloud::GkeBackup::V1::BackupPlan::RetentionPolicy#backup_retain_days backup_retain_days}
        #     value.
        # @!attribute [r] retain_expire_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The time at which this Backup will be automatically deleted
        #     (calculated from create_time +
        #     {::Google::Cloud::GkeBackup::V1::Backup#retain_days retain_days}).
        # @!attribute [r] encryption_key
        #   @return [::Google::Cloud::GkeBackup::V1::EncryptionKey]
        #     Output only. The customer managed encryption key that was used to encrypt
        #     the Backup's artifacts.  Inherited from the parent BackupPlan's
        #     {::Google::Cloud::GkeBackup::V1::BackupPlan::BackupConfig#encryption_key encryption_key}
        #     value.
        # @!attribute [r] all_namespaces
        #   @return [::Boolean]
        #     Output only. If True, all namespaces were included in the Backup.
        #
        #     Note: The following fields are mutually exclusive: `all_namespaces`, `selected_namespaces`, `selected_applications`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [r] selected_namespaces
        #   @return [::Google::Cloud::GkeBackup::V1::Namespaces]
        #     Output only. If set, the list of namespaces that were included in the
        #     Backup.
        #
        #     Note: The following fields are mutually exclusive: `selected_namespaces`, `all_namespaces`, `selected_applications`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [r] selected_applications
        #   @return [::Google::Cloud::GkeBackup::V1::NamespacedNames]
        #     Output only. If set, the list of ProtectedApplications whose resources
        #     were included in the Backup.
        #
        #     Note: The following fields are mutually exclusive: `selected_applications`, `all_namespaces`, `selected_namespaces`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [r] contains_volume_data
        #   @return [::Boolean]
        #     Output only. Whether or not the Backup contains volume data.  Controlled by
        #     the parent BackupPlan's
        #     {::Google::Cloud::GkeBackup::V1::BackupPlan::BackupConfig#include_volume_data include_volume_data}
        #     value.
        # @!attribute [r] contains_secrets
        #   @return [::Boolean]
        #     Output only. Whether or not the Backup contains Kubernetes Secrets.
        #     Controlled by the parent BackupPlan's
        #     {::Google::Cloud::GkeBackup::V1::BackupPlan::BackupConfig#include_secrets include_secrets}
        #     value.
        # @!attribute [r] cluster_metadata
        #   @return [::Google::Cloud::GkeBackup::V1::Backup::ClusterMetadata]
        #     Output only. Information about the GKE cluster from which this Backup was
        #     created.
        # @!attribute [r] state
        #   @return [::Google::Cloud::GkeBackup::V1::Backup::State]
        #     Output only. Current state of the Backup
        # @!attribute [r] state_reason
        #   @return [::String]
        #     Output only. Human-readable description of why the backup is in the current
        #     `state`. This field is only meant for human readability and should not be
        #     used programmatically as this field is not guaranteed to be consistent.
        # @!attribute [r] complete_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Completion time of the Backup
        # @!attribute [r] resource_count
        #   @return [::Integer]
        #     Output only. The total number of Kubernetes resources included in the
        #     Backup.
        # @!attribute [r] volume_count
        #   @return [::Integer]
        #     Output only. The total number of volume backups contained in the Backup.
        # @!attribute [r] size_bytes
        #   @return [::Integer]
        #     Output only. The total size of the Backup in bytes = config backup size +
        #     sum(volume backup sizes)
        # @!attribute [r] etag
        #   @return [::String]
        #     Output only. `etag` is used for optimistic concurrency control as a way to
        #     help prevent simultaneous updates of a backup from overwriting each other.
        #     It is strongly suggested that systems make use of the `etag` in the
        #     read-modify-write cycle to perform backup updates in order to avoid
        #     race conditions: An `etag` is returned in the response to `GetBackup`,
        #     and systems are expected to put that etag in the request to
        #     `UpdateBackup` or `DeleteBackup` to ensure that their change will be
        #     applied to the same version of the resource.
        # @!attribute [rw] description
        #   @return [::String]
        #     Optional. User specified descriptive string for this Backup.
        # @!attribute [r] pod_count
        #   @return [::Integer]
        #     Output only. The total number of Kubernetes Pods contained in the Backup.
        # @!attribute [r] config_backup_size_bytes
        #   @return [::Integer]
        #     Output only. The size of the config backup in bytes.
        # @!attribute [r] permissive_mode
        #   @return [::Boolean]
        #     Output only. If false, Backup will fail when Backup for GKE detects
        #     Kubernetes configuration that is non-standard or
        #     requires additional setup to restore.
        #
        #     Inherited from the parent BackupPlan's
        #     {::Google::Cloud::GkeBackup::V1::BackupPlan::BackupConfig#permissive_mode permissive_mode}
        #     value.
        # @!attribute [r] satisfies_pzs
        #   @return [::Boolean]
        #     Output only. [Output Only] Reserved for future use.
        # @!attribute [r] satisfies_pzi
        #   @return [::Boolean]
        #     Output only. [Output Only] Reserved for future use.
        class Backup
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Information about the GKE cluster from which this Backup was created.
          # @!attribute [r] cluster
          #   @return [::String]
          #     Output only. The source cluster from which this Backup was created.
          #     Valid formats:
          #
          #       - `projects/*/locations/*/clusters/*`
          #       - `projects/*/zones/*/clusters/*`
          #
          #     This is inherited from the parent BackupPlan's
          #     {::Google::Cloud::GkeBackup::V1::BackupPlan#cluster cluster} field.
          # @!attribute [r] k8s_version
          #   @return [::String]
          #     Output only. The Kubernetes server version of the source cluster.
          # @!attribute [r] backup_crd_versions
          #   @return [::Google::Protobuf::Map{::String => ::String}]
          #     Output only. A list of the Backup for GKE CRD versions found in the
          #     cluster.
          # @!attribute [r] gke_version
          #   @return [::String]
          #     Output only. GKE version
          #
          #     Note: The following fields are mutually exclusive: `gke_version`, `anthos_version`. If a field in that set is populated, all other fields in the set will automatically be cleared.
          # @!attribute [r] anthos_version
          #   @return [::String]
          #     Output only. Anthos version
          #
          #     Note: The following fields are mutually exclusive: `anthos_version`, `gke_version`. If a field in that set is populated, all other fields in the set will automatically be cleared.
          class ClusterMetadata
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # @!attribute [rw] key
            #   @return [::String]
            # @!attribute [rw] value
            #   @return [::String]
            class BackupCrdVersionsEntry
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end
          end

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class LabelsEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # State
          module State
            # The Backup resource is in the process of being created.
            STATE_UNSPECIFIED = 0

            # The Backup resource has been created and the associated BackupJob
            # Kubernetes resource has been injected into the source cluster.
            CREATING = 1

            # The gkebackup agent in the cluster has begun executing the backup
            # operation.
            IN_PROGRESS = 2

            # The backup operation has completed successfully.
            SUCCEEDED = 3

            # The backup operation has failed.
            FAILED = 4

            # This Backup resource (and its associated artifacts) is in the process
            # of being deleted.
            DELETING = 5
          end
        end
      end
    end
  end
end
