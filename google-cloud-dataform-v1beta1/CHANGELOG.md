# Changelog

### 0.13.0 (2025-05-16)

#### Features

* Support builtin assertion name prefix for code compilations 
* Support Colab runtime template in the notebook runtime options 
* Support for disabling automatic creation of workflow invocations 
* Support workflow actions to execute a data preparation node 

### 0.12.0 (2025-05-12)

#### Features

* Updated core dependencies including gapic-common 
* Updated required Ruby version to 3.1 

### 0.11.1 (2025-04-29)

#### Bug Fixes

* Fixed several issues with validating credential configs 

### 0.11.0 (2025-03-04)

#### Features

* Numerous additions to resource fields 
* Support for the get_config and update_config RPCs 
* Support for the search_files RPC 

### 0.10.0 (2025-02-07)

### ⚠ BREAKING CHANGES

* Fixed incorrect pagination on certain REST RPC methods ([#28824](https://github.com/googleapis/google-cloud-ruby/issues/28824))

#### Bug Fixes

* Fixed incorrect pagination on certain REST RPC methods ([#28824](https://github.com/googleapis/google-cloud-ruby/issues/28824)) 

### 0.9.0 (2025-01-28)

#### Features

* Update Ruby version requirement to 3.0 
#### Documentation

* Clarify behavior of protobuf message fields that are part of mutually-exclusive sets 
* Include note about validating externally-provided credentials 

### 0.8.0 (2024-12-10)

#### Features

* Provide opt-in debug logging 

### 0.7.1 (2024-08-30)

#### Documentation

* Add field `experimental_features` to message `PythonSettings` 

### 0.7.0 (2024-02-26)

#### Features

* Updated minimum Ruby version to 2.7 ([#24868](https://github.com/googleapis/google-cloud-ruby/issues/24868)) 

### 0.6.2 (2024-02-01)

#### Bug Fixes

* Eliminated a harmless but annoying warning in the protobuf class files 

### 0.6.1 (2024-01-12)

#### Bug Fixes

* Ensure endpoints are correct for mixin clients ([#24032](https://github.com/googleapis/google-cloud-ruby/issues/24032)) 

### 0.6.0 (2024-01-11)

#### Features

* Support for universe_domain ([#23777](https://github.com/googleapis/google-cloud-ruby/issues/23777)) 

### 0.5.0 (2023-11-02)

#### Features

* Support ReleaseConfigs ([#23477](https://github.com/googleapis/google-cloud-ruby/issues/23477)) 
* Support Repository APIs ([#23477](https://github.com/googleapis/google-cloud-ruby/issues/23477)) 

### 0.4.0 (2023-09-12)

#### Features

* Support for channel pool configuration ([#22919](https://github.com/googleapis/google-cloud-ruby/issues/22919)) 

### 0.3.0 (2023-06-06)

#### Features

* Uses binary protobuf definitions for better forward compatibility ([#21673](https://github.com/googleapis/google-cloud-ruby/issues/21673)) 
#### Bug Fixes

* Don't use self-signed JWT credentials if the global configuration endpoint has been modified 

### 0.2.0 (2023-03-08)

#### Features

* Support REST transport ([#20625](https://github.com/googleapis/google-cloud-ruby/issues/20625)) 

### 0.1.0 (2022-11-01)

#### Features

* Initial generation of google-cloud-dataform-v1beta1 ([#19345](https://github.com/googleapis/google-cloud-ruby/issues/19345)) 

## Release History
