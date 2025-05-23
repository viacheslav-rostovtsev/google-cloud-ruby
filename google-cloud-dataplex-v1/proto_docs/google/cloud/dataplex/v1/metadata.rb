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
    module Dataplex
      module V1
        # Create a metadata entity request.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The resource name of the parent zone:
        #     `projects/{project_number}/locations/{location_id}/lakes/{lake_id}/zones/{zone_id}`.
        # @!attribute [rw] entity
        #   @return [::Google::Cloud::Dataplex::V1::Entity]
        #     Required. Entity resource.
        # @!attribute [rw] validate_only
        #   @return [::Boolean]
        #     Optional. Only validate the request, but do not perform mutations.
        #     The default is false.
        class CreateEntityRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Update a metadata entity request.
        # The exiting entity will be fully replaced by the entity in the request.
        # The entity ID is mutable. To modify the ID, use the current entity ID in the
        # request URL and specify the new ID in the request body.
        # @!attribute [rw] entity
        #   @return [::Google::Cloud::Dataplex::V1::Entity]
        #     Required. Update description.
        # @!attribute [rw] validate_only
        #   @return [::Boolean]
        #     Optional. Only validate the request, but do not perform mutations.
        #     The default is false.
        class UpdateEntityRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Delete a metadata entity request.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The resource name of the entity:
        #     `projects/{project_number}/locations/{location_id}/lakes/{lake_id}/zones/{zone_id}/entities/{entity_id}`.
        # @!attribute [rw] etag
        #   @return [::String]
        #     Required. The etag associated with the entity, which can be retrieved with
        #     a [GetEntity][] request.
        class DeleteEntityRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # List metadata entities request.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The resource name of the parent zone:
        #     `projects/{project_number}/locations/{location_id}/lakes/{lake_id}/zones/{zone_id}`.
        # @!attribute [rw] view
        #   @return [::Google::Cloud::Dataplex::V1::ListEntitiesRequest::EntityView]
        #     Required. Specify the entity view to make a partial list request.
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Optional. Maximum number of entities to return. The service may return
        #     fewer than this value. If unspecified, 100 entities will be returned by
        #     default. The maximum value is 500; larger values will will be truncated to
        #     500.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     Optional. Page token received from a previous `ListEntities` call. Provide
        #     this to retrieve the subsequent page. When paginating, all other parameters
        #     provided to `ListEntities` must match the call that provided the
        #     page token.
        # @!attribute [rw] filter
        #   @return [::String]
        #     Optional. The following filter parameters can be added to the URL to limit
        #     the entities returned by the API:
        #
        #     - Entity ID: ?filter="id=entityID"
        #     - Asset ID: ?filter="asset=assetID"
        #     - Data path ?filter="data_path=gs://my-bucket"
        #     - Is HIVE compatible: ?filter="hive_compatible=true"
        #     - Is BigQuery compatible: ?filter="bigquery_compatible=true"
        class ListEntitiesRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Entity views.
          module EntityView
            # The default unset value. Return both table and fileset entities
            # if unspecified.
            ENTITY_VIEW_UNSPECIFIED = 0

            # Only list table entities.
            TABLES = 1

            # Only list fileset entities.
            FILESETS = 2
          end
        end

        # List metadata entities response.
        # @!attribute [rw] entities
        #   @return [::Array<::Google::Cloud::Dataplex::V1::Entity>]
        #     Entities in the specified parent zone.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     Token to retrieve the next page of results, or empty if there are no
        #     remaining results in the list.
        class ListEntitiesResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Get metadata entity request.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The resource name of the entity:
        #     `projects/{project_number}/locations/{location_id}/lakes/{lake_id}/zones/{zone_id}/entities/{entity_id}.`
        # @!attribute [rw] view
        #   @return [::Google::Cloud::Dataplex::V1::GetEntityRequest::EntityView]
        #     Optional. Used to select the subset of entity information to return.
        #     Defaults to `BASIC`.
        class GetEntityRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Entity views for get entity partial result.
          module EntityView
            # The API will default to the `BASIC` view.
            ENTITY_VIEW_UNSPECIFIED = 0

            # Minimal view that does not include the schema.
            BASIC = 1

            # Include basic information and schema.
            SCHEMA = 2

            # Include everything. Currently, this is the same as the SCHEMA view.
            FULL = 4
          end
        end

        # List metadata partitions request.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The resource name of the parent entity:
        #     `projects/{project_number}/locations/{location_id}/lakes/{lake_id}/zones/{zone_id}/entities/{entity_id}`.
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Optional. Maximum number of partitions to return. The service may return
        #     fewer than this value. If unspecified, 100 partitions will be returned by
        #     default. The maximum page size is 500; larger values will will be truncated
        #     to 500.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     Optional. Page token received from a previous `ListPartitions` call.
        #     Provide this to retrieve the subsequent page. When paginating, all other
        #     parameters provided to `ListPartitions` must match the call that provided
        #     the page token.
        # @!attribute [rw] filter
        #   @return [::String]
        #     Optional. Filter the partitions returned to the caller using a key value
        #     pair expression. Supported operators and syntax:
        #
        #     - logic operators: AND, OR
        #     - comparison operators: <, >, >=, <= ,=, !=
        #     - LIKE operators:
        #       - The right hand of a LIKE operator supports "." and
        #         "*" for wildcard searches, for example "value1 LIKE ".*oo.*"
        #     - parenthetical grouping: ( )
        #
        #     Sample filter expression: `?filter="key1 < value1 OR key2 > value2"
        #
        #     **Notes:**
        #
        #     - Keys to the left of operators are case insensitive.
        #     - Partition results are sorted first by creation time, then by
        #       lexicographic order.
        #     - Up to 20 key value filter pairs are allowed, but due to performance
        #       considerations, only the first 10 will be used as a filter.
        class ListPartitionsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Create metadata partition request.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The resource name of the parent zone:
        #     `projects/{project_number}/locations/{location_id}/lakes/{lake_id}/zones/{zone_id}/entities/{entity_id}`.
        # @!attribute [rw] partition
        #   @return [::Google::Cloud::Dataplex::V1::Partition]
        #     Required. Partition resource.
        # @!attribute [rw] validate_only
        #   @return [::Boolean]
        #     Optional. Only validate the request, but do not perform mutations.
        #     The default is false.
        class CreatePartitionRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Delete metadata partition request.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The resource name of the partition.
        #     format:
        #     `projects/{project_number}/locations/{location_id}/lakes/{lake_id}/zones/{zone_id}/entities/{entity_id}/partitions/{partition_value_path}`.
        #     The \\{partition_value_path} segment consists of an ordered sequence of
        #     partition values separated by "/". All values must be provided.
        # @!attribute [rw] etag
        #   @deprecated This field is deprecated and may be removed in the next major version update.
        #   @return [::String]
        #     Optional. The etag associated with the partition.
        class DeletePartitionRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # List metadata partitions response.
        # @!attribute [rw] partitions
        #   @return [::Array<::Google::Cloud::Dataplex::V1::Partition>]
        #     Partitions under the specified parent entity.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     Token to retrieve the next page of results, or empty if there are no
        #     remaining results in the list.
        class ListPartitionsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Get metadata partition request.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The resource name of the partition:
        #     `projects/{project_number}/locations/{location_id}/lakes/{lake_id}/zones/{zone_id}/entities/{entity_id}/partitions/{partition_value_path}`.
        #     The \\{partition_value_path} segment consists of an ordered sequence of
        #     partition values separated by "/". All values must be provided.
        class GetPartitionRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Represents tables and fileset metadata contained within a zone.
        # @!attribute [r] name
        #   @return [::String]
        #     Output only. The resource name of the entity, of the form:
        #     `projects/{project_number}/locations/{location_id}/lakes/{lake_id}/zones/{zone_id}/entities/{id}`.
        # @!attribute [rw] display_name
        #   @return [::String]
        #     Optional. Display name must be shorter than or equal to 256 characters.
        # @!attribute [rw] description
        #   @return [::String]
        #     Optional. User friendly longer description text. Must be shorter than or
        #     equal to 1024 characters.
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The time when the entity was created.
        # @!attribute [r] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The time when the entity was last updated.
        # @!attribute [rw] id
        #   @return [::String]
        #     Required. A user-provided entity ID. It is mutable, and will be used as the
        #     published table name. Specifying a new ID in an update entity
        #     request will override the existing value.
        #     The ID must contain only letters (a-z, A-Z), numbers (0-9), and
        #     underscores, and consist of 256 or fewer characters.
        # @!attribute [rw] etag
        #   @return [::String]
        #     Optional. The etag associated with the entity, which can be retrieved with
        #     a [GetEntity][] request. Required for update and delete requests.
        # @!attribute [rw] type
        #   @return [::Google::Cloud::Dataplex::V1::Entity::Type]
        #     Required. Immutable. The type of entity.
        # @!attribute [rw] asset
        #   @return [::String]
        #     Required. Immutable. The ID of the asset associated with the storage
        #     location containing the entity data. The entity must be with in the same
        #     zone with the asset.
        # @!attribute [rw] data_path
        #   @return [::String]
        #     Required. Immutable. The storage path of the entity data.
        #     For Cloud Storage data, this is the fully-qualified path to the entity,
        #     such as `gs://bucket/path/to/data`. For BigQuery data, this is the name of
        #     the table resource, such as
        #     `projects/project_id/datasets/dataset_id/tables/table_id`.
        # @!attribute [rw] data_path_pattern
        #   @return [::String]
        #     Optional. The set of items within the data path constituting the data in
        #     the entity, represented as a glob path. Example:
        #     `gs://bucket/path/to/data/**/*.csv`.
        # @!attribute [r] catalog_entry
        #   @return [::String]
        #     Output only. The name of the associated Data Catalog entry.
        # @!attribute [rw] system
        #   @return [::Google::Cloud::Dataplex::V1::StorageSystem]
        #     Required. Immutable. Identifies the storage system of the entity data.
        # @!attribute [rw] format
        #   @return [::Google::Cloud::Dataplex::V1::StorageFormat]
        #     Required. Identifies the storage format of the entity data.
        #     It does not apply to entities with data stored in BigQuery.
        # @!attribute [r] compatibility
        #   @return [::Google::Cloud::Dataplex::V1::Entity::CompatibilityStatus]
        #     Output only. Metadata stores that the entity is compatible with.
        # @!attribute [r] access
        #   @return [::Google::Cloud::Dataplex::V1::StorageAccess]
        #     Output only. Identifies the access mechanism to the entity. Not user
        #     settable.
        # @!attribute [r] uid
        #   @return [::String]
        #     Output only. System generated unique ID for the Entity. This ID will be
        #     different if the Entity is deleted and re-created with the same name.
        # @!attribute [rw] schema
        #   @return [::Google::Cloud::Dataplex::V1::Schema]
        #     Required. The description of the data structure and layout.
        #     The schema is not included in list responses. It is only included in
        #     `SCHEMA` and `FULL` entity views of a `GetEntity` response.
        class Entity
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Provides compatibility information for various metadata stores.
          # @!attribute [r] hive_metastore
          #   @return [::Google::Cloud::Dataplex::V1::Entity::CompatibilityStatus::Compatibility]
          #     Output only. Whether this entity is compatible with Hive Metastore.
          # @!attribute [r] bigquery
          #   @return [::Google::Cloud::Dataplex::V1::Entity::CompatibilityStatus::Compatibility]
          #     Output only. Whether this entity is compatible with BigQuery.
          class CompatibilityStatus
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # Provides compatibility information for a specific metadata store.
            # @!attribute [r] compatible
            #   @return [::Boolean]
            #     Output only. Whether the entity is compatible and can be represented in
            #     the metadata store.
            # @!attribute [r] reason
            #   @return [::String]
            #     Output only. Provides additional detail if the entity is incompatible
            #     with the metadata store.
            class Compatibility
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end
          end

          # The type of entity.
          module Type
            # Type unspecified.
            TYPE_UNSPECIFIED = 0

            # Structured and semi-structured data.
            TABLE = 1

            # Unstructured data.
            FILESET = 2
          end
        end

        # Represents partition metadata contained within entity instances.
        # @!attribute [r] name
        #   @return [::String]
        #     Output only. Partition values used in the HTTP URL must be
        #     double encoded. For example, `url_encode(url_encode(value))` can be used
        #     to encode "US:CA/CA#Sunnyvale so that the request URL ends
        #     with "/partitions/US%253ACA/CA%2523Sunnyvale".
        #     The name field in the response retains the encoded format.
        # @!attribute [rw] values
        #   @return [::Array<::String>]
        #     Required. Immutable. The set of values representing the partition, which
        #     correspond to the partition schema defined in the parent entity.
        # @!attribute [rw] location
        #   @return [::String]
        #     Required. Immutable. The location of the entity data within the partition,
        #     for example, `gs://bucket/path/to/entity/key1=value1/key2=value2`. Or
        #     `projects/<project_id>/datasets/<dataset_id>/tables/<table_id>`
        # @!attribute [rw] etag
        #   @deprecated This field is deprecated and may be removed in the next major version update.
        #   @return [::String]
        #     Optional. The etag for this partition.
        class Partition
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Schema information describing the structure and layout of the data.
        # @!attribute [rw] user_managed
        #   @return [::Boolean]
        #     Required. Set to `true` if user-managed or `false` if managed by Dataplex.
        #     The default is `false` (managed by Dataplex).
        #
        #     - Set to `false`to enable Dataplex discovery to update the schema.
        #       including new data discovery, schema inference, and schema evolution.
        #       Users retain the ability to input and edit the schema. Dataplex
        #       treats schema input by the user as though produced
        #       by a previous Dataplex discovery operation, and it will
        #       evolve the schema and take action based on that treatment.
        #
        #     - Set to `true` to fully manage the entity
        #       schema. This setting guarantees that Dataplex will not
        #       change schema fields.
        # @!attribute [rw] fields
        #   @return [::Array<::Google::Cloud::Dataplex::V1::Schema::SchemaField>]
        #     Optional. The sequence of fields describing data in table entities.
        #     **Note:** BigQuery SchemaFields are immutable.
        # @!attribute [rw] partition_fields
        #   @return [::Array<::Google::Cloud::Dataplex::V1::Schema::PartitionField>]
        #     Optional. The sequence of fields describing the partition structure in
        #     entities. If this field is empty, there are no partitions within the data.
        # @!attribute [rw] partition_style
        #   @return [::Google::Cloud::Dataplex::V1::Schema::PartitionStyle]
        #     Optional. The structure of paths containing partition data within the
        #     entity.
        class Schema
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Represents a column field within a table schema.
          # @!attribute [rw] name
          #   @return [::String]
          #     Required. The name of the field. Must contain only letters, numbers and
          #     underscores, with a maximum length of 767 characters,
          #     and must begin with a letter or underscore.
          # @!attribute [rw] description
          #   @return [::String]
          #     Optional. User friendly field description. Must be less than or equal to
          #     1024 characters.
          # @!attribute [rw] type
          #   @return [::Google::Cloud::Dataplex::V1::Schema::Type]
          #     Required. The type of field.
          # @!attribute [rw] mode
          #   @return [::Google::Cloud::Dataplex::V1::Schema::Mode]
          #     Required. Additional field semantics.
          # @!attribute [rw] fields
          #   @return [::Array<::Google::Cloud::Dataplex::V1::Schema::SchemaField>]
          #     Optional. Any nested field for complex types.
          class SchemaField
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Represents a key field within the entity's partition structure. You could
          # have up to 20 partition fields, but only the first 10 partitions have the
          # filtering ability due to performance consideration. **Note:**
          # Partition fields are immutable.
          # @!attribute [rw] name
          #   @return [::String]
          #     Required. Partition field name must consist of letters, numbers, and
          #     underscores only, with a maximum of length of 256 characters, and must
          #     begin with a letter or underscore..
          # @!attribute [rw] type
          #   @return [::Google::Cloud::Dataplex::V1::Schema::Type]
          #     Required. Immutable. The type of field.
          class PartitionField
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Type information for fields in schemas and partition schemas.
          module Type
            # SchemaType unspecified.
            TYPE_UNSPECIFIED = 0

            # Boolean field.
            BOOLEAN = 1

            # Single byte numeric field.
            BYTE = 2

            # 16-bit numeric field.
            INT16 = 3

            # 32-bit numeric field.
            INT32 = 4

            # 64-bit numeric field.
            INT64 = 5

            # Floating point numeric field.
            FLOAT = 6

            # Double precision numeric field.
            DOUBLE = 7

            # Real value numeric field.
            DECIMAL = 8

            # Sequence of characters field.
            STRING = 9

            # Sequence of bytes field.
            BINARY = 10

            # Date and time field.
            TIMESTAMP = 11

            # Date field.
            DATE = 12

            # Time field.
            TIME = 13

            # Structured field. Nested fields that define the structure of the map.
            # If all nested fields are nullable, this field represents a union.
            RECORD = 14

            # Null field that does not have values.
            NULL = 100
          end

          # Additional qualifiers to define field semantics.
          module Mode
            # Mode unspecified.
            MODE_UNSPECIFIED = 0

            # The field has required semantics.
            REQUIRED = 1

            # The field has optional semantics, and may be null.
            NULLABLE = 2

            # The field has repeated (0 or more) semantics, and is a list of values.
            REPEATED = 3
          end

          # The structure of paths within the entity, which represent partitions.
          module PartitionStyle
            # PartitionStyle unspecified
            PARTITION_STYLE_UNSPECIFIED = 0

            # Partitions are hive-compatible.
            # Examples: `gs://bucket/path/to/table/dt=2019-10-31/lang=en`,
            # `gs://bucket/path/to/table/dt=2019-10-31/lang=en/late`.
            HIVE_COMPATIBLE = 1
          end
        end

        # Describes the format of the data within its storage location.
        # @!attribute [r] format
        #   @return [::Google::Cloud::Dataplex::V1::StorageFormat::Format]
        #     Output only. The data format associated with the stored data, which
        #     represents content type values. The value is inferred from mime type.
        # @!attribute [rw] compression_format
        #   @return [::Google::Cloud::Dataplex::V1::StorageFormat::CompressionFormat]
        #     Optional. The compression type associated with the stored data.
        #     If unspecified, the data is uncompressed.
        # @!attribute [rw] mime_type
        #   @return [::String]
        #     Required. The mime type descriptor for the data. Must match the pattern
        #     \\{type}/\\{subtype}. Supported values:
        #
        #     - application/x-parquet
        #     - application/x-avro
        #     - application/x-orc
        #     - application/x-tfrecord
        #     - application/x-parquet+iceberg
        #     - application/x-avro+iceberg
        #     - application/x-orc+iceberg
        #     - application/json
        #     - application/\\{subtypes}
        #     - text/csv
        #     - text/<subtypes>
        #     - image/\\{image subtype}
        #     - video/\\{video subtype}
        #     - audio/\\{audio subtype}
        # @!attribute [rw] csv
        #   @return [::Google::Cloud::Dataplex::V1::StorageFormat::CsvOptions]
        #     Optional. Additional information about CSV formatted data.
        #
        #     Note: The following fields are mutually exclusive: `csv`, `json`, `iceberg`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] json
        #   @return [::Google::Cloud::Dataplex::V1::StorageFormat::JsonOptions]
        #     Optional. Additional information about CSV formatted data.
        #
        #     Note: The following fields are mutually exclusive: `json`, `csv`, `iceberg`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] iceberg
        #   @return [::Google::Cloud::Dataplex::V1::StorageFormat::IcebergOptions]
        #     Optional. Additional information about iceberg tables.
        #
        #     Note: The following fields are mutually exclusive: `iceberg`, `csv`, `json`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        class StorageFormat
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Describes CSV and similar semi-structured data formats.
          # @!attribute [rw] encoding
          #   @return [::String]
          #     Optional. The character encoding of the data. Accepts "US-ASCII",
          #     "UTF-8", and "ISO-8859-1". Defaults to UTF-8 if unspecified.
          # @!attribute [rw] header_rows
          #   @return [::Integer]
          #     Optional. The number of rows to interpret as header rows that should be
          #     skipped when reading data rows. Defaults to 0.
          # @!attribute [rw] delimiter
          #   @return [::String]
          #     Optional. The delimiter used to separate values. Defaults to ','.
          # @!attribute [rw] quote
          #   @return [::String]
          #     Optional. The character used to quote column values. Accepts '"'
          #     (double quotation mark) or ''' (single quotation mark). Defaults to
          #     '"' (double quotation mark) if unspecified.
          class CsvOptions
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Describes JSON data format.
          # @!attribute [rw] encoding
          #   @return [::String]
          #     Optional. The character encoding of the data. Accepts "US-ASCII", "UTF-8"
          #     and "ISO-8859-1". Defaults to UTF-8 if not specified.
          class JsonOptions
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Describes Iceberg data format.
          # @!attribute [rw] metadata_location
          #   @return [::String]
          #     Optional. The location of where the iceberg metadata is present, must be
          #     within the table path
          class IcebergOptions
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The specific file format of the data.
          module Format
            # Format unspecified.
            FORMAT_UNSPECIFIED = 0

            # Parquet-formatted structured data.
            PARQUET = 1

            # Avro-formatted structured data.
            AVRO = 2

            # Orc-formatted structured data.
            ORC = 3

            # Csv-formatted semi-structured data.
            CSV = 100

            # Json-formatted semi-structured data.
            JSON = 101

            # Image data formats (such as jpg and png).
            IMAGE = 200

            # Audio data formats (such as mp3, and wav).
            AUDIO = 201

            # Video data formats (such as mp4 and mpg).
            VIDEO = 202

            # Textual data formats (such as txt and xml).
            TEXT = 203

            # TensorFlow record format.
            TFRECORD = 204

            # Data that doesn't match a specific format.
            OTHER = 1000

            # Data of an unknown format.
            UNKNOWN = 1001
          end

          # The specific compressed file format of the data.
          module CompressionFormat
            # CompressionFormat unspecified. Implies uncompressed data.
            COMPRESSION_FORMAT_UNSPECIFIED = 0

            # GZip compressed set of files.
            GZIP = 2

            # BZip2 compressed set of files.
            BZIP2 = 3
          end
        end

        # Describes the access mechanism of the data within its storage location.
        # @!attribute [r] read
        #   @return [::Google::Cloud::Dataplex::V1::StorageAccess::AccessMode]
        #     Output only. Describes the read access mechanism of the data. Not user
        #     settable.
        class StorageAccess
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Access Mode determines how data stored within the Entity is read.
          module AccessMode
            # Access mode unspecified.
            ACCESS_MODE_UNSPECIFIED = 0

            # Default. Data is accessed directly using storage APIs.
            DIRECT = 1

            # Data is accessed through a managed interface using BigQuery APIs.
            MANAGED = 2
          end
        end

        # Identifies the cloud system that manages the data storage.
        module StorageSystem
          # Storage system unspecified.
          STORAGE_SYSTEM_UNSPECIFIED = 0

          # The entity data is contained within a Cloud Storage bucket.
          CLOUD_STORAGE = 1

          # The entity data is contained within a BigQuery dataset.
          BIGQUERY = 2
        end
      end
    end
  end
end
