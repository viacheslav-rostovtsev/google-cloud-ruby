# Changelog

### 1.1.0 (2025-05-12)

#### Features

* Updated core dependencies including gapic-common 
* Updated required Ruby version to 3.1 

### 1.0.1 (2025-04-29)

#### Bug Fixes

* Fixed several issues with validating credential configs 

### 1.0.0 (2025-02-07)

### ⚠ BREAKING CHANGES

* Fixed incorrect pagination on certain REST RPC methods ([#28823](https://github.com/googleapis/google-cloud-ruby/issues/28823))

#### Features

* Bump version to 1.0.0 ([#28941](https://github.com/googleapis/google-cloud-ruby/issues/28941)) 
#### Bug Fixes

* Fixed incorrect pagination on certain REST RPC methods ([#28823](https://github.com/googleapis/google-cloud-ruby/issues/28823)) 

### 0.10.0 (2025-01-28)

#### Features

* Update Ruby version requirement to 3.0 
#### Documentation

* Clarify behavior of protobuf message fields that are part of mutually-exclusive sets 
* Include note about validating externally-provided credentials 

### 0.9.0 (2024-12-10)

#### Features

* Provide opt-in debug logging 

### 0.8.1 (2024-08-30)

#### Documentation

* Add field `experimental_features` to message `PythonSettings` 

### 0.8.0 (2024-02-26)

#### Features

* Updated minimum Ruby version to 2.7 ([#24864](https://github.com/googleapis/google-cloud-ruby/issues/24864)) 

### 0.7.2 (2024-02-01)

#### Bug Fixes

* Eliminated a harmless but annoying warning in the protobuf class files 

### 0.7.1 (2024-01-12)

#### Bug Fixes

* Ensure endpoints are correct for mixin clients ([#24032](https://github.com/googleapis/google-cloud-ruby/issues/24032)) 

### 0.7.0 (2024-01-11)

#### Features

* Support for universe_domain ([#23773](https://github.com/googleapis/google-cloud-ruby/issues/23773)) 

### 0.6.0 (2023-09-12)

#### Features

* Support for channel pool configuration ([#22917](https://github.com/googleapis/google-cloud-ruby/issues/22917)) 

### 0.5.1 (2023-08-17)

#### Bug Fixes

* Restore the locations of proto message classes that were moved in 0.5.0 ([#22793](https://github.com/googleapis/google-cloud-ruby/issues/22793)) 

### 0.5.0 (2023-08-15)

#### Features

* add new Instance state values 
* add NFSShare resource and methods 
* add OsImage resource and methods 
* add ProvisioningConfig resource and methods 
* add RPC EvictLune 
* add RPCs Enable/Disable InteractiveSerialConsole 
* add RPCs Rename/Evict Volume 
* add SSHKey resource and methods 
* add VolumeSnapshot resource and methods 
* several new resources and RPCs ([#22751](https://github.com/googleapis/google-cloud-ruby/issues/22751)) 
* include IAMPolicy mixin ([#22765](https://github.com/googleapis/google-cloud-ruby/issues/22765)) 

### 0.4.1 (2023-06-06)

#### Bug Fixes

* Don't use self-signed JWT credentials if the global configuration endpoint has been modified 

### 0.4.0 (2023-05-31)

#### Features

* Uses binary protobuf definitions for better forward compatibility ([#21672](https://github.com/googleapis/google-cloud-ruby/issues/21672)) 

### 0.3.0 (2023-03-08)

#### Features

* Support REST transport ([#20624](https://github.com/googleapis/google-cloud-ruby/issues/20624)) 

### 0.2.0 (2022-07-01)

#### Features

* Updated minimum Ruby version to 2.6 ([#18443](https://github.com/googleapis/google-cloud-ruby/issues/18443)) 
#### Bug Fixes

* Fixed a crash when making certain long-running-operations status calls ([#18441](https://github.com/googleapis/google-cloud-ruby/issues/18441)) 

### 0.1.0 (2022-06-22)

#### Features

* Initial generation of google-cloud-bare_metal_solution-v2
