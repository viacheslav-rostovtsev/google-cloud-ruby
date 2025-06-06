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
  module Rpc
    # Describes the cause of the error with structured details.
    #
    # Example of an error when contacting the "pubsub.googleapis.com" API when it
    # is not enabled:
    #
    #     { "reason": "API_DISABLED"
    #       "domain": "googleapis.com"
    #       "metadata": {
    #         "resource": "projects/123",
    #         "service": "pubsub.googleapis.com"
    #       }
    #     }
    #
    # This response indicates that the pubsub.googleapis.com API is not enabled.
    #
    # Example of an error that is returned when attempting to create a Spanner
    # instance in a region that is out of stock:
    #
    #     { "reason": "STOCKOUT"
    #       "domain": "spanner.googleapis.com",
    #       "metadata": {
    #         "availableRegions": "us-central1,us-east2"
    #       }
    #     }
    # @!attribute [rw] reason
    #   @return [::String]
    #     The reason of the error. This is a constant value that identifies the
    #     proximate cause of the error. Error reasons are unique within a particular
    #     domain of errors. This should be at most 63 characters and match a
    #     regular expression of `[A-Z][A-Z0-9_]+[A-Z0-9]`, which represents
    #     UPPER_SNAKE_CASE.
    # @!attribute [rw] domain
    #   @return [::String]
    #     The logical grouping to which the "reason" belongs. The error domain
    #     is typically the registered service name of the tool or product that
    #     generates the error. Example: "pubsub.googleapis.com". If the error is
    #     generated by some common infrastructure, the error domain must be a
    #     globally unique value that identifies the infrastructure. For Google API
    #     infrastructure, the error domain is "googleapis.com".
    # @!attribute [rw] metadata
    #   @return [::Google::Protobuf::Map{::String => ::String}]
    #     Additional structured details about this error.
    #
    #     Keys must match a regular expression of `[a-z][a-zA-Z0-9-_]+` but should
    #     ideally be lowerCamelCase. Also, they must be limited to 64 characters in
    #     length. When identifying the current value of an exceeded limit, the units
    #     should be contained in the key, not the value.  For example, rather than
    #     `{"instanceLimit": "100/request"}`, should be returned as,
    #     `{"instanceLimitPerRequest": "100"}`, if the client exceeds the number of
    #     instances that can be created in a single (batch) request.
    class ErrorInfo
      include ::Google::Protobuf::MessageExts
      extend ::Google::Protobuf::MessageExts::ClassMethods

      # @!attribute [rw] key
      #   @return [::String]
      # @!attribute [rw] value
      #   @return [::String]
      class MetadataEntry
        include ::Google::Protobuf::MessageExts
        extend ::Google::Protobuf::MessageExts::ClassMethods
      end
    end

    # Describes when the clients can retry a failed request. Clients could ignore
    # the recommendation here or retry when this information is missing from error
    # responses.
    #
    # It's always recommended that clients should use exponential backoff when
    # retrying.
    #
    # Clients should wait until `retry_delay` amount of time has passed since
    # receiving the error response before retrying.  If retrying requests also
    # fail, clients should use an exponential backoff scheme to gradually increase
    # the delay between retries based on `retry_delay`, until either a maximum
    # number of retries have been reached or a maximum retry delay cap has been
    # reached.
    # @!attribute [rw] retry_delay
    #   @return [::Google::Protobuf::Duration]
    #     Clients should wait at least this long between retrying the same request.
    class RetryInfo
      include ::Google::Protobuf::MessageExts
      extend ::Google::Protobuf::MessageExts::ClassMethods
    end

    # Describes additional debugging info.
    # @!attribute [rw] stack_entries
    #   @return [::Array<::String>]
    #     The stack trace entries indicating where the error occurred.
    # @!attribute [rw] detail
    #   @return [::String]
    #     Additional debugging information provided by the server.
    class DebugInfo
      include ::Google::Protobuf::MessageExts
      extend ::Google::Protobuf::MessageExts::ClassMethods
    end

    # Describes how a quota check failed.
    #
    # For example if a daily limit was exceeded for the calling project,
    # a service could respond with a QuotaFailure detail containing the project
    # id and the description of the quota limit that was exceeded.  If the
    # calling project hasn't enabled the service in the developer console, then
    # a service could respond with the project id and set `service_disabled`
    # to true.
    #
    # Also see RetryInfo and Help types for other details about handling a
    # quota failure.
    # @!attribute [rw] violations
    #   @return [::Array<::Google::Rpc::QuotaFailure::Violation>]
    #     Describes all quota violations.
    class QuotaFailure
      include ::Google::Protobuf::MessageExts
      extend ::Google::Protobuf::MessageExts::ClassMethods

      # A message type used to describe a single quota violation.  For example, a
      # daily quota or a custom quota that was exceeded.
      # @!attribute [rw] subject
      #   @return [::String]
      #     The subject on which the quota check failed.
      #     For example, "clientip:<ip address of client>" or "project:<Google
      #     developer project id>".
      # @!attribute [rw] description
      #   @return [::String]
      #     A description of how the quota check failed. Clients can use this
      #     description to find more about the quota configuration in the service's
      #     public documentation, or find the relevant quota limit to adjust through
      #     developer console.
      #
      #     For example: "Service disabled" or "Daily Limit for read operations
      #     exceeded".
      # @!attribute [rw] api_service
      #   @return [::String]
      #     The API Service from which the `QuotaFailure.Violation` orginates. In
      #     some cases, Quota issues originate from an API Service other than the one
      #     that was called. In other words, a dependency of the called API Service
      #     could be the cause of the `QuotaFailure`, and this field would have the
      #     dependency API service name.
      #
      #     For example, if the called API is Kubernetes Engine API
      #     (container.googleapis.com), and a quota violation occurs in the
      #     Kubernetes Engine API itself, this field would be
      #     "container.googleapis.com". On the other hand, if the quota violation
      #     occurs when the Kubernetes Engine API creates VMs in the Compute Engine
      #     API (compute.googleapis.com), this field would be
      #     "compute.googleapis.com".
      # @!attribute [rw] quota_metric
      #   @return [::String]
      #     The metric of the violated quota. A quota metric is a named counter to
      #     measure usage, such as API requests or CPUs. When an activity occurs in a
      #     service, such as Virtual Machine allocation, one or more quota metrics
      #     may be affected.
      #
      #     For example, "compute.googleapis.com/cpus_per_vm_family",
      #     "storage.googleapis.com/internet_egress_bandwidth".
      # @!attribute [rw] quota_id
      #   @return [::String]
      #     The id of the violated quota. Also know as "limit name", this is the
      #     unique identifier of a quota in the context of an API service.
      #
      #     For example, "CPUS-PER-VM-FAMILY-per-project-region".
      # @!attribute [rw] quota_dimensions
      #   @return [::Google::Protobuf::Map{::String => ::String}]
      #     The dimensions of the violated quota. Every non-global quota is enforced
      #     on a set of dimensions. While quota metric defines what to count, the
      #     dimensions specify for what aspects the counter should be increased.
      #
      #     For example, the quota "CPUs per region per VM family" enforces a limit
      #     on the metric "compute.googleapis.com/cpus_per_vm_family" on dimensions
      #     "region" and "vm_family". And if the violation occurred in region
      #     "us-central1" and for VM family "n1", the quota_dimensions would be,
      #
      #     {
      #       "region": "us-central1",
      #       "vm_family": "n1",
      #     }
      #
      #     When a quota is enforced globally, the quota_dimensions would always be
      #     empty.
      # @!attribute [rw] quota_value
      #   @return [::Integer]
      #     The enforced quota value at the time of the `QuotaFailure`.
      #
      #     For example, if the enforced quota value at the time of the
      #     `QuotaFailure` on the number of CPUs is "10", then the value of this
      #     field would reflect this quantity.
      # @!attribute [rw] future_quota_value
      #   @return [::Integer]
      #     The new quota value being rolled out at the time of the violation. At the
      #     completion of the rollout, this value will be enforced in place of
      #     quota_value. If no rollout is in progress at the time of the violation,
      #     this field is not set.
      #
      #     For example, if at the time of the violation a rollout is in progress
      #     changing the number of CPUs quota from 10 to 20, 20 would be the value of
      #     this field.
      class Violation
        include ::Google::Protobuf::MessageExts
        extend ::Google::Protobuf::MessageExts::ClassMethods

        # @!attribute [rw] key
        #   @return [::String]
        # @!attribute [rw] value
        #   @return [::String]
        class QuotaDimensionsEntry
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end

    # Describes what preconditions have failed.
    #
    # For example, if an RPC failed because it required the Terms of Service to be
    # acknowledged, it could list the terms of service violation in the
    # PreconditionFailure message.
    # @!attribute [rw] violations
    #   @return [::Array<::Google::Rpc::PreconditionFailure::Violation>]
    #     Describes all precondition violations.
    class PreconditionFailure
      include ::Google::Protobuf::MessageExts
      extend ::Google::Protobuf::MessageExts::ClassMethods

      # A message type used to describe a single precondition failure.
      # @!attribute [rw] type
      #   @return [::String]
      #     The type of PreconditionFailure. We recommend using a service-specific
      #     enum type to define the supported precondition violation subjects. For
      #     example, "TOS" for "Terms of Service violation".
      # @!attribute [rw] subject
      #   @return [::String]
      #     The subject, relative to the type, that failed.
      #     For example, "google.com/cloud" relative to the "TOS" type would indicate
      #     which terms of service is being referenced.
      # @!attribute [rw] description
      #   @return [::String]
      #     A description of how the precondition failed. Developers can use this
      #     description to understand how to fix the failure.
      #
      #     For example: "Terms of service not accepted".
      class Violation
        include ::Google::Protobuf::MessageExts
        extend ::Google::Protobuf::MessageExts::ClassMethods
      end
    end

    # Describes violations in a client request. This error type focuses on the
    # syntactic aspects of the request.
    # @!attribute [rw] field_violations
    #   @return [::Array<::Google::Rpc::BadRequest::FieldViolation>]
    #     Describes all violations in a client request.
    class BadRequest
      include ::Google::Protobuf::MessageExts
      extend ::Google::Protobuf::MessageExts::ClassMethods

      # A message type used to describe a single bad request field.
      # @!attribute [rw] field
      #   @return [::String]
      #     A path that leads to a field in the request body. The value will be a
      #     sequence of dot-separated identifiers that identify a protocol buffer
      #     field.
      #
      #     Consider the following:
      #
      #         message CreateContactRequest {
      #           message EmailAddress {
      #             enum Type {
      #               TYPE_UNSPECIFIED = 0;
      #               HOME = 1;
      #               WORK = 2;
      #             }
      #
      #             optional string email = 1;
      #             repeated EmailType type = 2;
      #           }
      #
      #           string full_name = 1;
      #           repeated EmailAddress email_addresses = 2;
      #         }
      #
      #     In this example, in proto `field` could take one of the following values:
      #
      #     * `full_name` for a violation in the `full_name` value
      #     * `email_addresses[1].email` for a violation in the `email` field of the
      #       first `email_addresses` message
      #     * `email_addresses[3].type[2]` for a violation in the second `type`
      #       value in the third `email_addresses` message.
      #
      #     In JSON, the same values are represented as:
      #
      #     * `fullName` for a violation in the `fullName` value
      #     * `emailAddresses[1].email` for a violation in the `email` field of the
      #       first `emailAddresses` message
      #     * `emailAddresses[3].type[2]` for a violation in the second `type`
      #       value in the third `emailAddresses` message.
      # @!attribute [rw] description
      #   @return [::String]
      #     A description of why the request element is bad.
      # @!attribute [rw] reason
      #   @return [::String]
      #     The reason of the field-level error. This is a constant value that
      #     identifies the proximate cause of the field-level error. It should
      #     uniquely identify the type of the FieldViolation within the scope of the
      #     google.rpc.ErrorInfo.domain. This should be at most 63
      #     characters and match a regular expression of `[A-Z][A-Z0-9_]+[A-Z0-9]`,
      #     which represents UPPER_SNAKE_CASE.
      # @!attribute [rw] localized_message
      #   @return [::Google::Rpc::LocalizedMessage]
      #     Provides a localized error message for field-level errors that is safe to
      #     return to the API consumer.
      class FieldViolation
        include ::Google::Protobuf::MessageExts
        extend ::Google::Protobuf::MessageExts::ClassMethods
      end
    end

    # Contains metadata about the request that clients can attach when filing a bug
    # or providing other forms of feedback.
    # @!attribute [rw] request_id
    #   @return [::String]
    #     An opaque string that should only be interpreted by the service generating
    #     it. For example, it can be used to identify requests in the service's logs.
    # @!attribute [rw] serving_data
    #   @return [::String]
    #     Any data that was used to serve this request. For example, an encrypted
    #     stack trace that can be sent back to the service provider for debugging.
    class RequestInfo
      include ::Google::Protobuf::MessageExts
      extend ::Google::Protobuf::MessageExts::ClassMethods
    end

    # Describes the resource that is being accessed.
    # @!attribute [rw] resource_type
    #   @return [::String]
    #     A name for the type of resource being accessed, e.g. "sql table",
    #     "cloud storage bucket", "file", "Google calendar"; or the type URL
    #     of the resource: e.g. "type.googleapis.com/google.pubsub.v1.Topic".
    # @!attribute [rw] resource_name
    #   @return [::String]
    #     The name of the resource being accessed.  For example, a shared calendar
    #     name: "example.com_4fghdhgsrgh@group.calendar.google.com", if the current
    #     error is
    #     [google.rpc.Code.PERMISSION_DENIED][google.rpc.Code.PERMISSION_DENIED].
    # @!attribute [rw] owner
    #   @return [::String]
    #     The owner of the resource (optional).
    #     For example, "user:<owner email>" or "project:<Google developer project
    #     id>".
    # @!attribute [rw] description
    #   @return [::String]
    #     Describes what error is encountered when accessing this resource.
    #     For example, updating a cloud project may require the `writer` permission
    #     on the developer console project.
    class ResourceInfo
      include ::Google::Protobuf::MessageExts
      extend ::Google::Protobuf::MessageExts::ClassMethods
    end

    # Provides links to documentation or for performing an out of band action.
    #
    # For example, if a quota check failed with an error indicating the calling
    # project hasn't enabled the accessed service, this can contain a URL pointing
    # directly to the right place in the developer console to flip the bit.
    # @!attribute [rw] links
    #   @return [::Array<::Google::Rpc::Help::Link>]
    #     URL(s) pointing to additional information on handling the current error.
    class Help
      include ::Google::Protobuf::MessageExts
      extend ::Google::Protobuf::MessageExts::ClassMethods

      # Describes a URL link.
      # @!attribute [rw] description
      #   @return [::String]
      #     Describes what the link offers.
      # @!attribute [rw] url
      #   @return [::String]
      #     The URL of the link.
      class Link
        include ::Google::Protobuf::MessageExts
        extend ::Google::Protobuf::MessageExts::ClassMethods
      end
    end

    # Provides a localized error message that is safe to return to the user
    # which can be attached to an RPC error.
    # @!attribute [rw] locale
    #   @return [::String]
    #     The locale used following the specification defined at
    #     https://www.rfc-editor.org/rfc/bcp/bcp47.txt.
    #     Examples are: "en-US", "fr-CH", "es-MX"
    # @!attribute [rw] message
    #   @return [::String]
    #     The localized error message in the above locale.
    class LocalizedMessage
      include ::Google::Protobuf::MessageExts
      extend ::Google::Protobuf::MessageExts::ClassMethods
    end
  end
end
