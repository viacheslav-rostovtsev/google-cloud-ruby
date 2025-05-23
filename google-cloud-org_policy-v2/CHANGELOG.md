# Release History

### 1.5.0 (2025-05-12)

#### Features

* Updated core dependencies including gapic-common 
* Updated required Ruby version to 3.1 

### 1.4.1 (2025-04-29)

#### Bug Fixes

* Fixed several issues with validating credential configs 

### 1.4.0 (2025-04-21)

#### Features

* Add managed constraints new fields (e.g. parameter) ([#29486](https://github.com/googleapis/google-cloud-ruby/issues/29486)) 

### 1.3.0 (2025-01-28)

#### Features

* Update Ruby version requirement to 3.0 
#### Documentation

* Clarify behavior of protobuf message fields that are part of mutually-exclusive sets 
* Include note about validating externally-provided credentials 

### 1.2.0 (2024-12-10)

#### Features

* Provide opt-in debug logging 

### 1.1.0 (2024-09-19)

#### Features

* Support adding constraints to new method types REMOVE_GRANTS and GOVERN_TAGS ([#27336](https://github.com/googleapis/google-cloud-ruby/issues/27336)) 

### 1.0.1 (2024-08-30)

#### Documentation

* Add field `experimental_features` to message `PythonSettings` ([#27010](https://github.com/googleapis/google-cloud-ruby/issues/27010)) 

### 1.0.0 (2024-07-08)

#### Features

* Bump version to 1.0.0 

### 0.10.0 (2024-02-26)

#### Features

* Updated minimum Ruby version to 2.7 ([#24874](https://github.com/googleapis/google-cloud-ruby/issues/24874)) 

### 0.9.2 (2024-02-01)

#### Bug Fixes

* Eliminated a harmless but annoying warning in the protobuf class files 

### 0.9.1 (2024-01-12)

#### Bug Fixes

* Ensure endpoints are correct for mixin clients ([#24032](https://github.com/googleapis/google-cloud-ruby/issues/24032)) 

### 0.9.0 (2024-01-11)

#### Features

* Support for universe_domain ([#23783](https://github.com/googleapis/google-cloud-ruby/issues/23783)) 

### 0.8.0 (2024-01-03)

#### Features

* Add custom constraints CRUD APIs, proper etag support in Org Policy Update/Delete API ([#23673](https://github.com/googleapis/google-cloud-ruby/issues/23673)) 

### 0.7.0 (2023-09-12)

#### Features

* Support for channel pool configuration ([#22922](https://github.com/googleapis/google-cloud-ruby/issues/22922)) 

### 0.6.0 (2023-06-06)

#### Features

* Uses binary protobuf definitions for better forward compatibility ([#21677](https://github.com/googleapis/google-cloud-ruby/issues/21677)) 
#### Bug Fixes

* Don't use self-signed JWT credentials if the global configuration endpoint has been modified 

### 0.5.0 (2023-03-08)

#### Features

* Support REST transport ([#20627](https://github.com/googleapis/google-cloud-ruby/issues/20627)) 

### 0.4.0 (2023-01-19)

#### Features

* Support for dry run policies ([#20040](https://github.com/googleapis/google-cloud-ruby/issues/20040)) 
* Support for field masks when updating policies 

### 0.3.0 (2022-07-06)

#### Features

* Updated minimum Ruby version to 2.6 ([#18443](https://github.com/googleapis/google-cloud-ruby/issues/18443)) 

### 0.2.6 / 2022-02-17

#### Documentation

* Minor updates to reference documentation

### 0.2.5 / 2022-01-11

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

### 0.2.0 / 2021-03-08

#### Features

* Drop support for Ruby 2.4 and add support for Ruby 3.0

### 0.1.0 / 2021-02-23

* Initial release
