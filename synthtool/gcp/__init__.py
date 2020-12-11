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
    extra_protoc_override_params = {
      "ruby-cloud-path-override": ":overrides.:path",
      "ruby-cloud-namespace-override": ":overrides.:namespace",
      "ruby-cloud-service-override": ":overrides.:service",
      "ruby-cloud-extra-dependencies": ":gem.:extra_dependencies",
      "ruby-cloud-common-services": ":common_services",
    }
    
    extra_protoc_params_dict = {
      "ruby-cloud-gem-name": ":gem.:name",
      "ruby-cloud-gem-namespace": ":gem.:namespace",
      "ruby-cloud-title": ":gem.:title",
      "ruby-cloud-description": ":gem.:description",
      "ruby-cloud-summary": ":gem.:summary",
      "ruby-cloud-homepage": ":gem.:homepage",
      "ruby-cloud-env-prefix": ":gem.:env_prefix",

      "ruby-cloud-wrapper-of": ":gem.:version_dependencies", # for wrappers
      "ruby-cloud-migration-version": ":gem.:migration_version", # for wrappers

      "ruby-cloud-api-id": ":gem.:api_id",
      "ruby-cloud-api-shortname": ":gem.:api_shortname",
      "ruby-cloud-factory-method-suffix": ":gem.:factory_method_suffix",

      "ruby-cloud-product-url": ":gem.:product-documentation-url",
      "ruby-cloud-issues-url": ":gem.:issue_tracker_url",

      "ruby-cloud-free-tier": ":gem.:free_tier",
      "ruby-cloud-yard-strict": ":gem.:yard_strict",
      "ruby-cloud-generic-endpoint": ":gem.:generic_endpoint",
    }

    if generator_args is None:
      generator_args = {}
    if proto_path is None:
      proto_path = f"google/cloud/{service}/{version}"

    print(f"remove gapic_yaml|{proto_path}:%ruby_gapic_library")
    print(f"remove package|{proto_path}:%ruby_gapic_library")
    print(f"remove service_yaml|{proto_path}:%ruby_gapic_library")

    extra_protoc_parameters = []

    for key, value in generator_args.items():
      value = value.replace(' ', '\\ ')
      if key == "ruby-cloud-grpc-service-config":
        key = "grpc_service_config"
        value = ":" + value.rpartition('/')[-1]
        key = key.replace('-', '_')
        print(f"set {key} \"{value}\"|{proto_path}:%ruby_gapic_library")
      elif key in extra_protoc_params_dict:
        key = extra_protoc_params_dict[key]
        extra_protoc_parameters.append(f'"{key}={value}"')
      elif key in extra_protoc_override_params:
        key_base = extra_protoc_override_params[key]
        inner_key_value_strings = value.split(";")
        for ikvs in inner_key_value_strings:
          pair = ikvs.split("=", 1)
          ik = pair[0]
          iv = pair[1]
          protoc_key = f"{key_base}.{ik}"
          protoc_value = iv
          extra_protoc_parameters.append(f'"{protoc_key}={protoc_value}"')
      else:
        raise(Exception(f"unrecognised key {key}"))
    protoc_params_val = ",".join(extra_protoc_parameters)
    print(f"set extra_protoc_parameters [{protoc_params_val}]|{proto_path}:%ruby_gapic_library")
    for params_key in extra_protoc_params_dict.keys():
      pass
      print(f"remove {params_key}|{proto_path}:%ruby_gapic_library")
      print(f"remove {params_key.replace('-', '_')}|{proto_path}:%ruby_gapic_library")
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
