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
    module Bigquery
      module Migration
        module V2
          # The metrics object for a SubTask.
          # @!attribute [rw] metric
          #   @return [::String]
          #     Required. The name of the metric.
          #
          #     If the metric is not known by the service yet, it will be auto-created.
          # @!attribute [rw] value_type
          #   @return [::Google::Api::MetricDescriptor::ValueType]
          #     Required. The value type of the time series.
          # @!attribute [rw] metric_kind
          #   @return [::Google::Api::MetricDescriptor::MetricKind]
          #     Optional. The metric kind of the time series.
          #
          #     If present, it must be the same as the metric kind of the associated
          #     metric. If the associated metric's descriptor must be auto-created, then
          #     this field specifies the metric kind of the new descriptor and must be
          #     either `GAUGE` (the default) or `CUMULATIVE`.
          # @!attribute [rw] points
          #   @return [::Array<::Google::Cloud::Bigquery::Migration::V2::Point>]
          #     Required. The data points of this time series. When listing time series,
          #     points are returned in reverse time order.
          #
          #     When creating a time series, this field must contain exactly one point and
          #     the point's type must be the same as the value type of the associated
          #     metric. If the associated metric's descriptor must be auto-created, then
          #     the value type of the descriptor is determined by the point's type, which
          #     must be `BOOL`, `INT64`, `DOUBLE`, or `DISTRIBUTION`.
          class TimeSeries
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # A single data point in a time series.
          # @!attribute [rw] interval
          #   @return [::Google::Cloud::Bigquery::Migration::V2::TimeInterval]
          #     The time interval to which the data point applies.  For `GAUGE` metrics,
          #     the start time does not need to be supplied, but if it is supplied, it must
          #     equal the end time.  For `DELTA` metrics, the start and end time should
          #     specify a non-zero interval, with subsequent points specifying contiguous
          #     and non-overlapping intervals.  For `CUMULATIVE` metrics, the start and end
          #     time should specify a non-zero interval, with subsequent points specifying
          #     the same start time and increasing end times, until an event resets the
          #     cumulative value to zero and sets a new start time for the following
          #     points.
          # @!attribute [rw] value
          #   @return [::Google::Cloud::Bigquery::Migration::V2::TypedValue]
          #     The value of the data point.
          class Point
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # A time interval extending just after a start time through an end time.
          # If the start time is the same as the end time, then the interval
          # represents a single point in time.
          # @!attribute [rw] start_time
          #   @return [::Google::Protobuf::Timestamp]
          #     Optional. The beginning of the time interval.  The default value
          #     for the start time is the end time. The start time must not be
          #     later than the end time.
          # @!attribute [rw] end_time
          #   @return [::Google::Protobuf::Timestamp]
          #     Required. The end of the time interval.
          class TimeInterval
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # A single strongly-typed value.
          # @!attribute [rw] bool_value
          #   @return [::Boolean]
          #     A Boolean value: `true` or `false`.
          #
          #     Note: The following fields are mutually exclusive: `bool_value`, `int64_value`, `double_value`, `string_value`, `distribution_value`. If a field in that set is populated, all other fields in the set will automatically be cleared.
          # @!attribute [rw] int64_value
          #   @return [::Integer]
          #     A 64-bit integer. Its range is approximately `+/-9.2x10^18`.
          #
          #     Note: The following fields are mutually exclusive: `int64_value`, `bool_value`, `double_value`, `string_value`, `distribution_value`. If a field in that set is populated, all other fields in the set will automatically be cleared.
          # @!attribute [rw] double_value
          #   @return [::Float]
          #     A 64-bit double-precision floating-point number. Its magnitude
          #     is approximately `+/-10^(+/-300)` and it has 16 significant digits of
          #     precision.
          #
          #     Note: The following fields are mutually exclusive: `double_value`, `bool_value`, `int64_value`, `string_value`, `distribution_value`. If a field in that set is populated, all other fields in the set will automatically be cleared.
          # @!attribute [rw] string_value
          #   @return [::String]
          #     A variable-length string value.
          #
          #     Note: The following fields are mutually exclusive: `string_value`, `bool_value`, `int64_value`, `double_value`, `distribution_value`. If a field in that set is populated, all other fields in the set will automatically be cleared.
          # @!attribute [rw] distribution_value
          #   @return [::Google::Api::Distribution]
          #     A distribution value.
          #
          #     Note: The following fields are mutually exclusive: `distribution_value`, `bool_value`, `int64_value`, `double_value`, `string_value`. If a field in that set is populated, all other fields in the set will automatically be cleared.
          class TypedValue
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end
      end
    end
  end
end
