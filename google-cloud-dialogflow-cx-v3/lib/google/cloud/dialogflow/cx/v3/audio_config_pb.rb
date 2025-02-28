# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/dialogflow/cx/v3/audio_config.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf/duration_pb'


descriptor_data = "\n0google/cloud/dialogflow/cx/v3/audio_config.proto\x12\x1dgoogle.cloud.dialogflow.cx.v3\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a\x1egoogle/protobuf/duration.proto\"\x92\x01\n\x0eSpeechWordInfo\x12\x0c\n\x04word\x18\x03 \x01(\t\x12/\n\x0cstart_offset\x18\x01 \x01(\x0b\x32\x19.google.protobuf.Duration\x12-\n\nend_offset\x18\x02 \x01(\x0b\x32\x19.google.protobuf.Duration\x12\x12\n\nconfidence\x18\x04 \x01(\x02\"{\n\rBargeInConfig\x12\x37\n\x14no_barge_in_duration\x18\x01 \x01(\x0b\x32\x19.google.protobuf.Duration\x12\x31\n\x0etotal_duration\x18\x02 \x01(\x0b\x32\x19.google.protobuf.Duration\"\x8d\x03\n\x10InputAudioConfig\x12I\n\x0e\x61udio_encoding\x18\x01 \x01(\x0e\x32,.google.cloud.dialogflow.cx.v3.AudioEncodingB\x03\xe0\x41\x02\x12\x19\n\x11sample_rate_hertz\x18\x02 \x01(\x05\x12\x18\n\x10\x65nable_word_info\x18\r \x01(\x08\x12\x14\n\x0cphrase_hints\x18\x04 \x03(\t\x12\r\n\x05model\x18\x07 \x01(\t\x12H\n\rmodel_variant\x18\n \x01(\x0e\x32\x31.google.cloud.dialogflow.cx.v3.SpeechModelVariant\x12\x18\n\x10single_utterance\x18\x08 \x01(\x08\x12\x45\n\x0f\x62\x61rge_in_config\x18\x0f \x01(\x0b\x32,.google.cloud.dialogflow.cx.v3.BargeInConfig\x12)\n!opt_out_conformer_model_migration\x18\x1a \x01(\x08\"i\n\x14VoiceSelectionParams\x12\x0c\n\x04name\x18\x01 \x01(\t\x12\x43\n\x0bssml_gender\x18\x02 \x01(\x0e\x32..google.cloud.dialogflow.cx.v3.SsmlVoiceGender\"\xb6\x01\n\x16SynthesizeSpeechConfig\x12\x15\n\rspeaking_rate\x18\x01 \x01(\x01\x12\r\n\x05pitch\x18\x02 \x01(\x01\x12\x16\n\x0evolume_gain_db\x18\x03 \x01(\x01\x12\x1a\n\x12\x65\x66\x66\x65\x63ts_profile_id\x18\x05 \x03(\t\x12\x42\n\x05voice\x18\x04 \x01(\x0b\x32\x33.google.cloud.dialogflow.cx.v3.VoiceSelectionParams\"\xd8\x01\n\x11OutputAudioConfig\x12O\n\x0e\x61udio_encoding\x18\x01 \x01(\x0e\x32\x32.google.cloud.dialogflow.cx.v3.OutputAudioEncodingB\x03\xe0\x41\x02\x12\x19\n\x11sample_rate_hertz\x18\x02 \x01(\x05\x12W\n\x18synthesize_speech_config\x18\x03 \x01(\x0b\x32\x35.google.cloud.dialogflow.cx.v3.SynthesizeSpeechConfig\"\x82\x02\n\x14TextToSpeechSettings\x12s\n\x19synthesize_speech_configs\x18\x01 \x03(\x0b\x32P.google.cloud.dialogflow.cx.v3.TextToSpeechSettings.SynthesizeSpeechConfigsEntry\x1au\n\x1cSynthesizeSpeechConfigsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\x44\n\x05value\x18\x02 \x01(\x0b\x32\x35.google.cloud.dialogflow.cx.v3.SynthesizeSpeechConfig:\x02\x38\x01*\x94\x02\n\rAudioEncoding\x12\x1e\n\x1a\x41UDIO_ENCODING_UNSPECIFIED\x10\x00\x12\x1c\n\x18\x41UDIO_ENCODING_LINEAR_16\x10\x01\x12\x17\n\x13\x41UDIO_ENCODING_FLAC\x10\x02\x12\x18\n\x14\x41UDIO_ENCODING_MULAW\x10\x03\x12\x16\n\x12\x41UDIO_ENCODING_AMR\x10\x04\x12\x19\n\x15\x41UDIO_ENCODING_AMR_WB\x10\x05\x12\x1b\n\x17\x41UDIO_ENCODING_OGG_OPUS\x10\x06\x12)\n%AUDIO_ENCODING_SPEEX_WITH_HEADER_BYTE\x10\x07\x12\x17\n\x13\x41UDIO_ENCODING_ALAW\x10\x08*v\n\x12SpeechModelVariant\x12$\n SPEECH_MODEL_VARIANT_UNSPECIFIED\x10\x00\x12\x16\n\x12USE_BEST_AVAILABLE\x10\x01\x12\x10\n\x0cUSE_STANDARD\x10\x02\x12\x10\n\x0cUSE_ENHANCED\x10\x03*\x8d\x01\n\x0fSsmlVoiceGender\x12!\n\x1dSSML_VOICE_GENDER_UNSPECIFIED\x10\x00\x12\x1a\n\x16SSML_VOICE_GENDER_MALE\x10\x01\x12\x1c\n\x18SSML_VOICE_GENDER_FEMALE\x10\x02\x12\x1d\n\x19SSML_VOICE_GENDER_NEUTRAL\x10\x03*\x8c\x02\n\x13OutputAudioEncoding\x12%\n!OUTPUT_AUDIO_ENCODING_UNSPECIFIED\x10\x00\x12#\n\x1fOUTPUT_AUDIO_ENCODING_LINEAR_16\x10\x01\x12\x1d\n\x19OUTPUT_AUDIO_ENCODING_MP3\x10\x02\x12%\n!OUTPUT_AUDIO_ENCODING_MP3_64_KBPS\x10\x04\x12\"\n\x1eOUTPUT_AUDIO_ENCODING_OGG_OPUS\x10\x03\x12\x1f\n\x1bOUTPUT_AUDIO_ENCODING_MULAW\x10\x05\x12\x1e\n\x1aOUTPUT_AUDIO_ENCODING_ALAW\x10\x06\x42\x8b\x02\n!com.google.cloud.dialogflow.cx.v3B\x10\x41udioConfigProtoP\x01Z1cloud.google.com/go/dialogflow/cx/apiv3/cxpb;cxpb\xa2\x02\x02\x44\x46\xaa\x02\x1dGoogle.Cloud.Dialogflow.Cx.V3\xea\x02!Google::Cloud::Dialogflow::CX::V3\xea\x41U\n\x1b\x61utoml.googleapis.com/Model\x12\x36projects/{project}/locations/{location}/models/{model}b\x06proto3"

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
          SpeechWordInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.SpeechWordInfo").msgclass
          BargeInConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.BargeInConfig").msgclass
          InputAudioConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.InputAudioConfig").msgclass
          VoiceSelectionParams = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.VoiceSelectionParams").msgclass
          SynthesizeSpeechConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.SynthesizeSpeechConfig").msgclass
          OutputAudioConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.OutputAudioConfig").msgclass
          TextToSpeechSettings = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.TextToSpeechSettings").msgclass
          AudioEncoding = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.AudioEncoding").enummodule
          SpeechModelVariant = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.SpeechModelVariant").enummodule
          SsmlVoiceGender = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.SsmlVoiceGender").enummodule
          OutputAudioEncoding = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.OutputAudioEncoding").enummodule
        end
      end
    end
  end
end
