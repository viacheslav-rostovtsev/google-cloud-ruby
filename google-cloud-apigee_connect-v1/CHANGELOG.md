# Changelog

### 1.3.0 (2025-05-12)

#### Features

* Updated core dependencies including gapic-common 
* Updated required Ruby version to 3.1 

### 1.2.1 (2025-04-29)

#### Bug Fixes

* Fixed several issues with validating credential configs 

### 1.2.0 (2025-01-28)

#### Features

* Update Ruby version requirement to 3.0 
#### Documentation

* Clarify behavior of protobuf message fields that are part of mutually-exclusive sets 
* Include note about validating externally-provided credentials 

### 1.1.0 (2024-12-10)

#### Features

* Provide opt-in debug logging 

### 1.0.1 (2024-08-30)

#### Documentation

* Add field `experimental_features` to message `PythonSettings` ([#27002](https://github.com/googleapis/google-cloud-ruby/issues/27002)) 

### 1.0.0 (2024-07-10)

#### Features

* Bump version to 1.0.0 

### 0.7.0 (2024-02-26)

#### Features

* Updated minimum Ruby version to 2.7 ([#24863](https://github.com/googleapis/google-cloud-ruby/issues/24863)) 

### 0.6.2 (2024-02-01)

#### Bug Fixes

* Eliminated a harmless but annoying warning in the protobuf class files 

### 0.6.1 (2024-01-12)

#### Bug Fixes

* Ensure endpoints are correct for mixin clients ([#24032](https://github.com/googleapis/google-cloud-ruby/issues/24032)) 

### 0.6.0 (2024-01-11)

#### Features

* Support for universe_domain ([#23773](https://github.com/googleapis/google-cloud-ruby/issues/23773)) 

### 0.5.0 (2023-09-12)

#### Features

* Support for channel pool configuration ([#22916](https://github.com/googleapis/google-cloud-ruby/issues/22916)) 

### 0.4.0 (2023-06-06)

#### Features

* Uses binary protobuf definitions for better forward compatibility ([#21671](https://github.com/googleapis/google-cloud-ruby/issues/21671)) 
#### Bug Fixes

* Don't use self-signed JWT credentials if the global configuration endpoint has been modified 

### 0.3.0 (2023-03-08)

#### Features

* Support REST transport ([#20624](https://github.com/googleapis/google-cloud-ruby/issues/20624)) 

### 0.2.0 (2022-07-01)

#### Features

* Updated minimum Ruby version to 2.6 ([#18443](https://github.com/googleapis/google-cloud-ruby/issues/18443)) 

### 0.1.4 / 2022-01-11

#### Documentation

* Fix titles of documentation pages
* Remove some broken images and fix outdated content in authentication documentation

### 0.1.3 / 2021-11-08

#### Documentation

* Added simple code snippets to RPC method documentation

### 0.1.2 / 2021-08-11

#### Bug Fixes

* Honor client-level timeout configuration

### 0.1.1 / 2021-07-12

#### Documentation

* Clarified some language around authentication configuration

### 0.1.0 / 2021-06-21

#### Features

* Initial generation of google-cloud-apigee_connect-v1
