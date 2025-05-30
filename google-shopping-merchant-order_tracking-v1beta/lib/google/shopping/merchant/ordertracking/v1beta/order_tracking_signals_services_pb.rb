# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/shopping/merchant/ordertracking/v1beta/order_tracking_signals.proto for package 'Google.Shopping.Merchant.OrderTracking.V1beta'
# Original file comments:
# Copyright 2025 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

require 'grpc'
require 'google/shopping/merchant/ordertracking/v1beta/order_tracking_signals_pb'

module Google
  module Shopping
    module Merchant
      module OrderTracking
        module V1beta
          module OrderTrackingSignalsService
            # Service to serve order tracking signals public API.
            class Service

              include ::GRPC::GenericService

              self.marshal_class_method = :encode
              self.unmarshal_class_method = :decode
              self.service_name = 'google.shopping.merchant.ordertracking.v1beta.OrderTrackingSignalsService'

              # Creates new order tracking signal.
              rpc :CreateOrderTrackingSignal, ::Google::Shopping::Merchant::OrderTracking::V1beta::CreateOrderTrackingSignalRequest, ::Google::Shopping::Merchant::OrderTracking::V1beta::OrderTrackingSignal
            end

            Stub = Service.rpc_stub_class
          end
        end
      end
    end
  end
end
