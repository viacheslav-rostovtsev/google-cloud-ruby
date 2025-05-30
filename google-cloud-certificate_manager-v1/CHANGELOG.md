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

* Add field `experimental_features` to message `PythonSettings` ([#27004](https://github.com/googleapis/google-cloud-ruby/issues/27004)) 

### 0.10.0 (2024-03-22)

#### Features

* Added Trust Configs and DnsAuthorization.Type to Certificate Manager ([#25403](https://github.com/googleapis/google-cloud-ruby/issues/25403)) 

### 0.9.0 (2024-02-26)

#### Features

* Updated minimum Ruby version to 2.7 ([#24865](https://github.com/googleapis/google-cloud-ruby/issues/24865)) 

### 0.8.2 (2024-02-01)

#### Bug Fixes

* Eliminated a harmless but annoying warning in the protobuf class files 

### 0.8.1 (2024-01-12)

#### Bug Fixes

* Ensure endpoints are correct for mixin clients ([#24032](https://github.com/googleapis/google-cloud-ruby/issues/24032)) 

### 0.8.0 (2024-01-11)

#### Features

* Support for universe_domain ([#23775](https://github.com/googleapis/google-cloud-ruby/issues/23775)) 

### 0.7.0 (2023-09-12)

#### Features

* Support for channel pool configuration ([#22918](https://github.com/googleapis/google-cloud-ruby/issues/22918)) 

### 0.6.0 (2023-06-06)

#### Features

* Uses binary protobuf definitions for better forward compatibility ([#21673](https://github.com/googleapis/google-cloud-ruby/issues/21673)) 
#### Bug Fixes

* Don't use self-signed JWT credentials if the global configuration endpoint has been modified 

### 0.5.0 (2023-03-08)

#### Features

* Support REST transport ([#20625](https://github.com/googleapis/google-cloud-ruby/issues/20625)) 

### 0.4.2 (2023-03-01)

#### Documentation

* Corrected max number of certificates in a Certificate Map Entry ([#20572](https://github.com/googleapis/google-cloud-ruby/issues/20572)) 

### 0.4.1 (2023-01-26)

#### Documentation

* Minor reference doc formatting fixes ([#20068](https://github.com/googleapis/google-cloud-ruby/issues/20068)) 

### 0.4.0 (2022-10-03)

#### Features

* Support for Certificate Issuance Configs ([#19245](https://github.com/googleapis/google-cloud-ruby/issues/19245)) 

### 0.3.1 (2022-07-07)

#### Documentation

* Remove unused location proto doc ([#18726](https://github.com/googleapis/google-cloud-ruby/issues/18726)) 

### 0.3.0 (2022-07-07)

#### Features

* Added support for the locations mixin client ([#18714](https://github.com/googleapis/google-cloud-ruby/issues/18714)) 

#### Bug Fixes

* BREAKING CHANGE: Removed incorrectly implemented helper methods target_https_proxies_path and target_ssl_proxies_path 

#### Documentation

* Corrected the documented formats for GclbTarget#target_https_proxy and GclbTarget#target_ssl_proxy 

### 0.2.0 (2022-07-02)

#### Features

* Updated minimum Ruby version to 2.6 ([#18443](https://github.com/googleapis/google-cloud-ruby/issues/18443)) 
#### Bug Fixes

* Fixed a crash when making certain long-running-operations status calls ([#18441](https://github.com/googleapis/google-cloud-ruby/issues/18441)) 

### 0.1.0 / 2022-03-30

#### Features

* Initial generation of google-cloud-certificate_manager-v1
