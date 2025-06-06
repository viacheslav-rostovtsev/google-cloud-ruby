# Changelog

### 0.10.0 (2025-05-12)

#### Features

* Updated core dependencies including gapic-common 
* Updated required Ruby version to 3.1 

### 0.9.1 (2025-04-29)

#### Bug Fixes

* Fixed several issues with validating credential configs 

### 0.9.0 (2025-01-29)

#### Features

* Update Ruby version requirement to 3.0 
#### Documentation

* Include note about validating externally-provided credentials 

### 0.8.0 (2024-12-10)

### ⚠ BREAKING CHANGES

* Dropped the nonfunctional gRPC client ([#27598](https://github.com/googleapis/google-cloud-ruby/issues/27598))

#### Features

* Provide opt-in debug logging 
#### Bug Fixes

* Dropped the nonfunctional gRPC client ([#27598](https://github.com/googleapis/google-cloud-ruby/issues/27598)) 

### 0.7.1 (2024-08-30)

#### Documentation

* Add field `experimental_features` to message `PythonSettings` 

### 0.7.0 (2024-08-26)

### ⚠ BREAKING CHANGES

* removed the nonfunctional GatewayService and replaced it with the GatewayControl service ([#26978](https://github.com/googleapis/google-cloud-ruby/issues/26978))

#### Features

* removed the nonfunctional GatewayService and replaced it with the GatewayControl service ([#26978](https://github.com/googleapis/google-cloud-ruby/issues/26978)) 

### 0.6.0 (2024-02-26)

#### Features

* Updated minimum Ruby version to 2.7 ([#24871](https://github.com/googleapis/google-cloud-ruby/issues/24871)) 

### 0.5.2 (2024-02-01)

#### Bug Fixes

* Eliminated a harmless but annoying warning in the protobuf class files 

### 0.5.1 (2024-01-12)

#### Bug Fixes

* Ensure endpoints are correct for mixin clients ([#24032](https://github.com/googleapis/google-cloud-ruby/issues/24032)) 

### 0.5.0 (2024-01-11)

#### Features

* Support for universe_domain ([#23780](https://github.com/googleapis/google-cloud-ruby/issues/23780)) 

### 0.4.0 (2023-09-12)

#### Features

* Support for channel pool configuration ([#22920](https://github.com/googleapis/google-cloud-ruby/issues/22920)) 

### 0.3.0 (2023-06-06)

#### Features

* Uses binary protobuf definitions for better forward compatibility ([#21675](https://github.com/googleapis/google-cloud-ruby/issues/21675)) 
#### Bug Fixes

* Don't use self-signed JWT credentials if the global configuration endpoint has been modified 

### 0.2.0 (2022-07-02)

#### Features

* Updated minimum Ruby version to 2.6 ([#18443](https://github.com/googleapis/google-cloud-ruby/issues/18443)) 

### 0.1.5 / 2022-01-11

#### Documentation

* Fix titles of documentation pages
* Remove some broken images and fix outdated content in authentication documentation

### 0.1.4 / 2021-11-08

#### Documentation

* Added simple code snippets to RPC method documentation

### 0.1.3 / 2021-10-21

#### Documentation

* Some documentation formatting fixes

### 0.1.2 / 2021-08-11

#### Bug Fixes

* Honor client-level timeout configuration

### 0.1.1 / 2021-07-12

#### Documentation

* Clarify some language around authentication configuration

### 0.1.0 / 2021-06-21

#### Features

* Initial generation of google-cloud-gke_connect-gateway-v1beta1
