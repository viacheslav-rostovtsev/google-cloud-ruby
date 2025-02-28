# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/dialogflow/cx/v3/deployment.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n.google/cloud/dialogflow/cx/v3/deployment.proto\x12\x1dgoogle.cloud.dialogflow.cx.v3\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"\xb3\x05\n\nDeployment\x12\x0c\n\x04name\x18\x01 \x01(\t\x12<\n\x0c\x66low_version\x18\x02 \x01(\tB&\xfa\x41#\n!dialogflow.googleapis.com/Version\x12>\n\x05state\x18\x03 \x01(\x0e\x32/.google.cloud.dialogflow.cx.v3.Deployment.State\x12@\n\x06result\x18\x04 \x01(\x0b\x32\x30.google.cloud.dialogflow.cx.v3.Deployment.Result\x12.\n\nstart_time\x18\x05 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12,\n\x08\x65nd_time\x18\x06 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x1a\x97\x01\n\x06Result\x12N\n\x17\x64\x65ployment_test_results\x18\x01 \x03(\tB-\xfa\x41*\n(dialogflow.googleapis.com/TestCaseResult\x12=\n\nexperiment\x18\x02 \x01(\tB)\xfa\x41&\n$dialogflow.googleapis.com/Experiment\"F\n\x05State\x12\x15\n\x11STATE_UNSPECIFIED\x10\x00\x12\x0b\n\x07RUNNING\x10\x01\x12\r\n\tSUCCEEDED\x10\x02\x12\n\n\x06\x46\x41ILED\x10\x03:\x96\x01\xea\x41\x92\x01\n$dialogflow.googleapis.com/Deployment\x12jprojects/{project}/locations/{location}/agents/{agent}/environments/{environment}/deployments/{deployment}\"}\n\x16ListDeploymentsRequest\x12<\n\x06parent\x18\x01 \x01(\tB,\xe0\x41\x02\xfa\x41&\x12$dialogflow.googleapis.com/Deployment\x12\x11\n\tpage_size\x18\x02 \x01(\x05\x12\x12\n\npage_token\x18\x03 \x01(\t\"r\n\x17ListDeploymentsResponse\x12>\n\x0b\x64\x65ployments\x18\x01 \x03(\x0b\x32).google.cloud.dialogflow.cx.v3.Deployment\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\"R\n\x14GetDeploymentRequest\x12:\n\x04name\x18\x01 \x01(\tB,\xe0\x41\x02\xfa\x41&\n$dialogflow.googleapis.com/Deployment2\xae\x04\n\x0b\x44\x65ployments\x12\xda\x01\n\x0fListDeployments\x12\x35.google.cloud.dialogflow.cx.v3.ListDeploymentsRequest\x1a\x36.google.cloud.dialogflow.cx.v3.ListDeploymentsResponse\"X\xda\x41\x06parent\x82\xd3\xe4\x93\x02I\x12G/v3/{parent=projects/*/locations/*/agents/*/environments/*}/deployments\x12\xc7\x01\n\rGetDeployment\x12\x33.google.cloud.dialogflow.cx.v3.GetDeploymentRequest\x1a).google.cloud.dialogflow.cx.v3.Deployment\"V\xda\x41\x04name\x82\xd3\xe4\x93\x02I\x12G/v3/{name=projects/*/locations/*/agents/*/environments/*/deployments/*}\x1ax\xca\x41\x19\x64ialogflow.googleapis.com\xd2\x41Yhttps://www.googleapis.com/auth/cloud-platform,https://www.googleapis.com/auth/dialogflowB\xb2\x01\n!com.google.cloud.dialogflow.cx.v3B\x0f\x44\x65ploymentProtoP\x01Z1cloud.google.com/go/dialogflow/cx/apiv3/cxpb;cxpb\xa2\x02\x02\x44\x46\xaa\x02\x1dGoogle.Cloud.Dialogflow.Cx.V3\xea\x02!Google::Cloud::Dialogflow::CX::V3b\x06proto3"

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
    module Dialogflow
      module CX
        module V3
          Deployment = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.Deployment").msgclass
          Deployment::Result = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.Deployment.Result").msgclass
          Deployment::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.Deployment.State").enummodule
          ListDeploymentsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.ListDeploymentsRequest").msgclass
          ListDeploymentsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.ListDeploymentsResponse").msgclass
          GetDeploymentRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.GetDeploymentRequest").msgclass
        end
      end
    end
  end
end
