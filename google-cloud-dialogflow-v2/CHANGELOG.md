# Release History

### 0.8.0 / 2021-05-06

#### Features

* Support for management of fulfillments, environments, and versions

### 0.7.0 / 2021-04-06

#### Features

* Added clients for Contact Center AI
* Support for webhook headers
* Expose MP3_64_KBPS and MULAW for output audio encodings.
* Use self-signed JWT credentials when possible
* Drop support for Ruby 2.4 and add support for Ruby 3.0

#### Bug Fixes

* Allow special symbolic credentials in client configs
* Fix retry logic by checking the correct numeric error codes

#### Documentation

* Fixed references from SentimentAnalysisResult description
* Minor updates to some parameter descriptions
* Timeout config description correctly gives the units as seconds.
* Update session argument description in detect_intent
* Update tier names in OriginalDetectIntentRequest field descriptions

### 0.6.4 / 2020-06-25

#### Bug Fixes

* Updates to retry policies

### 0.6.3 / 2020-06-18

#### Documentation

* Add documentation and API enablement links to the readme

### 0.6.2 / 2020-06-05

#### Bug Fixes

* Eliminate a Ruby warning that appeared in some cases when accessing rpc-scoped configs

### 0.6.1 / 2020-05-26

#### Bug Fixes

* Removed unused google/cloud/common_resources_pb file
* The long-running operations client honors the quota_project config

### 0.6.0 / 2020-05-20

#### Features

* The quota_project can be set via configuration

#### Documentation

* Cover multiple audio fields in intent detection responses.

### 0.5.1 / 2020-05-05

#### Documentation

* Clarify that timeouts are in seconds.
* Fix markdown formatting in SpeechContext reference.

### 0.5.0 / 2020-04-23

#### Features

* Support the ListEnvironments call.

### 0.4.1 / 2020-04-22

#### Bug Fixes

* Operations client honors its main client's custom endpoint.

### 0.4.0 / 2020-04-13

#### Features

* Support additional path helpers, and other updates.
  * Added session_path helper for the Contexts and SessionEntityTypes services.
  * Added agent_path helper for the EntityTypes and Intents services.
  * Expanded the readme to include quickstart and logging information.
  * Added documentation for package and service modules.
  * Fixed and expanded documentation for the two method calling conventions.
  * Fixed some circular require warnings.

### 0.3.0 / 2020-04-06

#### Features

* Support additional formats for context, session, and session_entity_type paths.

### 0.2.2 / 2020-04-01

#### Documentation

* Update documentation for core proto types.

### 0.2.1 / 2020-03-28

#### Bug Fixes

* set correct endpoint for long-running operations client.

### 0.2.0 / 2020-03-25

#### Features

* Path helpers can be called as module functions

#### Documentation

* Expansion and cleanup of service description text

### 0.1.0 / 2020-03-17

Initial release.
