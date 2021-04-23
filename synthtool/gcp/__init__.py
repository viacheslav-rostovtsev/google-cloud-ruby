import tempfile
import os
from pathlib import Path

class GAPICMicrogenerator:
  def __init__(self):
    pass

  def typescript_library(self, service, version, proto_path, generator_args=None, **kwargs):
    if generator_args is None:
      generator_args = {}
    for key, value in generator_args.items():
      if key == "grpc-service-config":
        continue
      key = key.replace('-', '_')
      print(f"set {key} \"{value}\"|{proto_path}:%nodejs_gapic_library")

  def ruby_library(self, service, version, proto_path=None, generator_args=None, **kwargs):
    known_map_params = {
      "ruby-cloud-common-services",
      "ruby-cloud-path-override",
      "ruby-cloud-namespace-override",
      "ruby-cloud-service-override",
      "ruby-cloud-extra-dependencies",
    }

    known_array_params = {
      "ruby-cloud-default-oauth-scopes" 
    }

    known_string_and_bool_params = {
      "ruby-cloud-free-tier",
      "ruby-cloud-yard-strict",
      "ruby-cloud-generic-endpoint",

      "ruby-cloud-gem-name",
      "ruby-cloud-gem-namespace",
      "ruby-cloud-title",
      "ruby-cloud-description",
      "ruby-cloud-summary",
      "ruby-cloud-homepage",
      "ruby-cloud-env-prefix",

      "ruby-cloud-wrapper-of",
      "ruby-cloud-migration-version",
      "ruby-cloud-product-url",
      "ruby-cloud-issues-url",

      "ruby-cloud-api-id",
      "ruby-cloud-api-shortname",
      "ruby-cloud-factory-method-suffix",
      "ruby-cloud-default-service-host"
    }

    if generator_args is None:
      generator_args = {}
    if proto_path is None:
      proto_path = f"google/cloud/{service}/{version}"

    print(f"remove gapic_yaml|{proto_path}:%ruby_gapic_library")
    print(f"remove package|{proto_path}:%ruby_gapic_library")
    print(f"remove service_yaml|{proto_path}:%ruby_gapic_library")
    print(f"remove grpc_service_config|{proto_path}:%ruby_gapic_library")
    print(f"remove extra_protoc_parameters|{proto_path}:%ruby_gapic_library")

    for key, value in generator_args.items():
      print(f"remove {key}|{proto_path}:%ruby_gapic_library")
      print(f"remove {key.replace('-', '_')}|{proto_path}:%ruby_gapic_library")

    extra_protoc_parameters = []

    for key, value in generator_args.items():
      value = value.replace(' ', '\\ ')
      if key == "ruby-cloud-grpc-service-config":
        key = "grpc_service_config"
        value = value.rpartition('/')[-1]
        key = key.replace('-', '_')
        print(f"set {key} \"{value}\"|{proto_path}:%ruby_gapic_library")
      elif key == "ruby-cloud-title" or key == "ruby-cloud-description":
        key = key.replace("-", "_")
        print(f"set {key} \"{value}\"|{proto_path}:%ruby_gapic_library")
      elif key in known_map_params or key in known_string_and_bool_params: 
        extra_protoc_parameters.append(f'"{key}={value}"')
      elif key in known_array_params:
        new_value = value.replace("=", ";")
        extra_protoc_parameters.append(f'"{key}={new_value}"')
      else:
        raise(Exception(f"unrecognised key {key}"))
    #extra_protoc_parameters.sort()
    protoc_params_val = ",".join(extra_protoc_parameters)

    print(f"set extra_protoc_parameters [{protoc_params_val}]|{proto_path}:%ruby_gapic_library")

    dir = tempfile.mkdtemp()
    p =  Path(dir)
    os.makedirs(p / "lib/grafeas")
    return p

class GAPICBazel:
  def __init__(self):
    pass

class CommonTemplates:
  def __init__(self):
    pass

  def node_library(self, **kwargs):
    pass

  def ruby_library(self, **kwargs):
    pass
