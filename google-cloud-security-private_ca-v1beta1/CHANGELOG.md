# Release History

### 0.13.0 (2025-05-12)

#### Features

* Updated core dependencies including gapic-common 
* Updated required Ruby version to 3.1 

### 0.12.1 (2025-04-29)

#### Bug Fixes

* Fixed several issues with validating credential configs 

### 0.12.0 (2025-02-07)

### ⚠ BREAKING CHANGES

* Fixed incorrect pagination on certain REST RPC methods ([#28826](https://github.com/googleapis/google-cloud-ruby/issues/28826))

#### Bug Fixes

* Fixed incorrect pagination on certain REST RPC methods ([#28826](https://github.com/googleapis/google-cloud-ruby/issues/28826)) 

### 0.11.0 (2025-01-28)

#### Features

* Update Ruby version requirement to 3.0 
#### Documentation

* Clarify behavior of protobuf message fields that are part of mutually-exclusive sets 
* Include note about validating externally-provided credentials 

### 0.10.0 (2024-12-10)

#### Features

* Provide opt-in debug logging 

### 0.9.1 (2024-08-30)

#### Documentation

* Add field `experimental_features` to message `PythonSettings` ([#27012](https://github.com/googleapis/google-cloud-ruby/issues/27012)) 

### 0.9.0 (2024-02-26)

#### Features

* Updated minimum Ruby version to 2.7 ([#24876](https://github.com/googleapis/google-cloud-ruby/issues/24876)) 

### 0.8.2 (2024-02-01)

#### Bug Fixes

* Eliminated a harmless but annoying warning in the protobuf class files 

### 0.8.1 (2024-01-12)

#### Bug Fixes

* Ensure endpoints are correct for mixin clients ([#24032](https://github.com/googleapis/google-cloud-ruby/issues/24032)) 

### 0.8.0 (2024-01-11)

#### Features

* Support for universe_domain ([#23785](https://github.com/googleapis/google-cloud-ruby/issues/23785)) 

### 0.7.0 (2023-09-12)

#### Features

* Support for channel pool configuration ([#22923](https://github.com/googleapis/google-cloud-ruby/issues/22923)) 

### 0.6.1 (2023-06-06)

#### Bug Fixes

* Don't use self-signed JWT credentials if the global configuration endpoint has been modified 

### 0.6.0 (2023-05-31)

#### Features

* Uses binary protobuf definitions for better forward compatibility ([#21678](https://github.com/googleapis/google-cloud-ruby/issues/21678)) 

### 0.5.0 (2023-03-08)

#### Features

* Support REST transport ([#20629](https://github.com/googleapis/google-cloud-ruby/issues/20629)) 

### 0.4.0 (2022-07-07)

#### Features

* Updated minimum Ruby version to 2.6 ([#18443](https://github.com/googleapis/google-cloud-ruby/issues/18443)) 
#### Bug Fixes

* Fixed a crash when making certain long-running-operations status calls ([#18441](https://github.com/googleapis/google-cloud-ruby/issues/18441)) 

### 0.3.6 / 2022-01-11

#### Bug Fixes

* Honor quota project in auxiliary operations clients

#### Documentation

* Fix titles of documentation pages
* Remove some broken images and fix outdated content in authentication documentation

### 0.3.5 / 2021-11-08

#### Documentation

* Added simple code snippets to RPC method documentation

### 0.3.4 / 2021-10-28

#### Documentation

* Improved formatting of some of the reference docs

### 0.3.3 / 2021-08-11

#### Bug Fixes

* Honor client-level timeout configuration

### 0.3.2 / 2021-07-12

#### Documentation

* Clarify some language around authentication configuration

### 0.3.1 / 2021-06-17

#### Bug Fixes

* Support future 1.x versions of gapic-common

### 0.3.0 / 2021-03-08

#### Features

* Drop support for Ruby 2.4 and add support for Ruby 3.0

### 0.2.0 / 2021-02-03

#### Features

* Use self-signed JWT credentials when possible

### 0.1.1 / 2021-01-19

#### Documentation

* Timeout config description correctly gives the units as seconds.

### 0.1.0 / 2020-10-16

Initial release.
