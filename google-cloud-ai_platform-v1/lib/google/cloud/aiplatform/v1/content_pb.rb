# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/aiplatform/v1/content.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/cloud/aiplatform/v1/openapi_pb'
require 'google/cloud/aiplatform/v1/tool_pb'
require 'google/protobuf/duration_pb'
require 'google/type/date_pb'


descriptor_data = "\n(google/cloud/aiplatform/v1/content.proto\x12\x1agoogle.cloud.aiplatform.v1\x1a\x1fgoogle/api/field_behavior.proto\x1a(google/cloud/aiplatform/v1/openapi.proto\x1a%google/cloud/aiplatform/v1/tool.proto\x1a\x1egoogle/protobuf/duration.proto\x1a\x16google/type/date.proto\"R\n\x07\x43ontent\x12\x11\n\x04role\x18\x01 \x01(\tB\x03\xe0\x41\x01\x12\x34\n\x05parts\x18\x02 \x03(\x0b\x32 .google.cloud.aiplatform.v1.PartB\x03\xe0\x41\x02\"\x8f\x03\n\x04Part\x12\x13\n\x04text\x18\x01 \x01(\tB\x03\xe0\x41\x01H\x00\x12<\n\x0binline_data\x18\x02 \x01(\x0b\x32 .google.cloud.aiplatform.v1.BlobB\x03\xe0\x41\x01H\x00\x12>\n\tfile_data\x18\x03 \x01(\x0b\x32$.google.cloud.aiplatform.v1.FileDataB\x03\xe0\x41\x01H\x00\x12\x46\n\rfunction_call\x18\x05 \x01(\x0b\x32(.google.cloud.aiplatform.v1.FunctionCallB\x03\xe0\x41\x01H\x00\x12N\n\x11\x66unction_response\x18\x06 \x01(\x0b\x32,.google.cloud.aiplatform.v1.FunctionResponseB\x03\xe0\x41\x01H\x00\x12H\n\x0evideo_metadata\x18\x04 \x01(\x0b\x32).google.cloud.aiplatform.v1.VideoMetadataB\x03\xe0\x41\x01H\x01\x42\x06\n\x04\x64\x61taB\n\n\x08metadata\"1\n\x04\x42lob\x12\x16\n\tmime_type\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12\x11\n\x04\x64\x61ta\x18\x02 \x01(\x0c\x42\x03\xe0\x41\x02\"9\n\x08\x46ileData\x12\x16\n\tmime_type\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12\x15\n\x08\x66ile_uri\x18\x02 \x01(\tB\x03\xe0\x41\x02\"y\n\rVideoMetadata\x12\x34\n\x0cstart_offset\x18\x01 \x01(\x0b\x32\x19.google.protobuf.DurationB\x03\xe0\x41\x01\x12\x32\n\nend_offset\x18\x02 \x01(\x0b\x32\x19.google.protobuf.DurationB\x03\xe0\x41\x01\"\xc1\n\n\x10GenerationConfig\x12\x1d\n\x0btemperature\x18\x01 \x01(\x02\x42\x03\xe0\x41\x01H\x00\x88\x01\x01\x12\x17\n\x05top_p\x18\x02 \x01(\x02\x42\x03\xe0\x41\x01H\x01\x88\x01\x01\x12\x17\n\x05top_k\x18\x03 \x01(\x02\x42\x03\xe0\x41\x01H\x02\x88\x01\x01\x12!\n\x0f\x63\x61ndidate_count\x18\x04 \x01(\x05\x42\x03\xe0\x41\x01H\x03\x88\x01\x01\x12#\n\x11max_output_tokens\x18\x05 \x01(\x05\x42\x03\xe0\x41\x01H\x04\x88\x01\x01\x12\x1b\n\x0estop_sequences\x18\x06 \x03(\tB\x03\xe0\x41\x01\x12#\n\x11response_logprobs\x18\x12 \x01(\x08\x42\x03\xe0\x41\x01H\x05\x88\x01\x01\x12\x1a\n\x08logprobs\x18\x07 \x01(\x05\x42\x03\xe0\x41\x01H\x06\x88\x01\x01\x12\"\n\x10presence_penalty\x18\x08 \x01(\x02\x42\x03\xe0\x41\x01H\x07\x88\x01\x01\x12#\n\x11\x66requency_penalty\x18\t \x01(\x02\x42\x03\xe0\x41\x01H\x08\x88\x01\x01\x12\x16\n\x04seed\x18\x0c \x01(\x05\x42\x03\xe0\x41\x01H\t\x88\x01\x01\x12\x1f\n\x12response_mime_type\x18\r \x01(\tB\x03\xe0\x41\x01\x12\x45\n\x0fresponse_schema\x18\x10 \x01(\x0b\x32\".google.cloud.aiplatform.v1.SchemaB\x03\xe0\x41\x01H\n\x88\x01\x01\x12\\\n\x0erouting_config\x18\x11 \x01(\x0b\x32:.google.cloud.aiplatform.v1.GenerationConfig.RoutingConfigB\x03\xe0\x41\x01H\x0b\x88\x01\x01\x1a\xc2\x04\n\rRoutingConfig\x12_\n\tauto_mode\x18\x01 \x01(\x0b\x32J.google.cloud.aiplatform.v1.GenerationConfig.RoutingConfig.AutoRoutingModeH\x00\x12\x63\n\x0bmanual_mode\x18\x02 \x01(\x0b\x32L.google.cloud.aiplatform.v1.GenerationConfig.RoutingConfig.ManualRoutingModeH\x00\x1a\x9b\x02\n\x0f\x41utoRoutingMode\x12\x88\x01\n\x18model_routing_preference\x18\x01 \x01(\x0e\x32\x61.google.cloud.aiplatform.v1.GenerationConfig.RoutingConfig.AutoRoutingMode.ModelRoutingPreferenceH\x00\x88\x01\x01\"`\n\x16ModelRoutingPreference\x12\x0b\n\x07UNKNOWN\x10\x00\x12\x16\n\x12PRIORITIZE_QUALITY\x10\x01\x12\x0c\n\x08\x42\x41LANCED\x10\x02\x12\x13\n\x0fPRIORITIZE_COST\x10\x03\x42\x1b\n\x19_model_routing_preference\x1a;\n\x11ManualRoutingMode\x12\x17\n\nmodel_name\x18\x01 \x01(\tH\x00\x88\x01\x01\x42\r\n\x0b_model_nameB\x10\n\x0erouting_configB\x0e\n\x0c_temperatureB\x08\n\x06_top_pB\x08\n\x06_top_kB\x12\n\x10_candidate_countB\x14\n\x12_max_output_tokensB\x14\n\x12_response_logprobsB\x0b\n\t_logprobsB\x13\n\x11_presence_penaltyB\x14\n\x12_frequency_penaltyB\x07\n\x05_seedB\x12\n\x10_response_schemaB\x11\n\x0f_routing_config\"\xeb\x03\n\rSafetySetting\x12?\n\x08\x63\x61tegory\x18\x01 \x01(\x0e\x32(.google.cloud.aiplatform.v1.HarmCategoryB\x03\xe0\x41\x02\x12T\n\tthreshold\x18\x02 \x01(\x0e\x32<.google.cloud.aiplatform.v1.SafetySetting.HarmBlockThresholdB\x03\xe0\x41\x02\x12N\n\x06method\x18\x04 \x01(\x0e\x32\x39.google.cloud.aiplatform.v1.SafetySetting.HarmBlockMethodB\x03\xe0\x41\x01\"\x9d\x01\n\x12HarmBlockThreshold\x12$\n HARM_BLOCK_THRESHOLD_UNSPECIFIED\x10\x00\x12\x17\n\x13\x42LOCK_LOW_AND_ABOVE\x10\x01\x12\x1a\n\x16\x42LOCK_MEDIUM_AND_ABOVE\x10\x02\x12\x13\n\x0f\x42LOCK_ONLY_HIGH\x10\x03\x12\x0e\n\nBLOCK_NONE\x10\x04\x12\x07\n\x03OFF\x10\x05\"S\n\x0fHarmBlockMethod\x12!\n\x1dHARM_BLOCK_METHOD_UNSPECIFIED\x10\x00\x12\x0c\n\x08SEVERITY\x10\x01\x12\x0f\n\x0bPROBABILITY\x10\x02\"\xbf\x04\n\x0cSafetyRating\x12?\n\x08\x63\x61tegory\x18\x01 \x01(\x0e\x32(.google.cloud.aiplatform.v1.HarmCategoryB\x03\xe0\x41\x03\x12R\n\x0bprobability\x18\x02 \x01(\x0e\x32\x38.google.cloud.aiplatform.v1.SafetyRating.HarmProbabilityB\x03\xe0\x41\x03\x12\x1e\n\x11probability_score\x18\x05 \x01(\x02\x42\x03\xe0\x41\x03\x12L\n\x08severity\x18\x06 \x01(\x0e\x32\x35.google.cloud.aiplatform.v1.SafetyRating.HarmSeverityB\x03\xe0\x41\x03\x12\x1b\n\x0eseverity_score\x18\x07 \x01(\x02\x42\x03\xe0\x41\x03\x12\x14\n\x07\x62locked\x18\x03 \x01(\x08\x42\x03\xe0\x41\x03\"b\n\x0fHarmProbability\x12 \n\x1cHARM_PROBABILITY_UNSPECIFIED\x10\x00\x12\x0e\n\nNEGLIGIBLE\x10\x01\x12\x07\n\x03LOW\x10\x02\x12\n\n\x06MEDIUM\x10\x03\x12\x08\n\x04HIGH\x10\x04\"\x94\x01\n\x0cHarmSeverity\x12\x1d\n\x19HARM_SEVERITY_UNSPECIFIED\x10\x00\x12\x1c\n\x18HARM_SEVERITY_NEGLIGIBLE\x10\x01\x12\x15\n\x11HARM_SEVERITY_LOW\x10\x02\x12\x18\n\x14HARM_SEVERITY_MEDIUM\x10\x03\x12\x16\n\x12HARM_SEVERITY_HIGH\x10\x04\"P\n\x10\x43itationMetadata\x12<\n\tcitations\x18\x01 \x03(\x0b\x32$.google.cloud.aiplatform.v1.CitationB\x03\xe0\x41\x03\"\xaa\x01\n\x08\x43itation\x12\x18\n\x0bstart_index\x18\x01 \x01(\x05\x42\x03\xe0\x41\x03\x12\x16\n\tend_index\x18\x02 \x01(\x05\x42\x03\xe0\x41\x03\x12\x10\n\x03uri\x18\x03 \x01(\tB\x03\xe0\x41\x03\x12\x12\n\x05title\x18\x04 \x01(\tB\x03\xe0\x41\x03\x12\x14\n\x07license\x18\x05 \x01(\tB\x03\xe0\x41\x03\x12\x30\n\x10publication_date\x18\x06 \x01(\x0b\x32\x11.google.type.DateB\x03\xe0\x41\x03\"\xfc\x05\n\tCandidate\x12\x12\n\x05index\x18\x01 \x01(\x05\x42\x03\xe0\x41\x03\x12\x39\n\x07\x63ontent\x18\x02 \x01(\x0b\x32#.google.cloud.aiplatform.v1.ContentB\x03\xe0\x41\x03\x12\x12\n\x05score\x18\x08 \x01(\x01\x42\x03\xe0\x41\x03\x12\x19\n\x0c\x61vg_logprobs\x18\t \x01(\x01\x42\x03\xe0\x41\x03\x12H\n\x0flogprobs_result\x18\n \x01(\x0b\x32*.google.cloud.aiplatform.v1.LogprobsResultB\x03\xe0\x41\x03\x12N\n\rfinish_reason\x18\x03 \x01(\x0e\x32\x32.google.cloud.aiplatform.v1.Candidate.FinishReasonB\x03\xe0\x41\x03\x12\x45\n\x0esafety_ratings\x18\x04 \x03(\x0b\x32(.google.cloud.aiplatform.v1.SafetyRatingB\x03\xe0\x41\x03\x12 \n\x0e\x66inish_message\x18\x05 \x01(\tB\x03\xe0\x41\x03H\x00\x88\x01\x01\x12L\n\x11\x63itation_metadata\x18\x06 \x01(\x0b\x32,.google.cloud.aiplatform.v1.CitationMetadataB\x03\xe0\x41\x03\x12N\n\x12grounding_metadata\x18\x07 \x01(\x0b\x32-.google.cloud.aiplatform.v1.GroundingMetadataB\x03\xe0\x41\x03\"\xbc\x01\n\x0c\x46inishReason\x12\x1d\n\x19\x46INISH_REASON_UNSPECIFIED\x10\x00\x12\x08\n\x04STOP\x10\x01\x12\x0e\n\nMAX_TOKENS\x10\x02\x12\n\n\x06SAFETY\x10\x03\x12\x0e\n\nRECITATION\x10\x04\x12\t\n\x05OTHER\x10\x05\x12\r\n\tBLOCKLIST\x10\x06\x12\x16\n\x12PROHIBITED_CONTENT\x10\x07\x12\x08\n\x04SPII\x10\x08\x12\x1b\n\x17MALFORMED_FUNCTION_CALL\x10\tB\x11\n\x0f_finish_message\"\x8f\x03\n\x0eLogprobsResult\x12P\n\x0etop_candidates\x18\x01 \x03(\x0b\x32\x38.google.cloud.aiplatform.v1.LogprobsResult.TopCandidates\x12O\n\x11\x63hosen_candidates\x18\x02 \x03(\x0b\x32\x34.google.cloud.aiplatform.v1.LogprobsResult.Candidate\x1a\x7f\n\tCandidate\x12\x12\n\x05token\x18\x01 \x01(\tH\x00\x88\x01\x01\x12\x15\n\x08token_id\x18\x03 \x01(\x05H\x01\x88\x01\x01\x12\x1c\n\x0flog_probability\x18\x02 \x01(\x02H\x02\x88\x01\x01\x42\x08\n\x06_tokenB\x0b\n\t_token_idB\x12\n\x10_log_probability\x1aY\n\rTopCandidates\x12H\n\ncandidates\x18\x01 \x03(\x0b\x32\x34.google.cloud.aiplatform.v1.LogprobsResult.Candidate\"g\n\x07Segment\x12\x17\n\npart_index\x18\x01 \x01(\x05\x42\x03\xe0\x41\x03\x12\x18\n\x0bstart_index\x18\x02 \x01(\x05\x42\x03\xe0\x41\x03\x12\x16\n\tend_index\x18\x03 \x01(\x05\x42\x03\xe0\x41\x03\x12\x11\n\x04text\x18\x04 \x01(\tB\x03\xe0\x41\x03\"\xc2\x02\n\x0eGroundingChunk\x12=\n\x03web\x18\x01 \x01(\x0b\x32..google.cloud.aiplatform.v1.GroundingChunk.WebH\x00\x12X\n\x11retrieved_context\x18\x02 \x01(\x0b\x32;.google.cloud.aiplatform.v1.GroundingChunk.RetrievedContextH\x00\x1a=\n\x03Web\x12\x10\n\x03uri\x18\x01 \x01(\tH\x00\x88\x01\x01\x12\x12\n\x05title\x18\x02 \x01(\tH\x01\x88\x01\x01\x42\x06\n\x04_uriB\x08\n\x06_title\x1aJ\n\x10RetrievedContext\x12\x10\n\x03uri\x18\x01 \x01(\tH\x00\x88\x01\x01\x12\x12\n\x05title\x18\x02 \x01(\tH\x01\x88\x01\x01\x42\x06\n\x04_uriB\x08\n\x06_titleB\x0c\n\nchunk_type\"\x95\x01\n\x10GroundingSupport\x12\x39\n\x07segment\x18\x01 \x01(\x0b\x32#.google.cloud.aiplatform.v1.SegmentH\x00\x88\x01\x01\x12\x1f\n\x17grounding_chunk_indices\x18\x02 \x03(\x05\x12\x19\n\x11\x63onfidence_scores\x18\x03 \x03(\x02\x42\n\n\x08_segment\"\xb4\x02\n\x11GroundingMetadata\x12\x1f\n\x12web_search_queries\x18\x01 \x03(\tB\x03\xe0\x41\x01\x12R\n\x12search_entry_point\x18\x04 \x01(\x0b\x32,.google.cloud.aiplatform.v1.SearchEntryPointB\x03\xe0\x41\x01H\x00\x88\x01\x01\x12\x44\n\x10grounding_chunks\x18\x05 \x03(\x0b\x32*.google.cloud.aiplatform.v1.GroundingChunk\x12M\n\x12grounding_supports\x18\x06 \x03(\x0b\x32,.google.cloud.aiplatform.v1.GroundingSupportB\x03\xe0\x41\x01\x42\x15\n\x13_search_entry_point\"H\n\x10SearchEntryPoint\x12\x1d\n\x10rendered_content\x18\x01 \x01(\tB\x03\xe0\x41\x01\x12\x15\n\x08sdk_blob\x18\x02 \x01(\x0c\x42\x03\xe0\x41\x01*\xd7\x01\n\x0cHarmCategory\x12\x1d\n\x19HARM_CATEGORY_UNSPECIFIED\x10\x00\x12\x1d\n\x19HARM_CATEGORY_HATE_SPEECH\x10\x01\x12#\n\x1fHARM_CATEGORY_DANGEROUS_CONTENT\x10\x02\x12\x1c\n\x18HARM_CATEGORY_HARASSMENT\x10\x03\x12#\n\x1fHARM_CATEGORY_SEXUALLY_EXPLICIT\x10\x04\x12!\n\x1dHARM_CATEGORY_CIVIC_INTEGRITY\x10\x05\x42\xca\x01\n\x1e\x63om.google.cloud.aiplatform.v1B\x0c\x43ontentProtoP\x01Z>cloud.google.com/go/aiplatform/apiv1/aiplatformpb;aiplatformpb\xaa\x02\x1aGoogle.Cloud.AIPlatform.V1\xca\x02\x1aGoogle\\Cloud\\AIPlatform\\V1\xea\x02\x1dGoogle::Cloud::AIPlatform::V1b\x06proto3"

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
    ["google.cloud.aiplatform.v1.FunctionCall", "google/cloud/aiplatform/v1/tool.proto"],
    ["google.protobuf.Duration", "google/protobuf/duration.proto"],
    ["google.cloud.aiplatform.v1.Schema", "google/cloud/aiplatform/v1/openapi.proto"],
    ["google.type.Date", "google/type/date.proto"],
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
    module AIPlatform
      module V1
        Content = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.Content").msgclass
        Part = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.Part").msgclass
        Blob = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.Blob").msgclass
        FileData = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.FileData").msgclass
        VideoMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.VideoMetadata").msgclass
        GenerationConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.GenerationConfig").msgclass
        GenerationConfig::RoutingConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.GenerationConfig.RoutingConfig").msgclass
        GenerationConfig::RoutingConfig::AutoRoutingMode = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.GenerationConfig.RoutingConfig.AutoRoutingMode").msgclass
        GenerationConfig::RoutingConfig::AutoRoutingMode::ModelRoutingPreference = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.GenerationConfig.RoutingConfig.AutoRoutingMode.ModelRoutingPreference").enummodule
        GenerationConfig::RoutingConfig::ManualRoutingMode = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.GenerationConfig.RoutingConfig.ManualRoutingMode").msgclass
        SafetySetting = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.SafetySetting").msgclass
        SafetySetting::HarmBlockThreshold = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.SafetySetting.HarmBlockThreshold").enummodule
        SafetySetting::HarmBlockMethod = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.SafetySetting.HarmBlockMethod").enummodule
        SafetyRating = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.SafetyRating").msgclass
        SafetyRating::HarmProbability = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.SafetyRating.HarmProbability").enummodule
        SafetyRating::HarmSeverity = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.SafetyRating.HarmSeverity").enummodule
        CitationMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.CitationMetadata").msgclass
        Citation = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.Citation").msgclass
        Candidate = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.Candidate").msgclass
        Candidate::FinishReason = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.Candidate.FinishReason").enummodule
        LogprobsResult = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.LogprobsResult").msgclass
        LogprobsResult::Candidate = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.LogprobsResult.Candidate").msgclass
        LogprobsResult::TopCandidates = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.LogprobsResult.TopCandidates").msgclass
        Segment = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.Segment").msgclass
        GroundingChunk = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.GroundingChunk").msgclass
        GroundingChunk::Web = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.GroundingChunk.Web").msgclass
        GroundingChunk::RetrievedContext = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.GroundingChunk.RetrievedContext").msgclass
        GroundingSupport = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.GroundingSupport").msgclass
        GroundingMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.GroundingMetadata").msgclass
        SearchEntryPoint = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.SearchEntryPoint").msgclass
        HarmCategory = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.HarmCategory").enummodule
      end
    end
  end
end
