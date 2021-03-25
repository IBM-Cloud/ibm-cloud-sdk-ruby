[![Build Status](https://travis-ci.com/IBM/vpc-ruby-sdk.svg?token=eW5FVD71iyte6tTby8gr&branch=master)](https://travis.ibm.com/IBM/vpc-ruby-sdk)
[![semantic-release](https://img.shields.io/badge/%20%20%F0%9F%93%A6%F0%9F%9A%80-semantic--release-e10079.svg)](https://github.com/semantic-release/semantic-release)
# IBM Cloud Resource Manager Ruby SDK

Ruby client library to interact with various [IBM Cloud Resource Manager APIs](https://cloud.ibm.com/apidocs?category=compute).

Disclaimer: this SDK is being released initially as a **pre-release** version.
Changes might occur which impact applications that use this SDK.

## Table of Contents

<!--
  The TOC below is generated using the `markdown-toc` node package.

      https://github.com/jonschlinkert/markdown-toc

  You should regenerate the TOC after making changes to this file.

      npx markdown-toc -i README.md
  -->

<!-- toc -->

- [Overview](#overview)
- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Using the SDK](#using-the-sdk)
- [Questions](#questions)
- [Issues](#issues)
- [Open source @ IBM](#open-source--ibm)
- [Contributing](#contributing)
- [License](#license)

<!-- tocstop -->

## Overview

The IBM Cloud Resource Manager Ruby SDK allows developers to programmatically interact with the following
IBM Cloud services:

Service Name | Imported Class Name
--- | ---
[Resource Manager](https://cloud.ibm.com/apidocs/resource-controller/resource-manager) | IbmCloudResourceManager::ResourceManagerV2

## Prerequisites

[ibm-cloud-onboarding]: https://cloud.ibm.com/registration

* An [IBM Cloud][ibm-cloud-onboarding] account.
* An IAM API key to allow the SDK to access your account. Create one [here](https://cloud.ibm.com/iam/apikeys).
* Ruby 2.3.0 or above.

## Installation

To install, use `gem`

```bash
gem install "ibm_cloud_resource_manager"
```

## Using the SDK
For general SDK usage information, please see [this link](https://github.com/IBM/ibm-cloud-sdk-common/blob/master/README.md)

### Authentication

```ruby
require 'ibm_cloud_resource_manager'

# First select an authentication type (IAM, Bearer, etc...)
# See https://github.com/IBM/ibm-cloud-sdk-common/blob/master/README.md#authentication for
# a full list of available authenticators.

# IAM example
authenticator = IBMCloudSdkCore::IamAuthenticator.new(apikey: "<iam_apikey>")

# Bearer Token example
authenticator = IBMCloudSdkCore::BearerTokenAuthenticator.new(bearer_token: "<access_token>")
```

### Using the Resource Manager API client

Setting up and using the API client is simple, just pass in your authenticator object and then you can issue API calls:

```ruby

# Pass the authenticator into the VpcV1 service
resource_manager = IbmCloudResourceManager::ResourceManagerV2.new(:authenticator => authenticator)

# Now you can start to make API calls
response = resource_manager.list_resource_groups
response.response["resources"].each do |resource|
  puts resource["name"]
end
```

## Questions

If you are having difficulties using this SDK or have a question about the IBM Cloud services,
please ask a question
[Stack Overflow](http://stackoverflow.com/questions/ask?tags=ibm-cloud).

## Issues
If you encounter an issue with the project, you are welcome to submit a
[bug report](https://github.com/IBM/vpc-ruby-sdk/issues).
Before that, please search for similar issues. It's possible that someone has already reported the problem.

## Open source @ IBM
Find more open source projects on the [IBM Github Page](http://ibm.github.io/)

## Contributing
See [CONTRIBUTING.md](https://github.com/IBM/vpc-ruby-sdk/blob/master/CONTRIBUTING.md).

## License

This SDK is released under the Apache 2.0 license.
The license's full text can be found in [LICENSE](https://github.com/IBM/vpc-ruby-sdk/blob/master/LICENSE).
