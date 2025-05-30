# Changelog

### 1.3.0 (2025-05-16)

#### Features

* Support for backup config details 
* Support for retention policy details 
* Support for specifying backup and restore channel names 

### 1.2.0 (2025-05-12)

#### Features

* Updated core dependencies including gapic-common 
* Updated required Ruby version to 3.1 

### 1.1.1 (2025-04-29)

#### Bug Fixes

* Fixed several issues with validating credential configs 

### 1.1.0 (2025-04-25)

#### Features

* BackupPlan reports its last successful completion time 
* Support RPCs related to listing and reading backup and restore plan bindings 
* Support RPCs related to managing backup and restore channels ([#29525](https://github.com/googleapis/google-cloud-ruby/issues/29525)) 

### 1.0.0 (2025-02-07)

### ⚠ BREAKING CHANGES

* Fixed incorrect pagination on certain REST RPC methods ([#28824](https://github.com/googleapis/google-cloud-ruby/issues/28824))

#### Features

* Bump version to 1.0.0 ([#28941](https://github.com/googleapis/google-cloud-ruby/issues/28941)) 
#### Bug Fixes

* Fixed incorrect pagination on certain REST RPC methods ([#28824](https://github.com/googleapis/google-cloud-ruby/issues/28824)) 

### 0.12.0 (2025-01-28)

#### Features

* Update Ruby version requirement to 3.0 
#### Documentation

* Clarify behavior of protobuf message fields that are part of mutually-exclusive sets 
* Include note about validating externally-provided credentials 

### 0.11.0 (2024-12-10)

#### Features

* Provide opt-in debug logging 

### 0.10.1 (2024-08-30)

#### Documentation

* Add field `experimental_features` to message `PythonSettings` 

### 0.10.0 (2024-05-23)

#### Features

* Support for binding volumes by scope to a restore policy 
* Support for custom restore ordering 
* Support for fine-grained restore 
* Support for merge based restore modes 
* Support for permissive backup mode 

### 0.9.0 (2024-04-19)

#### Features

* Support smart scheduling and backup indexing ([#25437](https://github.com/googleapis/google-cloud-ruby/issues/25437)) 
#### Documentation

* Update retention policy and cron schedule comment to include new constraints from smart scheduling 

### 0.8.0 (2024-02-26)

#### Features

* Updated minimum Ruby version to 2.7 ([#24871](https://github.com/googleapis/google-cloud-ruby/issues/24871)) 

### 0.7.2 (2024-02-01)

#### Bug Fixes

* Eliminated a harmless but annoying warning in the protobuf class files 

### 0.7.1 (2024-01-12)

#### Bug Fixes

* Ensure endpoints are correct for mixin clients ([#24032](https://github.com/googleapis/google-cloud-ruby/issues/24032)) 

### 0.7.0 (2024-01-11)

#### Features

* Support for universe_domain ([#23779](https://github.com/googleapis/google-cloud-ruby/issues/23779)) 

### 0.6.0 (2023-09-12)

#### Features

* Support for channel pool configuration ([#22920](https://github.com/googleapis/google-cloud-ruby/issues/22920)) 

### 0.5.1 (2023-08-03)

#### Documentation

* Improve documentation format ([#22683](https://github.com/googleapis/google-cloud-ruby/issues/22683)) 

### 0.5.0 (2023-06-27)

#### Features

* Support state option for backup restore ([#22455](https://github.com/googleapis/google-cloud-ruby/issues/22455)) 

### 0.4.0 (2023-06-06)

#### Features

* Uses binary protobuf definitions for better forward compatibility ([#21675](https://github.com/googleapis/google-cloud-ruby/issues/21675)) 
#### Bug Fixes

* Don't use self-signed JWT credentials if the global configuration endpoint has been modified 

### 0.3.0 (2023-03-08)

#### Features

* Support REST transport ([#20626](https://github.com/googleapis/google-cloud-ruby/issues/20626)) 

### 0.2.0 (2022-07-02)

#### Features

* Updated minimum Ruby version to 2.6 ([#18443](https://github.com/googleapis/google-cloud-ruby/issues/18443)) 
#### Bug Fixes

* Fixed a crash when making certain long-running-operations status calls ([#18441](https://github.com/googleapis/google-cloud-ruby/issues/18441)) 

### 0.1.0 (2022-06-17)

#### Features

* Initial generation of google-cloud-gke_backup-v1
