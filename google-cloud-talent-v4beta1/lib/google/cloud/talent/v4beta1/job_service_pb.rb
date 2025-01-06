# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/talent/v4beta1/job_service.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/talent/v4beta1/common_pb'
require 'google/cloud/talent/v4beta1/filters_pb'
require 'google/cloud/talent/v4beta1/histogram_pb'
require 'google/cloud/talent/v4beta1/job_pb'
require 'google/longrunning/operations_pb'
require 'google/protobuf/duration_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf/field_mask_pb'
require 'google/rpc/status_pb'


descriptor_data = "\n-google/cloud/talent/v4beta1/job_service.proto\x12\x1bgoogle.cloud.talent.v4beta1\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a(google/cloud/talent/v4beta1/common.proto\x1a)google/cloud/talent/v4beta1/filters.proto\x1a+google/cloud/talent/v4beta1/histogram.proto\x1a%google/cloud/talent/v4beta1/job.proto\x1a#google/longrunning/operations.proto\x1a\x1egoogle/protobuf/duration.proto\x1a\x1bgoogle/protobuf/empty.proto\x1a google/protobuf/field_mask.proto\x1a\x17google/rpc/status.proto\"w\n\x10\x43reateJobRequest\x12/\n\x06parent\x18\x01 \x01(\tB\x1f\xe0\x41\x02\xfa\x41\x19\x12\x17jobs.googleapis.com/Job\x12\x32\n\x03job\x18\x02 \x01(\x0b\x32 .google.cloud.talent.v4beta1.JobB\x03\xe0\x41\x02\">\n\rGetJobRequest\x12-\n\x04name\x18\x01 \x01(\tB\x1f\xe0\x41\x02\xfa\x41\x19\n\x17jobs.googleapis.com/Job\"w\n\x10UpdateJobRequest\x12\x32\n\x03job\x18\x01 \x01(\x0b\x32 .google.cloud.talent.v4beta1.JobB\x03\xe0\x41\x02\x12/\n\x0bupdate_mask\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.FieldMask\"A\n\x10\x44\x65leteJobRequest\x12-\n\x04name\x18\x01 \x01(\tB\x1f\xe0\x41\x02\xfa\x41\x19\n\x17jobs.googleapis.com/Job\"^\n\x16\x42\x61tchDeleteJobsRequest\x12/\n\x06parent\x18\x01 \x01(\tB\x1f\xe0\x41\x02\xfa\x41\x19\x12\x17jobs.googleapis.com/Job\x12\x13\n\x06\x66ilter\x18\x02 \x01(\tB\x03\xe0\x41\x02\"\xb6\x01\n\x0fListJobsRequest\x12/\n\x06parent\x18\x01 \x01(\tB\x1f\xe0\x41\x02\xfa\x41\x19\x12\x17jobs.googleapis.com/Job\x12\x13\n\x06\x66ilter\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12\x12\n\npage_token\x18\x03 \x01(\t\x12\x11\n\tpage_size\x18\x04 \x01(\x05\x12\x36\n\x08job_view\x18\x05 \x01(\x0e\x32$.google.cloud.talent.v4beta1.JobView\"\x9c\x01\n\x10ListJobsResponse\x12.\n\x04jobs\x18\x01 \x03(\x0b\x32 .google.cloud.talent.v4beta1.Job\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\x12?\n\x08metadata\x18\x03 \x01(\x0b\x32-.google.cloud.talent.v4beta1.ResponseMetadata\"\x86\r\n\x11SearchJobsRequest\x12/\n\x06parent\x18\x01 \x01(\tB\x1f\xe0\x41\x02\xfa\x41\x19\x12\x17jobs.googleapis.com/Job\x12N\n\x0bsearch_mode\x18\x02 \x01(\x0e\x32\x39.google.cloud.talent.v4beta1.SearchJobsRequest.SearchMode\x12K\n\x10request_metadata\x18\x03 \x01(\x0b\x32,.google.cloud.talent.v4beta1.RequestMetadataB\x03\xe0\x41\x02\x12\x38\n\tjob_query\x18\x04 \x01(\x0b\x32%.google.cloud.talent.v4beta1.JobQuery\x12\x19\n\x11\x65nable_broadening\x18\x05 \x01(\x08\x12\'\n\x1brequire_precise_result_size\x18\x06 \x01(\x08\x42\x02\x18\x01\x12\x46\n\x11histogram_queries\x18\x07 \x03(\x0b\x32+.google.cloud.talent.v4beta1.HistogramQuery\x12\x36\n\x08job_view\x18\x08 \x01(\x0e\x32$.google.cloud.talent.v4beta1.JobView\x12\x0e\n\x06offset\x18\t \x01(\x05\x12\x11\n\tpage_size\x18\n \x01(\x05\x12\x12\n\npage_token\x18\x0b \x01(\t\x12\x10\n\x08order_by\x18\x0c \x01(\t\x12\x62\n\x15\x64iversification_level\x18\r \x01(\x0e\x32\x43.google.cloud.talent.v4beta1.SearchJobsRequest.DiversificationLevel\x12]\n\x13\x63ustom_ranking_info\x18\x0e \x01(\x0b\x32@.google.cloud.talent.v4beta1.SearchJobsRequest.CustomRankingInfo\x12\x1d\n\x15\x64isable_keyword_match\x18\x10 \x01(\x08\x12[\n\x12keyword_match_mode\x18\x12 \x01(\x0e\x32?.google.cloud.talent.v4beta1.SearchJobsRequest.KeywordMatchMode\x12\x63\n\x13relevance_threshold\x18\x13 \x01(\x0e\x32\x41.google.cloud.talent.v4beta1.SearchJobsRequest.RelevanceThresholdB\x03\xe0\x41\x01\x1a\x9a\x02\n\x11\x43ustomRankingInfo\x12o\n\x10importance_level\x18\x01 \x01(\x0e\x32P.google.cloud.talent.v4beta1.SearchJobsRequest.CustomRankingInfo.ImportanceLevelB\x03\xe0\x41\x02\x12\x1f\n\x12ranking_expression\x18\x02 \x01(\tB\x03\xe0\x41\x02\"s\n\x0fImportanceLevel\x12 \n\x1cIMPORTANCE_LEVEL_UNSPECIFIED\x10\x00\x12\x08\n\x04NONE\x10\x01\x12\x07\n\x03LOW\x10\x02\x12\x08\n\x04MILD\x10\x03\x12\n\n\x06MEDIUM\x10\x04\x12\x08\n\x04HIGH\x10\x05\x12\x0b\n\x07\x45XTREME\x10\x06\"R\n\nSearchMode\x12\x1b\n\x17SEARCH_MODE_UNSPECIFIED\x10\x00\x12\x0e\n\nJOB_SEARCH\x10\x01\x12\x17\n\x13\x46\x45\x41TURED_JOB_SEARCH\x10\x02\"W\n\x14\x44iversificationLevel\x12%\n!DIVERSIFICATION_LEVEL_UNSPECIFIED\x10\x00\x12\x0c\n\x08\x44ISABLED\x10\x01\x12\n\n\x06SIMPLE\x10\x02\"\x87\x01\n\x10KeywordMatchMode\x12\"\n\x1eKEYWORD_MATCH_MODE_UNSPECIFIED\x10\x00\x12\x1a\n\x16KEYWORD_MATCH_DISABLED\x10\x01\x12\x15\n\x11KEYWORD_MATCH_ALL\x10\x02\x12\x1c\n\x18KEYWORD_MATCH_TITLE_ONLY\x10\x03\"d\n\x12RelevanceThreshold\x12#\n\x1fRELEVANCE_THRESHOLD_UNSPECIFIED\x10\x00\x12\n\n\x06LOWEST\x10\x01\x12\x07\n\x03LOW\x10\x02\x12\n\n\x06MEDIUM\x10\x03\x12\x08\n\x04HIGH\x10\x04\"\xd7\x06\n\x12SearchJobsResponse\x12R\n\rmatching_jobs\x18\x01 \x03(\x0b\x32;.google.cloud.talent.v4beta1.SearchJobsResponse.MatchingJob\x12R\n\x17histogram_query_results\x18\x02 \x03(\x0b\x32\x31.google.cloud.talent.v4beta1.HistogramQueryResult\x12\x17\n\x0fnext_page_token\x18\x03 \x01(\t\x12?\n\x10location_filters\x18\x04 \x03(\x0b\x32%.google.cloud.talent.v4beta1.Location\x12\x1c\n\x14\x65stimated_total_size\x18\x05 \x01(\x05\x12\x12\n\ntotal_size\x18\x06 \x01(\x05\x12?\n\x08metadata\x18\x07 \x01(\x0b\x32-.google.cloud.talent.v4beta1.ResponseMetadata\x12\"\n\x1a\x62roadened_query_jobs_count\x18\x08 \x01(\x05\x12I\n\x10spell_correction\x18\t \x01(\x0b\x32/.google.cloud.talent.v4beta1.SpellingCorrection\x1a\xdc\x01\n\x0bMatchingJob\x12-\n\x03job\x18\x01 \x01(\x0b\x32 .google.cloud.talent.v4beta1.Job\x12\x13\n\x0bjob_summary\x18\x02 \x01(\t\x12\x19\n\x11job_title_snippet\x18\x03 \x01(\t\x12\x1b\n\x13search_text_snippet\x18\x04 \x01(\t\x12Q\n\x0c\x63ommute_info\x18\x05 \x01(\x0b\x32;.google.cloud.talent.v4beta1.SearchJobsResponse.CommuteInfo\x1a~\n\x0b\x43ommuteInfo\x12;\n\x0cjob_location\x18\x01 \x01(\x0b\x32%.google.cloud.talent.v4beta1.Location\x12\x32\n\x0ftravel_duration\x18\x02 \x01(\x0b\x32\x19.google.protobuf.Duration\"~\n\x16\x42\x61tchCreateJobsRequest\x12/\n\x06parent\x18\x01 \x01(\tB\x1f\xe0\x41\x02\xfa\x41\x19\x12\x17jobs.googleapis.com/Job\x12\x33\n\x04jobs\x18\x02 \x03(\x0b\x32 .google.cloud.talent.v4beta1.JobB\x03\xe0\x41\x02\"\xaf\x01\n\x16\x42\x61tchUpdateJobsRequest\x12/\n\x06parent\x18\x01 \x01(\tB\x1f\xe0\x41\x02\xfa\x41\x19\x12\x17jobs.googleapis.com/Job\x12\x33\n\x04jobs\x18\x02 \x03(\x0b\x32 .google.cloud.talent.v4beta1.JobB\x03\xe0\x41\x02\x12/\n\x0bupdate_mask\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.FieldMask\"\xc4\x01\n\x12JobOperationResult\x12N\n\x0bjob_results\x18\x01 \x03(\x0b\x32\x39.google.cloud.talent.v4beta1.JobOperationResult.JobResult\x1a^\n\tJobResult\x12-\n\x03job\x18\x01 \x01(\x0b\x32 .google.cloud.talent.v4beta1.Job\x12\"\n\x06status\x18\x02 \x01(\x0b\x32\x12.google.rpc.Status*v\n\x07JobView\x12\x18\n\x14JOB_VIEW_UNSPECIFIED\x10\x00\x12\x14\n\x10JOB_VIEW_ID_ONLY\x10\x01\x12\x14\n\x10JOB_VIEW_MINIMAL\x10\x02\x12\x12\n\x0eJOB_VIEW_SMALL\x10\x03\x12\x11\n\rJOB_VIEW_FULL\x10\x04\x32\xce\x12\n\nJobService\x12\xc9\x01\n\tCreateJob\x12-.google.cloud.talent.v4beta1.CreateJobRequest\x1a .google.cloud.talent.v4beta1.Job\"k\xda\x41\nparent,job\x82\xd3\xe4\x93\x02X\"+/v4beta1/{parent=projects/*/tenants/*}/jobs:\x01*Z&\"!/v4beta1/{parent=projects/*}/jobs:\x01*\x12\x9b\x02\n\x0f\x42\x61tchCreateJobs\x12\x33.google.cloud.talent.v4beta1.BatchCreateJobsRequest\x1a\x1d.google.longrunning.Operation\"\xb3\x01\xca\x41,\n\x12JobOperationResult\x12\x16\x42\x61tchOperationMetadata\xda\x41\x0bparent,jobs\x82\xd3\xe4\x93\x02p\"7/v4beta1/{parent=projects/*/tenants/*}/jobs:batchCreate:\x01*Z2\"-/v4beta1/{parent=projects/*}/jobs:batchCreate:\x01*\x12\xb7\x01\n\x06GetJob\x12*.google.cloud.talent.v4beta1.GetJobRequest\x1a .google.cloud.talent.v4beta1.Job\"_\xda\x41\x04name\x82\xd3\xe4\x93\x02R\x12+/v4beta1/{name=projects/*/tenants/*/jobs/*}Z#\x12!/v4beta1/{name=projects/*/jobs/*}\x12\xca\x01\n\tUpdateJob\x12-.google.cloud.talent.v4beta1.UpdateJobRequest\x1a .google.cloud.talent.v4beta1.Job\"l\xda\x41\x03job\x82\xd3\xe4\x93\x02`2//v4beta1/{job.name=projects/*/tenants/*/jobs/*}:\x01*Z*2%/v4beta1/{job.name=projects/*/jobs/*}:\x01*\x12\x9b\x02\n\x0f\x42\x61tchUpdateJobs\x12\x33.google.cloud.talent.v4beta1.BatchUpdateJobsRequest\x1a\x1d.google.longrunning.Operation\"\xb3\x01\xca\x41,\n\x12JobOperationResult\x12\x16\x42\x61tchOperationMetadata\xda\x41\x0bparent,jobs\x82\xd3\xe4\x93\x02p\"7/v4beta1/{parent=projects/*/tenants/*}/jobs:batchUpdate:\x01*Z2\"-/v4beta1/{parent=projects/*}/jobs:batchUpdate:\x01*\x12\xb3\x01\n\tDeleteJob\x12-.google.cloud.talent.v4beta1.DeleteJobRequest\x1a\x16.google.protobuf.Empty\"_\xda\x41\x04name\x82\xd3\xe4\x93\x02R*+/v4beta1/{name=projects/*/tenants/*/jobs/*}Z#*!/v4beta1/{name=projects/*/jobs/*}\x12\xe4\x01\n\x0f\x42\x61tchDeleteJobs\x12\x33.google.cloud.talent.v4beta1.BatchDeleteJobsRequest\x1a\x16.google.protobuf.Empty\"\x83\x01\xda\x41\rparent,filter\x82\xd3\xe4\x93\x02m\"7/v4beta1/{parent=projects/*/tenants/*}/jobs:batchDelete:\x01*Z/\"-/v4beta1/{parent=projects/*}/jobs:batchDelete\x12\xd1\x01\n\x08ListJobs\x12,.google.cloud.talent.v4beta1.ListJobsRequest\x1a-.google.cloud.talent.v4beta1.ListJobsResponse\"h\xda\x41\rparent,filter\x82\xd3\xe4\x93\x02R\x12+/v4beta1/{parent=projects/*/tenants/*}/jobsZ#\x12!/v4beta1/{parent=projects/*}/jobs\x12\xdb\x01\n\nSearchJobs\x12..google.cloud.talent.v4beta1.SearchJobsRequest\x1a/.google.cloud.talent.v4beta1.SearchJobsResponse\"l\x82\xd3\xe4\x93\x02\x66\"2/v4beta1/{parent=projects/*/tenants/*}/jobs:search:\x01*Z-\"(/v4beta1/{parent=projects/*}/jobs:search:\x01*\x12\xf3\x01\n\x12SearchJobsForAlert\x12..google.cloud.talent.v4beta1.SearchJobsRequest\x1a/.google.cloud.talent.v4beta1.SearchJobsResponse\"|\x82\xd3\xe4\x93\x02v\":/v4beta1/{parent=projects/*/tenants/*}/jobs:searchForAlert:\x01*Z5\"0/v4beta1/{parent=projects/*}/jobs:searchForAlert:\x01*\x1al\xca\x41\x13jobs.googleapis.com\xd2\x41Shttps://www.googleapis.com/auth/cloud-platform,https://www.googleapis.com/auth/jobsBs\n\x1f\x63om.google.cloud.talent.v4beta1B\x0fJobServiceProtoP\x01Z7cloud.google.com/go/talent/apiv4beta1/talentpb;talentpb\xa2\x02\x03\x43TSb\x06proto3"

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
    ["google.cloud.talent.v4beta1.Job", "google/cloud/talent/v4beta1/job.proto"],
    ["google.protobuf.FieldMask", "google/protobuf/field_mask.proto"],
    ["google.cloud.talent.v4beta1.ResponseMetadata", "google/cloud/talent/v4beta1/common.proto"],
    ["google.cloud.talent.v4beta1.JobQuery", "google/cloud/talent/v4beta1/filters.proto"],
    ["google.cloud.talent.v4beta1.HistogramQuery", "google/cloud/talent/v4beta1/histogram.proto"],
    ["google.protobuf.Duration", "google/protobuf/duration.proto"],
    ["google.rpc.Status", "google/rpc/status.proto"],
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
    module Talent
      module V4beta1
        CreateJobRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4beta1.CreateJobRequest").msgclass
        GetJobRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4beta1.GetJobRequest").msgclass
        UpdateJobRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4beta1.UpdateJobRequest").msgclass
        DeleteJobRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4beta1.DeleteJobRequest").msgclass
        BatchDeleteJobsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4beta1.BatchDeleteJobsRequest").msgclass
        ListJobsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4beta1.ListJobsRequest").msgclass
        ListJobsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4beta1.ListJobsResponse").msgclass
        SearchJobsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4beta1.SearchJobsRequest").msgclass
        SearchJobsRequest::CustomRankingInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4beta1.SearchJobsRequest.CustomRankingInfo").msgclass
        SearchJobsRequest::CustomRankingInfo::ImportanceLevel = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4beta1.SearchJobsRequest.CustomRankingInfo.ImportanceLevel").enummodule
        SearchJobsRequest::SearchMode = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4beta1.SearchJobsRequest.SearchMode").enummodule
        SearchJobsRequest::DiversificationLevel = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4beta1.SearchJobsRequest.DiversificationLevel").enummodule
        SearchJobsRequest::KeywordMatchMode = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4beta1.SearchJobsRequest.KeywordMatchMode").enummodule
        SearchJobsRequest::RelevanceThreshold = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4beta1.SearchJobsRequest.RelevanceThreshold").enummodule
        SearchJobsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4beta1.SearchJobsResponse").msgclass
        SearchJobsResponse::MatchingJob = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4beta1.SearchJobsResponse.MatchingJob").msgclass
        SearchJobsResponse::CommuteInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4beta1.SearchJobsResponse.CommuteInfo").msgclass
        BatchCreateJobsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4beta1.BatchCreateJobsRequest").msgclass
        BatchUpdateJobsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4beta1.BatchUpdateJobsRequest").msgclass
        JobOperationResult = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4beta1.JobOperationResult").msgclass
        JobOperationResult::JobResult = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4beta1.JobOperationResult.JobResult").msgclass
        JobView = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4beta1.JobView").enummodule
      end
    end
  end
end
