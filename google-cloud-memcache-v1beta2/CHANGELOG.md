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

* Fixed incorrect pagination on certain REST RPC methods ([#28825](https://github.com/googleapis/google-cloud-ruby/issues/28825))

#### Bug Fixes

* Fixed incorrect pagination on certain REST RPC methods ([#28825](https://github.com/googleapis/google-cloud-ruby/issues/28825)) 

### 0.11.0 (2025-01-28)

#### Features

* Update Ruby version requirement to 3.0 
#### Documentation

* Clarify behavior of protobuf message fields that are part of mutually-exclusive sets 
* Include note about validating externally-provided credentials 

### 0.10.0 (2024-12-10)

#### Features

* Provide opt-in debug logging 

### 0.9.2 (2024-08-30)

#### Documentation

* Add field `experimental_features` to message `PythonSettings` 

### 0.9.1 (2024-08-08)

#### Documentation

* Formatting updates to README.md ([#26628](https://github.com/googleapis/google-cloud-ruby/issues/26628)) 

### 0.9.0 (2024-02-26)

#### Features

* Updated minimum Ruby version to 2.7 ([#24872](https://github.com/googleapis/google-cloud-ruby/issues/24872)) 

### 0.8.2 (2024-02-01)

#### Bug Fixes

* Eliminated a harmless but annoying warning in the protobuf class files 

### 0.8.1 (2024-01-12)

#### Bug Fixes

* Ensure endpoints are correct for mixin clients ([#24032](https://github.com/googleapis/google-cloud-ruby/issues/24032)) 

### 0.8.0 (2024-01-11)

#### Features

* Support for universe_domain ([#23781](https://github.com/googleapis/google-cloud-ruby/issues/23781)) 

### 0.7.0 (2023-09-12)

#### Features

* Support for channel pool configuration ([#22921](https://github.com/googleapis/google-cloud-ruby/issues/22921)) 

### 0.6.1 (2023-06-06)

#### Bug Fixes

* Don't use self-signed JWT credentials if the global configuration endpoint has been modified 

### 0.6.0 (2023-05-31)

#### Features

* Uses binary protobuf definitions for better forward compatibility ([#21676](https://github.com/googleapis/google-cloud-ruby/issues/21676)) 

### 0.5.0 (2023-03-08)

#### Features

* Support REST transport ([#20627](https://github.com/googleapis/google-cloud-ruby/issues/20627)) 

### 0.4.0 (2022-12-06)

#### Features

* support scheduled maintenance 

### 0.3.0 (2022-07-05)

#### Features

* Updated minimum Ruby version to 2.6 ([#18443](https://github.com/googleapis/google-cloud-ruby/issues/18443)) 
#### Bug Fixes

* Fixed a crash when making certain long-running-operations status calls ([#18441](https://github.com/googleapis/google-cloud-ruby/issues/18441)) 

### 0.2.5 / 2022-01-11

#### Bug Fixes

* Honor quota project in auxiliary operations clients

#### Documentation

* Fix titles of documentation pages
* Remove some broken images and fix outdated content in authentication documentation

### 0.2.4 / 2021-11-08

#### Documentation

* Added simple code snippets to RPC method documentation

### 0.2.3 / 2021-08-11

#### Bug Fixes

* Honor client-level timeout configuration

### 0.2.2 / 2021-07-12

#### Documentation

* Clarify some language around authentication configuration

### 0.2.1 / 2021-06-17

#### Bug Fixes

* Support future 1.x versions of gapic-common

### 0.2.0 / 2021-04-05

#### Features

* Drop support for Ruby 2.4 and add support for Ruby 3.0
* Support for apply_software_update
* Use self-signed JWT credentials when possible

#### Bug Fixes

* Allow special symbolic credentials in client configs

#### Documentation

* Timeout config description correctly gives the units as seconds.

### 0.1.2 / 2020-08-06

#### Bug Fixes

* Fix retry logic by checking the correct numeric error codes

### 0.1.1 / 2020-06-18

#### Documentation

* Add documentation and API enablement links to the readme

### 0.1.0 / 2020-06-15

Initial release.
