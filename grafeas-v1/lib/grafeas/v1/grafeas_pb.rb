# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: grafeas/v1/grafeas.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf/field_mask_pb'
require 'google/protobuf/timestamp_pb'
require 'grafeas/v1/attestation_pb'
require 'grafeas/v1/build_pb'
require 'grafeas/v1/common_pb'
require 'grafeas/v1/compliance_pb'
require 'grafeas/v1/deployment_pb'
require 'grafeas/v1/discovery_pb'
require 'grafeas/v1/dsse_attestation_pb'
require 'grafeas/v1/image_pb'
require 'grafeas/v1/package_pb'
require 'grafeas/v1/sbom_pb'
require 'grafeas/v1/secret_pb'
require 'grafeas/v1/upgrade_pb'
require 'grafeas/v1/vex_pb'
require 'grafeas/v1/vulnerability_pb'


descriptor_data = "\n\x18grafeas/v1/grafeas.proto\x12\ngrafeas.v1\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a\x1bgoogle/protobuf/empty.proto\x1a google/protobuf/field_mask.proto\x1a\x1fgoogle/protobuf/timestamp.proto\x1a\x1cgrafeas/v1/attestation.proto\x1a\x16grafeas/v1/build.proto\x1a\x17grafeas/v1/common.proto\x1a\x1bgrafeas/v1/compliance.proto\x1a\x1bgrafeas/v1/deployment.proto\x1a\x1agrafeas/v1/discovery.proto\x1a!grafeas/v1/dsse_attestation.proto\x1a\x16grafeas/v1/image.proto\x1a\x18grafeas/v1/package.proto\x1a\x15grafeas/v1/sbom.proto\x1a\x17grafeas/v1/secret.proto\x1a\x18grafeas/v1/upgrade.proto\x1a\x14grafeas/v1/vex.proto\x1a\x1egrafeas/v1/vulnerability.proto\"\xea\x07\n\nOccurrence\x12\x0c\n\x04name\x18\x01 \x01(\t\x12\x14\n\x0cresource_uri\x18\x02 \x01(\t\x12\x11\n\tnote_name\x18\x03 \x01(\t\x12\"\n\x04kind\x18\x04 \x01(\x0e\x32\x14.grafeas.v1.NoteKind\x12\x13\n\x0bremediation\x18\x05 \x01(\t\x12/\n\x0b\x63reate_time\x18\x06 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12/\n\x0bupdate_time\x18\x07 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12<\n\rvulnerability\x18\x08 \x01(\x0b\x32#.grafeas.v1.VulnerabilityOccurrenceH\x00\x12,\n\x05\x62uild\x18\t \x01(\x0b\x32\x1b.grafeas.v1.BuildOccurrenceH\x00\x12,\n\x05image\x18\n \x01(\x0b\x32\x1b.grafeas.v1.ImageOccurrenceH\x00\x12\x30\n\x07package\x18\x0b \x01(\x0b\x32\x1d.grafeas.v1.PackageOccurrenceH\x00\x12\x36\n\ndeployment\x18\x0c \x01(\x0b\x32 .grafeas.v1.DeploymentOccurrenceH\x00\x12\x34\n\tdiscovery\x18\r \x01(\x0b\x32\x1f.grafeas.v1.DiscoveryOccurrenceH\x00\x12\x38\n\x0b\x61ttestation\x18\x0e \x01(\x0b\x32!.grafeas.v1.AttestationOccurrenceH\x00\x12\x30\n\x07upgrade\x18\x0f \x01(\x0b\x32\x1d.grafeas.v1.UpgradeOccurrenceH\x00\x12\x36\n\ncompliance\x18\x10 \x01(\x0b\x32 .grafeas.v1.ComplianceOccurrenceH\x00\x12\x41\n\x10\x64sse_attestation\x18\x11 \x01(\x0b\x32%.grafeas.v1.DSSEAttestationOccurrenceH\x00\x12=\n\x0esbom_reference\x18\x13 \x01(\x0b\x32#.grafeas.v1.SBOMReferenceOccurrenceH\x00\x12.\n\x06secret\x18\x14 \x01(\x0b\x32\x1c.grafeas.v1.SecretOccurrenceH\x00\x12&\n\x08\x65nvelope\x18\x12 \x01(\x0b\x32\x14.grafeas.v1.Envelope:G\xea\x41\x44\n\x15grafeas.io/Occurrence\x12+projects/{project}/occurrences/{occurrence}B\t\n\x07\x64\x65tails\"\xa1\x08\n\x04Note\x12\x0c\n\x04name\x18\x01 \x01(\t\x12\x19\n\x11short_description\x18\x02 \x01(\t\x12\x18\n\x10long_description\x18\x03 \x01(\t\x12\"\n\x04kind\x18\x04 \x01(\x0e\x32\x14.grafeas.v1.NoteKind\x12+\n\x0brelated_url\x18\x05 \x03(\x0b\x32\x16.grafeas.v1.RelatedUrl\x12\x33\n\x0f\x65xpiration_time\x18\x06 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12/\n\x0b\x63reate_time\x18\x07 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12/\n\x0bupdate_time\x18\x08 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12\x1a\n\x12related_note_names\x18\t \x03(\t\x12\x36\n\rvulnerability\x18\n \x01(\x0b\x32\x1d.grafeas.v1.VulnerabilityNoteH\x00\x12&\n\x05\x62uild\x18\x0b \x01(\x0b\x32\x15.grafeas.v1.BuildNoteH\x00\x12&\n\x05image\x18\x0c \x01(\x0b\x32\x15.grafeas.v1.ImageNoteH\x00\x12*\n\x07package\x18\r \x01(\x0b\x32\x17.grafeas.v1.PackageNoteH\x00\x12\x30\n\ndeployment\x18\x0e \x01(\x0b\x32\x1a.grafeas.v1.DeploymentNoteH\x00\x12.\n\tdiscovery\x18\x0f \x01(\x0b\x32\x19.grafeas.v1.DiscoveryNoteH\x00\x12\x32\n\x0b\x61ttestation\x18\x10 \x01(\x0b\x32\x1b.grafeas.v1.AttestationNoteH\x00\x12*\n\x07upgrade\x18\x11 \x01(\x0b\x32\x17.grafeas.v1.UpgradeNoteH\x00\x12\x30\n\ncompliance\x18\x12 \x01(\x0b\x32\x1a.grafeas.v1.ComplianceNoteH\x00\x12;\n\x10\x64sse_attestation\x18\x13 \x01(\x0b\x32\x1f.grafeas.v1.DSSEAttestationNoteH\x00\x12K\n\x18vulnerability_assessment\x18\x14 \x01(\x0b\x32\'.grafeas.v1.VulnerabilityAssessmentNoteH\x00\x12\x37\n\x0esbom_reference\x18\x15 \x01(\x0b\x32\x1d.grafeas.v1.SBOMReferenceNoteH\x00\x12(\n\x06secret\x18\x16 \x01(\x0b\x32\x16.grafeas.v1.SecretNoteH\x00:5\xea\x41\x32\n\x0fgrafeas.io/Note\x12\x1fprojects/{project}/notes/{note}B\x06\n\x04type\"C\n\x14GetOccurrenceRequest\x12+\n\x04name\x18\x01 \x01(\tB\x1d\xe0\x41\x02\xfa\x41\x17\n\x15grafeas.io/Occurrence\"{\n\x16ListOccurrencesRequest\x12*\n\x06parent\x18\x01 \x01(\tB\x1a\xe0\x41\x02\xfa\x41\x14\n\x12grafeas.io/Project\x12\x0e\n\x06\x66ilter\x18\x02 \x01(\t\x12\x11\n\tpage_size\x18\x03 \x01(\x05\x12\x12\n\npage_token\x18\x04 \x01(\t\"_\n\x17ListOccurrencesResponse\x12+\n\x0boccurrences\x18\x01 \x03(\x0b\x32\x16.grafeas.v1.Occurrence\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\"F\n\x17\x44\x65leteOccurrenceRequest\x12+\n\x04name\x18\x01 \x01(\tB\x1d\xe0\x41\x02\xfa\x41\x17\n\x15grafeas.io/Occurrence\"v\n\x17\x43reateOccurrenceRequest\x12*\n\x06parent\x18\x01 \x01(\tB\x1a\xe0\x41\x02\xfa\x41\x14\n\x12grafeas.io/Project\x12/\n\noccurrence\x18\x02 \x01(\x0b\x32\x16.grafeas.v1.OccurrenceB\x03\xe0\x41\x02\"\xa8\x01\n\x17UpdateOccurrenceRequest\x12+\n\x04name\x18\x01 \x01(\tB\x1d\xe0\x41\x02\xfa\x41\x17\n\x15grafeas.io/Occurrence\x12/\n\noccurrence\x18\x02 \x01(\x0b\x32\x16.grafeas.v1.OccurrenceB\x03\xe0\x41\x02\x12/\n\x0bupdate_mask\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.FieldMask\"7\n\x0eGetNoteRequest\x12%\n\x04name\x18\x01 \x01(\tB\x17\xe0\x41\x02\xfa\x41\x11\n\x0fgrafeas.io/Note\"G\n\x18GetOccurrenceNoteRequest\x12+\n\x04name\x18\x01 \x01(\tB\x1d\xe0\x41\x02\xfa\x41\x17\n\x15grafeas.io/Occurrence\"u\n\x10ListNotesRequest\x12*\n\x06parent\x18\x01 \x01(\tB\x1a\xe0\x41\x02\xfa\x41\x14\n\x12grafeas.io/Project\x12\x0e\n\x06\x66ilter\x18\x02 \x01(\t\x12\x11\n\tpage_size\x18\x03 \x01(\x05\x12\x12\n\npage_token\x18\x04 \x01(\t\"M\n\x11ListNotesResponse\x12\x1f\n\x05notes\x18\x01 \x03(\x0b\x32\x10.grafeas.v1.Note\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\":\n\x11\x44\x65leteNoteRequest\x12%\n\x04name\x18\x01 \x01(\tB\x17\xe0\x41\x02\xfa\x41\x11\n\x0fgrafeas.io/Note\"z\n\x11\x43reateNoteRequest\x12*\n\x06parent\x18\x01 \x01(\tB\x1a\xe0\x41\x02\xfa\x41\x14\n\x12grafeas.io/Project\x12\x14\n\x07note_id\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12#\n\x04note\x18\x03 \x01(\x0b\x32\x10.grafeas.v1.NoteB\x03\xe0\x41\x02\"\x90\x01\n\x11UpdateNoteRequest\x12%\n\x04name\x18\x01 \x01(\tB\x17\xe0\x41\x02\xfa\x41\x11\n\x0fgrafeas.io/Note\x12#\n\x04note\x18\x02 \x01(\x0b\x32\x10.grafeas.v1.NoteB\x03\xe0\x41\x02\x12/\n\x0bupdate_mask\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.FieldMask\"z\n\x1aListNoteOccurrencesRequest\x12%\n\x04name\x18\x01 \x01(\tB\x17\xe0\x41\x02\xfa\x41\x11\n\x0fgrafeas.io/Note\x12\x0e\n\x06\x66ilter\x18\x02 \x01(\t\x12\x11\n\tpage_size\x18\x03 \x01(\x05\x12\x12\n\npage_token\x18\x04 \x01(\t\"c\n\x1bListNoteOccurrencesResponse\x12+\n\x0boccurrences\x18\x01 \x03(\x0b\x32\x16.grafeas.v1.Occurrence\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\"\xc9\x01\n\x17\x42\x61tchCreateNotesRequest\x12*\n\x06parent\x18\x01 \x01(\tB\x1a\xe0\x41\x02\xfa\x41\x14\n\x12grafeas.io/Project\x12\x42\n\x05notes\x18\x02 \x03(\x0b\x32..grafeas.v1.BatchCreateNotesRequest.NotesEntryB\x03\xe0\x41\x02\x1a>\n\nNotesEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\x1f\n\x05value\x18\x02 \x01(\x0b\x32\x10.grafeas.v1.Note:\x02\x38\x01\";\n\x18\x42\x61tchCreateNotesResponse\x12\x1f\n\x05notes\x18\x01 \x03(\x0b\x32\x10.grafeas.v1.Note\"}\n\x1d\x42\x61tchCreateOccurrencesRequest\x12*\n\x06parent\x18\x01 \x01(\tB\x1a\xe0\x41\x02\xfa\x41\x14\n\x12grafeas.io/Project\x12\x30\n\x0boccurrences\x18\x02 \x03(\x0b\x32\x16.grafeas.v1.OccurrenceB\x03\xe0\x41\x02\"M\n\x1e\x42\x61tchCreateOccurrencesResponse\x12+\n\x0boccurrences\x18\x01 \x03(\x0b\x32\x16.grafeas.v1.Occurrence2\x8d\x16\n\x07Grafeas\x12\xb0\x01\n\rGetOccurrence\x12 .grafeas.v1.GetOccurrenceRequest\x1a\x16.grafeas.v1.Occurrence\"e\xda\x41\x04name\x82\xd3\xe4\x93\x02X\x12#/v1/{name=projects/*/occurrences/*}Z1\x12//v1/{name=projects/*/locations/*/occurrences/*}\x12\xca\x01\n\x0fListOccurrences\x12\".grafeas.v1.ListOccurrencesRequest\x1a#.grafeas.v1.ListOccurrencesResponse\"n\xda\x41\rparent,filter\x82\xd3\xe4\x93\x02X\x12#/v1/{parent=projects/*}/occurrencesZ1\x12//v1/{parent=projects/*/locations/*}/occurrences\x12\xb6\x01\n\x10\x44\x65leteOccurrence\x12#.grafeas.v1.DeleteOccurrenceRequest\x1a\x16.google.protobuf.Empty\"e\xda\x41\x04name\x82\xd3\xe4\x93\x02X*#/v1/{name=projects/*/occurrences/*}Z1*//v1/{name=projects/*/locations/*/occurrences/*}\x12\xdc\x01\n\x10\x43reateOccurrence\x12#.grafeas.v1.CreateOccurrenceRequest\x1a\x16.grafeas.v1.Occurrence\"\x8a\x01\xda\x41\x11parent,occurrence\x82\xd3\xe4\x93\x02p\"#/v1/{parent=projects/*}/occurrences:\noccurrenceZ=\"//v1/{parent=projects/*/locations/*}/occurrences:\noccurrence\x12\x83\x02\n\x16\x42\x61tchCreateOccurrences\x12).grafeas.v1.BatchCreateOccurrencesRequest\x1a*.grafeas.v1.BatchCreateOccurrencesResponse\"\x91\x01\xda\x41\x12parent,occurrences\x82\xd3\xe4\x93\x02v\"//v1/{parent=projects/*}/occurrences:batchCreate:\x01*Z@\";/v1/{parent=projects/*/locations/*}/occurrences:batchCreate:\x01*\x12\xe6\x01\n\x10UpdateOccurrence\x12#.grafeas.v1.UpdateOccurrenceRequest\x1a\x16.grafeas.v1.Occurrence\"\x94\x01\xda\x41\x1bname,occurrence,update_mask\x82\xd3\xe4\x93\x02p2#/v1/{name=projects/*/occurrences/*}:\noccurrenceZ=2//v1/{name=projects/*/locations/*/occurrences/*}:\noccurrence\x12\xbe\x01\n\x11GetOccurrenceNote\x12$.grafeas.v1.GetOccurrenceNoteRequest\x1a\x10.grafeas.v1.Note\"q\xda\x41\x04name\x82\xd3\xe4\x93\x02\x64\x12)/v1/{name=projects/*/occurrences/*}/notesZ7\x12\x35/v1/{name=projects/*/locations/*/occurrences/*}/notes\x12\x92\x01\n\x07GetNote\x12\x1a.grafeas.v1.GetNoteRequest\x1a\x10.grafeas.v1.Note\"Y\xda\x41\x04name\x82\xd3\xe4\x93\x02L\x12\x1d/v1/{name=projects/*/notes/*}Z+\x12)/v1/{name=projects/*/locations/*/notes/*}\x12\xac\x01\n\tListNotes\x12\x1c.grafeas.v1.ListNotesRequest\x1a\x1d.grafeas.v1.ListNotesResponse\"b\xda\x41\rparent,filter\x82\xd3\xe4\x93\x02L\x12\x1d/v1/{parent=projects/*}/notesZ+\x12)/v1/{parent=projects/*/locations/*}/notes\x12\x9e\x01\n\nDeleteNote\x12\x1d.grafeas.v1.DeleteNoteRequest\x1a\x16.google.protobuf.Empty\"Y\xda\x41\x04name\x82\xd3\xe4\x93\x02L*\x1d/v1/{name=projects/*/notes/*}Z+*)/v1/{name=projects/*/locations/*/notes/*}\x12\xb3\x01\n\nCreateNote\x12\x1d.grafeas.v1.CreateNoteRequest\x1a\x10.grafeas.v1.Note\"t\xda\x41\x13parent,note_id,note\x82\xd3\xe4\x93\x02X\"\x1d/v1/{parent=projects/*}/notes:\x04noteZ1\")/v1/{parent=projects/*/locations/*}/notes:\x04note\x12\xde\x01\n\x10\x42\x61tchCreateNotes\x12#.grafeas.v1.BatchCreateNotesRequest\x1a$.grafeas.v1.BatchCreateNotesResponse\"\x7f\xda\x41\x0cparent,notes\x82\xd3\xe4\x93\x02j\")/v1/{parent=projects/*}/notes:batchCreate:\x01*Z:\"5/v1/{parent=projects/*/locations/*}/notes:batchCreate:\x01*\x12\xb5\x01\n\nUpdateNote\x12\x1d.grafeas.v1.UpdateNoteRequest\x1a\x10.grafeas.v1.Note\"v\xda\x41\x15name,note,update_mask\x82\xd3\xe4\x93\x02X2\x1d/v1/{name=projects/*/notes/*}:\x04noteZ12)/v1/{name=projects/*/locations/*/notes/*}:\x04note\x12\xe0\x01\n\x13ListNoteOccurrences\x12&.grafeas.v1.ListNoteOccurrencesRequest\x1a\'.grafeas.v1.ListNoteOccurrencesResponse\"x\xda\x41\x0bname,filter\x82\xd3\xe4\x93\x02\x64\x12)/v1/{name=projects/*/notes/*}/occurrencesZ7\x12\x35/v1/{name=projects/*/locations/*/notes/*}/occurrences\x1a#\xca\x41 containeranalysis.googleapis.comB|\n\rio.grafeas.v1P\x01Z8google.golang.org/genproto/googleapis/grafeas/v1;grafeas\xa2\x02\x03GRA\xea\x41(\n\x12grafeas.io/Project\x12\x12projects/{project}b\x06proto3"

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
    ["grafeas.v1.VulnerabilityOccurrence", "grafeas/v1/vulnerability.proto"],
    ["grafeas.v1.BuildOccurrence", "grafeas/v1/build.proto"],
    ["grafeas.v1.ImageOccurrence", "grafeas/v1/image.proto"],
    ["grafeas.v1.PackageOccurrence", "grafeas/v1/package.proto"],
    ["grafeas.v1.DeploymentOccurrence", "grafeas/v1/deployment.proto"],
    ["grafeas.v1.DiscoveryOccurrence", "grafeas/v1/discovery.proto"],
    ["grafeas.v1.AttestationOccurrence", "grafeas/v1/attestation.proto"],
    ["grafeas.v1.UpgradeOccurrence", "grafeas/v1/upgrade.proto"],
    ["grafeas.v1.ComplianceOccurrence", "grafeas/v1/compliance.proto"],
    ["grafeas.v1.DSSEAttestationOccurrence", "grafeas/v1/dsse_attestation.proto"],
    ["grafeas.v1.SBOMReferenceOccurrence", "grafeas/v1/sbom.proto"],
    ["grafeas.v1.SecretOccurrence", "grafeas/v1/secret.proto"],
    ["grafeas.v1.Envelope", "grafeas/v1/common.proto"],
    ["grafeas.v1.VulnerabilityAssessmentNote", "grafeas/v1/vex.proto"],
    ["google.protobuf.FieldMask", "google/protobuf/field_mask.proto"],
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

module Grafeas
  module V1
    Occurrence = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("grafeas.v1.Occurrence").msgclass
    Note = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("grafeas.v1.Note").msgclass
    GetOccurrenceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("grafeas.v1.GetOccurrenceRequest").msgclass
    ListOccurrencesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("grafeas.v1.ListOccurrencesRequest").msgclass
    ListOccurrencesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("grafeas.v1.ListOccurrencesResponse").msgclass
    DeleteOccurrenceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("grafeas.v1.DeleteOccurrenceRequest").msgclass
    CreateOccurrenceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("grafeas.v1.CreateOccurrenceRequest").msgclass
    UpdateOccurrenceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("grafeas.v1.UpdateOccurrenceRequest").msgclass
    GetNoteRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("grafeas.v1.GetNoteRequest").msgclass
    GetOccurrenceNoteRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("grafeas.v1.GetOccurrenceNoteRequest").msgclass
    ListNotesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("grafeas.v1.ListNotesRequest").msgclass
    ListNotesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("grafeas.v1.ListNotesResponse").msgclass
    DeleteNoteRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("grafeas.v1.DeleteNoteRequest").msgclass
    CreateNoteRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("grafeas.v1.CreateNoteRequest").msgclass
    UpdateNoteRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("grafeas.v1.UpdateNoteRequest").msgclass
    ListNoteOccurrencesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("grafeas.v1.ListNoteOccurrencesRequest").msgclass
    ListNoteOccurrencesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("grafeas.v1.ListNoteOccurrencesResponse").msgclass
    BatchCreateNotesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("grafeas.v1.BatchCreateNotesRequest").msgclass
    BatchCreateNotesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("grafeas.v1.BatchCreateNotesResponse").msgclass
    BatchCreateOccurrencesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("grafeas.v1.BatchCreateOccurrencesRequest").msgclass
    BatchCreateOccurrencesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("grafeas.v1.BatchCreateOccurrencesResponse").msgclass
  end
end
