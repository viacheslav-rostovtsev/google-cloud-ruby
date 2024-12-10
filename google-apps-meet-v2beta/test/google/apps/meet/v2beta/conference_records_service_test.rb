# frozen_string_literal: true

# Copyright 2023 Google LLC
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

require "helper"

require "gapic/grpc/service_stub"

require "google/apps/meet/v2beta/service_pb"
require "google/apps/meet/v2beta/service_services_pb"
require "google/apps/meet/v2beta/conference_records_service"

class ::Google::Apps::Meet::V2beta::ConferenceRecordsService::ClientTest < Minitest::Test
  class ClientStub
    attr_accessor :call_rpc_count, :requests

    def initialize response, operation, &block
      @response = response
      @operation = operation
      @block = block
      @call_rpc_count = 0
      @requests = []
    end

    def call_rpc *args, **kwargs
      @call_rpc_count += 1

      @requests << @block&.call(*args, **kwargs)

      catch :response do
        yield @response, @operation if block_given?
        @response
      end
    end

    def endpoint
      "endpoint.example.com"
    end

    def universe_domain
      "example.com"
    end

    def stub_logger
      nil
    end
  end

  def test_get_conference_record
    # Create GRPC objects.
    grpc_response = ::Google::Apps::Meet::V2beta::ConferenceRecord.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_conference_record_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_conference_record, name
      assert_kind_of ::Google::Apps::Meet::V2beta::GetConferenceRecordRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_conference_record_client_stub do
      # Create client
      client = ::Google::Apps::Meet::V2beta::ConferenceRecordsService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_conference_record({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_conference_record name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_conference_record ::Google::Apps::Meet::V2beta::GetConferenceRecordRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_conference_record({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_conference_record(::Google::Apps::Meet::V2beta::GetConferenceRecordRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_conference_record_client_stub.call_rpc_count
    end
  end

  def test_list_conference_records
    # Create GRPC objects.
    grpc_response = ::Google::Apps::Meet::V2beta::ListConferenceRecordsResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    page_size = 42
    page_token = "hello world"
    filter = "hello world"

    list_conference_records_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_conference_records, name
      assert_kind_of ::Google::Apps::Meet::V2beta::ListConferenceRecordsRequest, request
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      assert_equal "hello world", request["filter"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_conference_records_client_stub do
      # Create client
      client = ::Google::Apps::Meet::V2beta::ConferenceRecordsService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_conference_records({ page_size: page_size, page_token: page_token, filter: filter }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_conference_records page_size: page_size, page_token: page_token, filter: filter do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_conference_records ::Google::Apps::Meet::V2beta::ListConferenceRecordsRequest.new(page_size: page_size, page_token: page_token, filter: filter) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_conference_records({ page_size: page_size, page_token: page_token, filter: filter }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_conference_records(::Google::Apps::Meet::V2beta::ListConferenceRecordsRequest.new(page_size: page_size, page_token: page_token, filter: filter), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_conference_records_client_stub.call_rpc_count
    end
  end

  def test_get_participant
    # Create GRPC objects.
    grpc_response = ::Google::Apps::Meet::V2beta::Participant.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_participant_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_participant, name
      assert_kind_of ::Google::Apps::Meet::V2beta::GetParticipantRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_participant_client_stub do
      # Create client
      client = ::Google::Apps::Meet::V2beta::ConferenceRecordsService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_participant({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_participant name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_participant ::Google::Apps::Meet::V2beta::GetParticipantRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_participant({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_participant(::Google::Apps::Meet::V2beta::GetParticipantRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_participant_client_stub.call_rpc_count
    end
  end

  def test_list_participants
    # Create GRPC objects.
    grpc_response = ::Google::Apps::Meet::V2beta::ListParticipantsResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"
    filter = "hello world"

    list_participants_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_participants, name
      assert_kind_of ::Google::Apps::Meet::V2beta::ListParticipantsRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      assert_equal "hello world", request["filter"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_participants_client_stub do
      # Create client
      client = ::Google::Apps::Meet::V2beta::ConferenceRecordsService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_participants({ parent: parent, page_size: page_size, page_token: page_token, filter: filter }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_participants parent: parent, page_size: page_size, page_token: page_token, filter: filter do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_participants ::Google::Apps::Meet::V2beta::ListParticipantsRequest.new(parent: parent, page_size: page_size, page_token: page_token, filter: filter) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_participants({ parent: parent, page_size: page_size, page_token: page_token, filter: filter }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_participants(::Google::Apps::Meet::V2beta::ListParticipantsRequest.new(parent: parent, page_size: page_size, page_token: page_token, filter: filter), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_participants_client_stub.call_rpc_count
    end
  end

  def test_get_participant_session
    # Create GRPC objects.
    grpc_response = ::Google::Apps::Meet::V2beta::ParticipantSession.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_participant_session_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_participant_session, name
      assert_kind_of ::Google::Apps::Meet::V2beta::GetParticipantSessionRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_participant_session_client_stub do
      # Create client
      client = ::Google::Apps::Meet::V2beta::ConferenceRecordsService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_participant_session({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_participant_session name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_participant_session ::Google::Apps::Meet::V2beta::GetParticipantSessionRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_participant_session({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_participant_session(::Google::Apps::Meet::V2beta::GetParticipantSessionRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_participant_session_client_stub.call_rpc_count
    end
  end

  def test_list_participant_sessions
    # Create GRPC objects.
    grpc_response = ::Google::Apps::Meet::V2beta::ListParticipantSessionsResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"
    filter = "hello world"

    list_participant_sessions_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_participant_sessions, name
      assert_kind_of ::Google::Apps::Meet::V2beta::ListParticipantSessionsRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      assert_equal "hello world", request["filter"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_participant_sessions_client_stub do
      # Create client
      client = ::Google::Apps::Meet::V2beta::ConferenceRecordsService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_participant_sessions({ parent: parent, page_size: page_size, page_token: page_token, filter: filter }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_participant_sessions parent: parent, page_size: page_size, page_token: page_token, filter: filter do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_participant_sessions ::Google::Apps::Meet::V2beta::ListParticipantSessionsRequest.new(parent: parent, page_size: page_size, page_token: page_token, filter: filter) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_participant_sessions({ parent: parent, page_size: page_size, page_token: page_token, filter: filter }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_participant_sessions(::Google::Apps::Meet::V2beta::ListParticipantSessionsRequest.new(parent: parent, page_size: page_size, page_token: page_token, filter: filter), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_participant_sessions_client_stub.call_rpc_count
    end
  end

  def test_get_recording
    # Create GRPC objects.
    grpc_response = ::Google::Apps::Meet::V2beta::Recording.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_recording_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_recording, name
      assert_kind_of ::Google::Apps::Meet::V2beta::GetRecordingRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_recording_client_stub do
      # Create client
      client = ::Google::Apps::Meet::V2beta::ConferenceRecordsService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_recording({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_recording name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_recording ::Google::Apps::Meet::V2beta::GetRecordingRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_recording({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_recording(::Google::Apps::Meet::V2beta::GetRecordingRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_recording_client_stub.call_rpc_count
    end
  end

  def test_list_recordings
    # Create GRPC objects.
    grpc_response = ::Google::Apps::Meet::V2beta::ListRecordingsResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"

    list_recordings_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_recordings, name
      assert_kind_of ::Google::Apps::Meet::V2beta::ListRecordingsRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_recordings_client_stub do
      # Create client
      client = ::Google::Apps::Meet::V2beta::ConferenceRecordsService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_recordings({ parent: parent, page_size: page_size, page_token: page_token }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_recordings parent: parent, page_size: page_size, page_token: page_token do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_recordings ::Google::Apps::Meet::V2beta::ListRecordingsRequest.new(parent: parent, page_size: page_size, page_token: page_token) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_recordings({ parent: parent, page_size: page_size, page_token: page_token }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_recordings(::Google::Apps::Meet::V2beta::ListRecordingsRequest.new(parent: parent, page_size: page_size, page_token: page_token), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_recordings_client_stub.call_rpc_count
    end
  end

  def test_get_transcript
    # Create GRPC objects.
    grpc_response = ::Google::Apps::Meet::V2beta::Transcript.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_transcript_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_transcript, name
      assert_kind_of ::Google::Apps::Meet::V2beta::GetTranscriptRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_transcript_client_stub do
      # Create client
      client = ::Google::Apps::Meet::V2beta::ConferenceRecordsService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_transcript({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_transcript name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_transcript ::Google::Apps::Meet::V2beta::GetTranscriptRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_transcript({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_transcript(::Google::Apps::Meet::V2beta::GetTranscriptRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_transcript_client_stub.call_rpc_count
    end
  end

  def test_list_transcripts
    # Create GRPC objects.
    grpc_response = ::Google::Apps::Meet::V2beta::ListTranscriptsResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"

    list_transcripts_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_transcripts, name
      assert_kind_of ::Google::Apps::Meet::V2beta::ListTranscriptsRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_transcripts_client_stub do
      # Create client
      client = ::Google::Apps::Meet::V2beta::ConferenceRecordsService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_transcripts({ parent: parent, page_size: page_size, page_token: page_token }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_transcripts parent: parent, page_size: page_size, page_token: page_token do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_transcripts ::Google::Apps::Meet::V2beta::ListTranscriptsRequest.new(parent: parent, page_size: page_size, page_token: page_token) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_transcripts({ parent: parent, page_size: page_size, page_token: page_token }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_transcripts(::Google::Apps::Meet::V2beta::ListTranscriptsRequest.new(parent: parent, page_size: page_size, page_token: page_token), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_transcripts_client_stub.call_rpc_count
    end
  end

  def test_get_transcript_entry
    # Create GRPC objects.
    grpc_response = ::Google::Apps::Meet::V2beta::TranscriptEntry.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_transcript_entry_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_transcript_entry, name
      assert_kind_of ::Google::Apps::Meet::V2beta::GetTranscriptEntryRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_transcript_entry_client_stub do
      # Create client
      client = ::Google::Apps::Meet::V2beta::ConferenceRecordsService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_transcript_entry({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_transcript_entry name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_transcript_entry ::Google::Apps::Meet::V2beta::GetTranscriptEntryRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_transcript_entry({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_transcript_entry(::Google::Apps::Meet::V2beta::GetTranscriptEntryRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_transcript_entry_client_stub.call_rpc_count
    end
  end

  def test_list_transcript_entries
    # Create GRPC objects.
    grpc_response = ::Google::Apps::Meet::V2beta::ListTranscriptEntriesResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"

    list_transcript_entries_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_transcript_entries, name
      assert_kind_of ::Google::Apps::Meet::V2beta::ListTranscriptEntriesRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_transcript_entries_client_stub do
      # Create client
      client = ::Google::Apps::Meet::V2beta::ConferenceRecordsService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_transcript_entries({ parent: parent, page_size: page_size, page_token: page_token }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_transcript_entries parent: parent, page_size: page_size, page_token: page_token do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_transcript_entries ::Google::Apps::Meet::V2beta::ListTranscriptEntriesRequest.new(parent: parent, page_size: page_size, page_token: page_token) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_transcript_entries({ parent: parent, page_size: page_size, page_token: page_token }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_transcript_entries(::Google::Apps::Meet::V2beta::ListTranscriptEntriesRequest.new(parent: parent, page_size: page_size, page_token: page_token), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_transcript_entries_client_stub.call_rpc_count
    end
  end

  def test_configure
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = block_config = config = nil
    dummy_stub = ClientStub.new nil, nil
    Gapic::ServiceStub.stub :new, dummy_stub do
      client = ::Google::Apps::Meet::V2beta::ConferenceRecordsService::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Apps::Meet::V2beta::ConferenceRecordsService::Client::Configuration, config
  end
end
