# frozen_string_literal: true

# Copyright 2021 Google LLC
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
    module DocumentAI
      module V1
        # Payload message of raw document content (bytes).
        # @!attribute [rw] content
        #   @return [::String]
        #     Inline document content.
        # @!attribute [rw] mime_type
        #   @return [::String]
        #     An IANA MIME type (RFC6838) indicating the nature and format of the
        #     {::Google::Cloud::DocumentAI::V1::RawDocument#content content}.
        # @!attribute [rw] display_name
        #   @return [::String]
        #     The display name of the document, it supports all Unicode characters except
        #     the following:
        #     `*`, `?`, `[`, `]`, `%`, `{`, `}`,`'`, `\"`, `,`
        #     `~`, `=` and `:` are reserved.
        #     If not specified, a default ID is generated.
        class RawDocument
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Specifies a document stored on Cloud Storage.
        # @!attribute [rw] gcs_uri
        #   @return [::String]
        #     The Cloud Storage object uri.
        # @!attribute [rw] mime_type
        #   @return [::String]
        #     An IANA MIME type (RFC6838) of the content.
        class GcsDocument
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Specifies a set of documents on Cloud Storage.
        # @!attribute [rw] documents
        #   @return [::Array<::Google::Cloud::DocumentAI::V1::GcsDocument>]
        #     The list of documents.
        class GcsDocuments
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Specifies all documents on Cloud Storage with a common prefix.
        # @!attribute [rw] gcs_uri_prefix
        #   @return [::String]
        #     The URI prefix.
        class GcsPrefix
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The common config to specify a set of documents used as input.
        # @!attribute [rw] gcs_prefix
        #   @return [::Google::Cloud::DocumentAI::V1::GcsPrefix]
        #     The set of documents that match the specified Cloud Storage `gcs_prefix`.
        # @!attribute [rw] gcs_documents
        #   @return [::Google::Cloud::DocumentAI::V1::GcsDocuments]
        #     The set of documents individually specified on Cloud Storage.
        class BatchDocumentsInputConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Config that controls the output of documents. All documents will be written
        # as a JSON file.
        # @!attribute [rw] gcs_output_config
        #   @return [::Google::Cloud::DocumentAI::V1::DocumentOutputConfig::GcsOutputConfig]
        #     Output config to write the results to Cloud Storage.
        class DocumentOutputConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # The configuration used when outputting documents.
          # @!attribute [rw] gcs_uri
          #   @return [::String]
          #     The Cloud Storage uri (a directory) of the output.
          # @!attribute [rw] field_mask
          #   @return [::Google::Protobuf::FieldMask]
          #     Specifies which fields to include in the output documents.
          #     Only supports top level document and pages field so it must be in the
          #     form of `{document_field_name}` or `pages.{page_field_name}`.
          # @!attribute [rw] sharding_config
          #   @return [::Google::Cloud::DocumentAI::V1::DocumentOutputConfig::GcsOutputConfig::ShardingConfig]
          #     Specifies the sharding config for the output document.
          class GcsOutputConfig
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # The sharding config for the output document.
            # @!attribute [rw] pages_per_shard
            #   @return [::Integer]
            #     The number of pages per shard.
            # @!attribute [rw] pages_overlap
            #   @return [::Integer]
            #     The number of overlapping pages between consecutive shards.
            class ShardingConfig
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end
          end
        end

        # Config for Document OCR.
        # @!attribute [rw] hints
        #   @return [::Google::Cloud::DocumentAI::V1::OcrConfig::Hints]
        #     Hints for the OCR model.
        # @!attribute [rw] enable_native_pdf_parsing
        #   @return [::Boolean]
        #     Enables special handling for PDFs with existing text information. Results
        #     in better text extraction quality in such PDF inputs.
        # @!attribute [rw] enable_image_quality_scores
        #   @return [::Boolean]
        #     Enables intelligent document quality scores after OCR. Can help with
        #     diagnosing why OCR responses are of poor quality for a given input.
        #     Adds additional latency comparable to regular OCR to the process call.
        # @!attribute [rw] advanced_ocr_options
        #   @return [::Array<::String>]
        #     A list of advanced OCR options to further fine-tune OCR behavior. Current
        #     valid values are:
        #
        #     - `legacy_layout`: a heuristics layout detection algorithm, which serves as
        #     an alternative to the current ML-based layout detection algorithm.
        #     Customers can choose the best suitable layout algorithm based on their
        #     situation.
        # @!attribute [rw] enable_symbol
        #   @return [::Boolean]
        #     Includes symbol level OCR information if set to true.
        # @!attribute [rw] compute_style_info
        #   @deprecated This field is deprecated and may be removed in the next major version update.
        #   @return [::Boolean]
        #     Turn on font identification model and return font style information.
        #     Deprecated, use {::Google::Cloud::DocumentAI::V1::OcrConfig::PremiumFeatures#compute_style_info PremiumFeatures.compute_style_info} instead.
        # @!attribute [rw] disable_character_boxes_detection
        #   @return [::Boolean]
        #     Turn off character box detector in OCR engine. Character box detection is
        #     enabled by default in OCR 2.0 (and later) processors.
        # @!attribute [rw] premium_features
        #   @return [::Google::Cloud::DocumentAI::V1::OcrConfig::PremiumFeatures]
        #     Configurations for premium OCR features.
        class OcrConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Hints for OCR Engine
          # @!attribute [rw] language_hints
          #   @return [::Array<::String>]
          #     List of BCP-47 language codes to use for OCR. In most cases, not
          #     specifying it yields the best results since it enables automatic language
          #     detection. For languages based on the Latin alphabet, setting hints is
          #     not needed. In rare cases, when the language of the text in the
          #     image is known, setting a hint will help get better results (although it
          #     will be a significant hindrance if the hint is wrong).
          class Hints
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Configurations for premium OCR features.
          # @!attribute [rw] enable_selection_mark_detection
          #   @return [::Boolean]
          #     Turn on selection mark detector in OCR engine. Only available in OCR 2.0
          #     (and later) processors.
          # @!attribute [rw] compute_style_info
          #   @return [::Boolean]
          #     Turn on font identification model and return font style information.
          # @!attribute [rw] enable_math_ocr
          #   @return [::Boolean]
          #     Turn on the model that can extract LaTeX math formulas.
          class PremiumFeatures
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end
      end
    end
  end
end
