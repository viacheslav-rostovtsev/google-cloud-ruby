# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/cloud/aiplatform/v1/genai_tuning_service.proto for package 'Google.Cloud.AIPlatform.V1'
# Original file comments:
# Copyright 2024 Google LLC
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
require 'google/cloud/aiplatform/v1/genai_tuning_service_pb'

module Google
  module Cloud
    module AIPlatform
      module V1
        module GenAiTuningService
          # A service for creating and managing GenAI Tuning Jobs.
          class Service

            include ::GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'google.cloud.aiplatform.v1.GenAiTuningService'

            # Creates a TuningJob. A created TuningJob right away will be attempted to
            # be run.
            rpc :CreateTuningJob, ::Google::Cloud::AIPlatform::V1::CreateTuningJobRequest, ::Google::Cloud::AIPlatform::V1::TuningJob
            # Gets a TuningJob.
            rpc :GetTuningJob, ::Google::Cloud::AIPlatform::V1::GetTuningJobRequest, ::Google::Cloud::AIPlatform::V1::TuningJob
            # Lists TuningJobs in a Location.
            rpc :ListTuningJobs, ::Google::Cloud::AIPlatform::V1::ListTuningJobsRequest, ::Google::Cloud::AIPlatform::V1::ListTuningJobsResponse
            # Cancels a TuningJob.
            # Starts asynchronous cancellation on the TuningJob. The server makes a best
            # effort to cancel the job, but success is not guaranteed. Clients can use
            # [GenAiTuningService.GetTuningJob][google.cloud.aiplatform.v1.GenAiTuningService.GetTuningJob]
            # or other methods to check whether the cancellation succeeded or whether the
            # job completed despite cancellation. On successful cancellation, the
            # TuningJob is not deleted; instead it becomes a job with a
            # [TuningJob.error][google.cloud.aiplatform.v1.TuningJob.error] value with a
            # [google.rpc.Status.code][google.rpc.Status.code] of 1, corresponding to
            # `Code.CANCELLED`, and
            # [TuningJob.state][google.cloud.aiplatform.v1.TuningJob.state] is set to
            # `CANCELLED`.
            rpc :CancelTuningJob, ::Google::Cloud::AIPlatform::V1::CancelTuningJobRequest, ::Google::Protobuf::Empty
            # Rebase a TunedModel.
            # Creates a LongRunningOperation that takes a legacy Tuned GenAI model
            # Reference and creates a TuningJob based on newly available model.
            rpc :RebaseTunedModel, ::Google::Cloud::AIPlatform::V1::RebaseTunedModelRequest, ::Google::Longrunning::Operation
          end

          Stub = Service.rpc_stub_class
        end
      end
    end
  end
end
