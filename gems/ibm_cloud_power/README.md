# ibm_cloud_power

IbmCloudPower - the Ruby gem for the Power Cloud API

## Introduction

You can use the IBM® Power® Virtual Server to easily deploy and configure virtual servers that are running AIX, IBM i, or Linux (RHEL and SLES) workloads.

To learn about using Power Virtual Server, see:
- [Getting started with IBM Power Virtual Servers](https://cloud.ibm.com/docs/power-iaas?topic=power-iaas-getting-started)
- [IBM Power Virtual Server CLI Reference](https://cloud.ibm.com/docs/power-iaas-cli-plugin?topic=power-iaas-cli-plugin-power-iaas-cli-reference-v1)

## Endpoint URLs

The Power Virtual Server service uses regional endpoints over both public and private network.

Automatically generated regional API endpoints (service URL) will default to IBM Cloud Regions which may cause your request to fail. You should always use the Power Virtual Server regions in the service URL.

The following table shows the IBM Cloud® regions and their corresponding Power Virtual Server region where the APIs are available:
<!--
| Country       | Power Virtual Server region | Location | Public endpoint (service URL)               |
| ------------- | ------------------------------------------ | -------- | ------------------------------------------- |
| United States | Washington DC                              | us-south | `https://us-south.power-iaas.cloud.ibm.com` |

| Washington DC, USA | us-east | us-east | `https://us-east.power-iaas.cloud.ibm.com` |
| S----------------l | b-----o | s-----o | `----------------------------------------` |
| Toronto, Canada    | ca-tor  | tor     | `https://tor.power-iaas.cloud.ibm.com`     |
| Montreal, Canada   | ca-mon  | mon     | `https://mon.power-iaas.cloud.ibm.com`     |
| Frankfurt, Germany | eu-de   | eu-de   | `https://eu-de.power-iaas.cloud.ibm.com`   |
| London, UK         | eu-gb   | lon     | `https://lon.power-iaas.cloud.ibm.com`     |
| Sydney, Australia  | au-syd  | syd     | `https://syd.power-iaas.cloud.ibm.com`     |
| Tokyo, Japan       | jp-tok  | tok     | `https://tok.power-iaas.cloud.ibm.com`     |
| Osaka, Japan       | jp-osa  | osa     | `https://osa.power-iaas.cloud.ibm.com`     |

 -->

| Country          | Power Virtual Server region | Location                   | Public end-point (service URL)            |
| ---------------- | ------------------------------------------ | -------------------------- | ----------------------------------------- |
| Australia        | Sydney                                     | syd04 \\n syd05             | https://syd.power-iaas.cloud.ibm.com      |
| Brazil           | Sao Paulo                                  | sao01 \\n sao04             | https://sao.power-iaas.cloud.ibm.com      |
| Canada           | Montreal                                   | mon01                      | https://mon.power-iaas.cloud.ibm.com      |
|                  | Toronto                                    | tor01                      | https://tor.power-iaas.cloud.ibm.com      |
| Germany          | Frankfurt                                  | eu-de-1 \\n eu-de-2         | https://eu-de.power-iaas.cloud.ibm.com    |
| UK/Great Britain | London                                     | lon04 \\n lon06             | https://lon.power-iaas.cloud.ibm.com      |
| India            | Chennai                                    | che01 \\n che02 \\n che03    | https://che.power-iaas.cloud.ibm.com      |
|                  | Mumbai                                     | in-mum-1 \\n in-mum-2       | https://in-mum.power-iaas.cloud.ibm.com   |
| Japan            | Tokyo                                      | tok04                      | https://tok.power-iaas.cloud.ibm.com      |
|                  | Osaka                                      | osa21                      | https://osa.power-iaas.cloud.ibm.com      |
| Spain            | Madrid                                     | mad02 \\n mad04             | https://mad.power-iaas.cloud.ibm.com      |
| United States    | Washington DC                              | us-east \\n wdc06 \\n wdc07  | https://us-east.power-iaas.cloud.ibm.com  |
|                  | Dallas                                     | dal10 \\n dal12 \\n us-south | https://us-south.power-iaas.cloud.ibm.com |

| Country          | Power Virtual Server region | Location                   | Private end-point (service URL)                   |
| ---------------- | ------------------------------------------ | -------------------------- | ------------------------------------------------- |
| Australia        | Sydney                                     | syd04 \\n syd05             | https://private.au-syd.power-iaas.cloud.ibm.com   |
| Brazil           | Sao Paulo                                  | sao01 \\n sao04             | https://private.br-sao.power-iaas.cloud.ibm.com   |
| Canada           | Montreal                                   | mon01                      | https://private.ca-mon.power-iaas.cloud.ibm.com   |
|                  | Toronto                                    | tor01                      | https://private.ca-tor.power-iaas.cloud.ibm.com   |
| Germany          | Frankfurt                                  | eu-de-1 \\n eu-de-2         | https://private.eu-de.power-iaas.cloud.ibm.com    |
| UK/Great Britain | London                                     | lon04 \\n lon06             | https://private.eu-gb.power-iaas.cloud.ibm.com    |
| India            | Chennai                                    | che01 \\n che02 \\n che03    | https://private.in-che.power-iaas.cloud.ibm.com   |
|                  | Mumbai                                     | in-mum-1 \\n in-mum-2       | https://private.in-mum.power-iaas.cloud.ibm.com   |
| Japan            | Tokyo                                      | tok04                      | https://private.jp-tok.power-iaas.cloud.ibm.com   |
|                  | Osaka                                      | osa21                      | https://private.jp-osa.power-iaas.cloud.ibm.com   |
| Spain            | Madrid                                     | mad02 \\n mad04             | https://private.eu-es.power-iaas.cloud.ibm.com    |
| United States    | Washington DC                              | us-east \\n wdc06 \\n wdc07  | https://private.us-east.power-iaas.cloud.ibm.com  |
|                  | Dallas                                     | dal10 \\n dal12 \\n us-south | https://private.us-south.power-iaas.cloud.ibm.com |

## Curl service URL intro

To call the API, select the service URL that corresponds to the region of your choice and add a method path to form the complete request URL. For example, to list all the workspaces available in the `us-south` region, make a `GET` request to `https://us-south.iaas.cloud.ibm.com/v1/workspaces`.

Example request to call the `us-south` service URL:

```codeblock
curl -H \"Authorization: Bearer {token}\" -X {http_method} \"https://us-south.iaas.cloud.ibm.com/v1{path}\"
```

Replace `{token}`, `{http_method}`, and `{path}` in this example with the values for your particular request.

## Authentication

The Power Virtual Server API uses Identity and Access Management ([IAM](https://cloud.ibm.com/docs/account?topic=account-iamoverview)) to authenticate requests. To call each API method, you must be assigned a role that includes the required IAM actions. Each method has an Authorization section that lists the required actions and, if applicable, the conditions under which each action
is required. Check your access on the [IBM Cloud console](https://cloud.ibm.com/login) by navigating to **[Users](https://cloud.ibm.com/iam/users) > _User_ > Access**.

For more information about IAM actions and how they map to roles, see [Assigning access to account management services](https://cloud.ibm.com/docs/account?topic=account-account-services) and [Managing IAM access for Power Virtual Server](https://cloud.ibm.com/docs/power-iaas?topic=power-iaas-managing-resources-and-users).

Learn about obtaining an IAM token for an authenticated user or service ID in the [IAM Identity Services API](https://cloud.ibm.com/apidocs/iam-identity-token-api). If you first [create an API key](https://cloud.ibm.com/docs/account?topic=account-userapikey#create_user_key), you can [use it to generate an IAM token](https://cloud.ibm.com/docs/account?topic=account-iamtoken_from_apikey).

To use the API, add a valid IAM token to the HTTP `Authorization` request header. For example, `-H 'Authorization: Bearer {token}'`.

For specific APIs you must need to include your IBM Cloud IAM access token and the Power Virtual Server instance ID, also known as your **Cloud Resource Name** (CRN), in each request. The first part of your CRN contains your **Tenant ID** and the second part contains your **Cloud Instance ID**.

The following example shows a typical CRN:

```text
crn:v1:staging:public:power-iaas:us-east:a/abcdefghijklmnopqrstuvwxyzabcdef:121d5ee5-b87d-4a0e-86b8-aaff422135478::

Tenant ID {tenant_id} = abcdefghijklmnopqrstuvwxyzabcdef
Cloud Instance ID {cloud_instance_id} = 121d5ee5-b87d-4a0e-86b8-aaff422135478
```

You can retrieve an access token by first creating an API key, and then exchanging your API key for a IBM Cloud IAM token. For more information, see [Retrieving an access token programmatically](https://cloud.ibm.com/docs/services/key-protect?topic=key-protect-retrieve-access-token) and [Retrieving your instance ID](https://cloud.ibm.com/docs/services/key-protect?topic=key-protect-retrieve-instance-ID).

To retrieve your access token:

```sh
curl -X POST \\
  \"https://iam.cloud.ibm.com/identity/token\" \\
  --header 'Content-Type: application/x-www-form-urlencoded' \\
  --header 'Accept: application/json' \\
  --data-urlencode 'grant_type=urn:ibm:params:oauth:grant-type:apikey' \\
  --data-urlencode 'apikey={api_key}'
```

To use the API, replace `{token}` with the token obtained above from IAM, replace `{http_method}` with an HTTP method such as `POST`, and replace `{url}` with a request URL such as `https://us-south.iaas.cloud.ibm.com/v1/workspaces/{workspace_id}`:

```sh
curl -H \"Authorization: Bearer {token}\" -X {http_method} \"{url}\"
     -H \"CRN\"
```

## Auditing

Monitor API activity within your account by using the IBM Cloud Activity Tracker service. Each time you make an API call, one or more events are generated that you can track and audit from within Activity Tracker. Specific auditing event types are listed for each individual method. For more information about Power Virtual Server activity tracking, see [Activity Tracker events](https://cloud.ibm.com/docs/power-iaas?topic=power-iaas-at-events).

## Error handling

This API uses standard HTTP response codes to indicate whether a method completed successfully. A `200` response indicates success. A `400` type response indicates a failure, and a `500` type response indicates an internal system error.

| HTTP Error Code | Description                | Recovery                                                                                                                                                                                                                                                                                                                                                                |
| --------------- | -------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `400`           | Bad Request                | The input parameters in the request body are either incomplete, malformed, or too large. Be sure to include all required parameters in your request.                                                                                                                                                                                                                    |
| `401`           | Unauthorized               | You are not authorized to make this request. Log in to IBM Cloud and try submitting the request again. If this error persists, contact the account owner to check your permissions.                                                                                                                                                              |
| `403`           | Forbidden                  | The supplied authentication is not authorized to perform the requested operation. Either you do not have valid access through IAM access policies or your request is denied. If this error persists, contact the account owner to check your permissions.                                                                                                               |
| `404`           | Not Found                  | The requested resource could not be found but may be available in the future.                                                                                                                                                                                                                                                                                           |
| `405`           | Method Not Allowed         | The requested resource does not support the request method.                                                                                                                                                                                                                                                                                                             |
| `406`           | Not Acceptable             | The resource the client requested is not available in a format allowed by the `Accept` header supplied by the client.                                                                                                                                                                                                                                                   |
| `408`           | Request Timeout            | The connection to the server timed out. Wait a few minutes, and try submitting the request again.                                                                                                                                                                                                                                                                       |
| `409`           | Conflict                   | The request cannot be completed because of a conflict between the request and the current state of the resource.                                                                                                                                                                                                                                                        |
| `412`           | Precondition Failed        | The client specified one or more preconditions in its headers, and the server cannot meet those preconditions.                                                                                                                                                                                                                                                          |
| `426`           | Upgrade Required           | The server refuses to perform the request using the current protocol but might perform the request after the client upgrades to a different protocol.                                                                                                                                                                                                                   |
| `500`           | Internal Server Error      | The request cannot be processed because the client encountered an unexpected condition on the server. Wait a few minutes and try submitting the request again. If this error persists, contact IBM Support.                                                                                                                                                             |
| `501`           | Not Implemented            | The server either does not recognize the request method, or it lacks the ability to fulfill the request.                                                                                                                                                                                                                                                                |
| `502`           | Bad Gateway                | The server was acting as a gateway or proxy and received an invalid response from the upstream server.                                                                                                                                                                                                                                                                  |
| `503`           | Service Unavailable        | The server cannot process the request. Generally, this condition is temporary, such as when a server is overloaded or down for scheduled maintenance. This condition could also be due to an unplanned outage of a service that is needed to process the request. Wait a few minutes and try submitting the request again. If this error persists, contact IBM Support. |
| `504`           | Gateway Timeout            | The server was acting as a gateway or proxy and did not receive a timely response from the upstream server.                                                                                                                                                                                                                                                             |
| `505`           | HTTP Version Not Supported | The server does not support the HTTP protocol version that is used in the request.                                                                                                                                                                                                                                                                                      |

## Release notes

Use the release notes to learn about the latest changes to the Power Virtual Server API.

<!-- ## 2025
 -->

### June 2026

Added the following APIs associated with vPMEM volumes:
- [Update a vPMEM volume attached to this PVM Instance](https://cloud.ibm.com/docs/apis/power-cloud#pcloud-pvminstances-vpmem-volumes-put)

### December 2025

Added the following APIs associated with vPMEM volumes:
- [List all vPMEM volumes attached to this PVM Instance](https://cloud.ibm.com/apidocs/power-cloud#pcloud-pvminstances-vpmem-volumes-getall)
- [Create a vPMEM volume to be attached to this PVM Instance](https://cloud.ibm.com/apidocs/power-cloud#pcloud-pvminstances-vpmem-volumes-post)
- [Delete a vPMEM volume attached to this PVM Instance](https://cloud.ibm.com/apidocs/power-cloud#pcloud-pvminstances-vpmem-volumes-delete)
- [Get information about a vPMEM volume](https://cloud.ibm.com/apidocs/power-cloud#pcloud-pvminstances-vpmem-volumes-get)

### September 2025

Added the following APIs associated with network peers:
- [Get the list of Network Peers for a workspace](https://cloud.ibm.com/apidocs/power-cloud#v1-networkpeers-getall)
- [Create a new Network Peer](https://cloud.ibm.com/apidocs/power-cloud#v1-networkpeers-post)
- [Get the list of Network Interfaces for a workspace](https://cloud.ibm.com/apidocs/power-cloud#v1-networkpeers-interfaces-getall)
- [Delete a Network Peer from a workspace](https://cloud.ibm.com/apidocs/power-cloud#v1-networkpeers-id-delete)
- [Get the details of a Network Peer](https://cloud.ibm.com/apidocs/power-cloud#v1-networkpeers-id-get)
- [Update a Network Peer](https://cloud.ibm.com/apidocs/power-cloud#v1-networkpeers-id-put)
- [Create a new Route Filter](https://cloud.ibm.com/apidocs/power-cloud#v1-networkpeers-routefilter-post)
- [Delete a Route Filter from a Network Peer](https://cloud.ibm.com/apidocs/power-cloud#v1-networkpeers-routefilter-id-delete)
- [Get the details of a Route Filter](https://cloud.ibm.com/apidocs/power-cloud#v1-networkpeers-routefilter-id-get)

### July 2025

Added the following APIs associated with routes:
- [Get all routes in the workspace](https://cloud.ibm.com/apidocs/power-cloud?loginMethod=federated#v1-routes-getall)
- [Perform a route creation](https://cloud.ibm.com/apidocs/power-cloud?loginMethod=federated#v1-routes-post)
- [Get the route report for a workspace](https://cloud.ibm.com/apidocs/power-cloud?loginMethod=federated#v1-routes-report-get)
- [Delete a route](https://cloud.ibm.com/apidocs/power-cloud?loginMethod=federated#v1-routes-delete)
- [Get a route's information](https://cloud.ibm.com/apidocs/power-cloud?loginMethod=federated#v1-routes-get)
- [Update a route's information](https://cloud.ibm.com/apidocs/power-cloud?loginMethod=federated#v1-routes-put)

Added the following APIs associated with ssh keys:
- [List SSH Keys](https://cloud.ibm.com/apidocs/power-cloud?loginMethod=federated#v1-sshkeys-getall)
- [Add a new SSH key](https://cloud.ibm.com/apidocs/power-cloud?loginMethod=federated#v1-sshkeys-post)
- [Delete ssh-key](https://cloud.ibm.com/apidocs/power-cloud?loginMethod=federated#v1-sshkeys-delete)
- [Get ssh-key information](https://cloud.ibm.com/apidocs/power-cloud?loginMethod=federated#v1-sshkeys-get)
- [Update the ssh key](https://cloud.ibm.com/apidocs/power-cloud?loginMethod=federated#v1-sshkeys-put)

Added an API to list the supported IBM i software tiers: [List supported software tiers (IBMi licensing)](https://cloud.ibm.com/apidocs/power-cloud?loginMethod=federated#pcloud-virtualserialnumber-softwaretiers-getall)

### February 2025

Added the following APIs associated with network address groups:
- [Get the list of Network Address Groups for a workspace](https://cloud.ibm.com/apidocs/power-cloud#v1-networkaddressgroups-get)
- [Create a new Network Address Group](https://cloud.ibm.com/apidocs/power-cloud#v1-networkaddressgroups-post)
- [Delete a Network Address Group from a workspace](https://cloud.ibm.com/apidocs/power-cloud#v1-networkaddressgroups-id-delete)
- [Get the detail of a Network Address Group](https://cloud.ibm.com/apidocs/power-cloud#v1-networkaddressgroups-id-get)
- [Update a Network Address Group](https://cloud.ibm.com/apidocs/power-cloud#v1-networkaddressgroups-id-put)
- [Add a member to a Network Address Group](https://cloud.ibm.com/apidocs/power-cloud#v1-networkaddressgroups-members-post)
- [Delete the member from a Network Address Group](https://cloud.ibm.com/apidocs/power-cloud#v1-networkaddressgroups-members-delete)

Added the following APIs associated with network security groups:
- [Get the list of Network Security Groups for a workspace](https://cloud.ibm.com/apidocs/power-cloud#v1-networksecuritygroups-list)
- [Create a new Network Security Group](https://cloud.ibm.com/apidocs/power-cloud#v1-networksecuritygroups-post)
- [Perform a Network Security Groups action (enable, disable) on a workspace.](https://cloud.ibm.com/apidocs/power-cloud#v1-networksecuritygroups-action-post)
- [Delete a Network Security Group from a workspace](https://cloud.ibm.com/apidocs/power-cloud#v1-networksecuritygroups-id-delete)
- [Get the detail of a Network Security Group](https://cloud.ibm.com/apidocs/power-cloud#v1-networksecuritygroups-id-get)
- [Clone a Network Security Group](https://cloud.ibm.com/apidocs/power-cloud#v1-networksecuritygroups-id-post)
- [Update a Network Security Group](https://cloud.ibm.com/apidocs/power-cloud#v1-networksecuritygroups-id-put)
- [Add a member to a Network Security Group](https://cloud.ibm.com/apidocs/power-cloud#v1-networksecuritygroups-members-post)
- [Delete the member from a Network Security Group](https://cloud.ibm.com/apidocs/power-cloud#v1-networksecuritygroups-members-delete)
- [Move a Network Security Group member to another Network Security Group](https://cloud.ibm.com/apidocs/power-cloud#v1-networksecuritygroups-move-member-post)
- [Add a rule to a Network Security Group](https://cloud.ibm.com/apidocs/power-cloud#v1-networksecuritygroups-rules-post)
- [Delete the rule from a Network Security Group](https://cloud.ibm.com/apidocs/power-cloud#v1-networksecuritygroups-rules-delete)

### December 2023

The following APIs are availavle:
- [Get all Datacenters information and capabilities](https://cloud.ibm.com/apidocs/power-cloud#v1-datacenters-getall)
- [Get a Datacenter's information and capabilities](https://cloud.ibm.com/apidocs/power-cloud#v1-datacenters-get)
- [Get all Workspaces information and capabilities for a tenant](https://cloud.ibm.com/apidocs/power-cloud#v1-workspaces-getall)
- [Get a Workspace's information and capabilities](https://cloud.ibm.com/apidocs/power-cloud#v1-workspaces-get)

### November 2023

- New API [List all supported storage tiers for this cloud instance](https://cloud.ibm.com/apidocs/power-cloud#pcloud-cloudinstances-storagetiers-getall) is available.

### September 2023

- Added parameters `availableCapacity`, `maxAllocationSize`, `replicationEnabled`, `storageHost` in the [Storage capacity for a storage pool in a region (GET)](https://cloud.ibm.com/apidocs/power-cloud#pcloud-storagecapacity-pools-get).

### December 2022

- You can now get new error messages for undefined response codes for new service endpoint response codes.

### September 2022

- Added the following APIs associated with shared processor pool:
    - [Get the list of Shared Processor Pools for a cloud instance](https://cloud.ibm.com/apidocs/power-cloud#pcloud-sharedprocessorpools-getall)
    - [Create a new Shared Processor Pool](https://cloud.ibm.com/apidocs/power-cloud#pcloud-sharedprocessorpools-post)
    - [Get the detail of a Shared Processor Pool for a cloud instance](https://cloud.ibm.com/apidocs/power-cloud#pcloud-sharedprocessorpools-get)
    - [Update a Shared Processor Pool for a cloud instance](https://cloud.ibm.com/apidocs/power-cloud#pcloud-sharedprocessorpools-put)
    - [Delete a Shared Processor Pool from a cloud instance](https://cloud.ibm.com/apidocs/power-cloud#pcloud-sharedprocessorpools-delete)

- Added the following APIs associated with global recovery service:
    - Disaster recovery
        - [Get the disaster recovery site details for the current location](https://cloud.ibm.com/apidocs/power-cloud#pcloud-locations-disasterrecovery-get)
        - [Get all disaster recovery locations supported by Power Virtual Server](https://cloud.ibm.com/apidocs/power-cloud#pcloud-locations-disasterrecovery-getall)
    - Volume
        - [Perform an action on a Volume](https://cloud.ibm.com/apidocs/power-cloud#pcloud-cloudinstances-volumes-action-post)
        - [Get a list of flashcopy mappings of a given volume](https://cloud.ibm.com/apidocs/power-cloud#pcloud-cloudinstances-volumes-flashcopymappings-ge)
        - [Get remote copy relationship of a volume](https://cloud.ibm.com/apidocs/power-cloud#pcloud-cloudinstances-volumes-remotecopyrelationsh)
    - Volume onboarding
        - [List all volume onboardings for this cloud instance](https://cloud.ibm.com/apidocs/power-cloud#pcloud-volume-onboarding-getall)
        - [Onboard auxiliary volumes to target site](https://cloud.ibm.com/apidocs/power-cloud#pcloud-volume-onboarding-post)
        - [Get the information of volume onboarding operation](https://cloud.ibm.com/apidocs/power-cloud#pcloud-volume-onboarding-get)
    - Volume groups
        - [Get all volume groups](https://cloud.ibm.com/apidocs/power-cloud#pcloud-volumegroups-getall)
        - [Create a new volume group](https://cloud.ibm.com/apidocs/power-cloud#pcloud-volumegroups-post)
        - [Get all volume groups with details](https://cloud.ibm.com/apidocs/power-cloud#pcloud-volumegroups-getalldetails)
        - [Get volume Group](https://cloud.ibm.com/apidocs/power-cloud#pcloud-volumegroups-get)
        - [updates the volume group](https://cloud.ibm.com/apidocs/power-cloud#pcloud-volumegroups-put)
        - [Delete a cloud instance volume group](https://cloud.ibm.com/apidocs/power-cloud#pcloud-volumegroups-delete)
        - [Perform an action (start stop reset ) on a volume group](https://cloud.ibm.com/apidocs/power-cloud#pcloud-volumegroups-action-post)
        - [Get volume Group details](https://cloud.ibm.com/apidocs/power-cloud#pcloud-volumegroups-getdetails)
        - [Get remote copy relationships of the volume belonging to volume group](https://cloud.ibm.com/apidocs/power-cloud#pcloud-volumegroups-remotecopyrelationships-get)
        - [Get storage details of volume group](https://cloud.ibm.com/apidocs/power-cloud#pcloud-volumegroups-storagedetails-get)

### October 2021

- Added the following APIs associated with VPN connections:
    - [Get VPN connections](https://cloud.ibm.com/apidocs/power-cloud#pcloud-vpnconnections-getall)
    - [Add IKE policy](https://cloud.ibm.com/apidocs/power-cloud#pcloud-ikepolicies-post)
    - [Add IPsec policy](https://cloud.ibm.com/apidocs/power-cloud#pcloud-ipsecpolicies-post)

### September 2021

- Added the following APIs associated with Image Capture, Image Import, and Image Export:
    - [Capture a PVM instance and create a deployable image](https://cloud.ibm.com/apidocs/power-cloud#pcloud-v2-pvminstances-capture-post)
    - [Add image export job to the jobs queue](https://cloud.ibm.com/apidocs/power-cloud#pcloud-v2-images-export-post)
    - [Create a new image from available images in COS](https://cloud.ibm.com/apidocs/power-cloud#pcloud-v1-cloudinstances-cosimages-post)
    - [List up to the last 5 jobs initiated by the cloud instance](https://cloud.ibm.com/apidocs/power-cloud#pcloud-cloudinstances-jobs-getall)

- Added the following APIs associated with storage volumes:
    - [Create multiple data volumes from a single definition](https://cloud.ibm.com/apidocs/power-cloud#pcloud-v2-volumes-post)

- Added the following APIs associated with private endpoint:
    - [Endpoint URL](https://cloud.ibm.com/apidocs/power-cloud#endpoint)

### June 2021

- Added the following APIs associated with placement groups:
    - [Create a server placement group](https://cloud.ibm.com/apidocs/power-cloud#pcloud-placementgroups-post)
    - [Get all server placement groups](https://cloud.ibm.com/apidocs/power-cloud#pcloud-placementgroups-getall)
    - [Get server placement group details](https://cloud.ibm.com/apidocs/power-cloud#pcloud-placementgroups-get)
    - [Delete server placement group](https://cloud.ibm.com/apidocs/power-cloud#pcloud-placementgroups-delete)
    - [Add server to placement group](https://cloud.ibm.com/apidocs/power-cloud#pcloud-placementgroups-members-post)
    - [Remove server from placement group](https://cloud.ibm.com/apidocs/power-cloud#pcloud-placementgroups-members-delete)

### May 2021

- Added the following APIs associated with Cloud connections:
    - [Create a new Cloud connection](https://cloud.ibm.com/apidocs/power-cloud#pcloud-cloudconnections-post)
    - [Get all Cloud connections in a specific cloud instance](https://cloud.ibm.com/apidocs/power-cloud#pcloud-cloudconnections-getall)
    - [Get a Cloud connection's state or information](https://cloud.ibm.com/apidocs/power-cloud#pcloud-cloudconnections-get)
    - [Update a Cloud connection](https://cloud.ibm.com/apidocs/power-cloud#pcloud-cloudconnections-put)
    - [Delete a Cloud connection](https://cloud.ibm.com/apidocs/power-cloud#pcloud-cloudconnections-delete)
    - [Get information about a Cloud connections attached network](https://cloud.ibm.com/apidocs/power-cloud#pcloud-cloudconnections-networks-get)
    - [Add a network to the Cloud connection](https://cloud.ibm.com/apidocs/power-cloud#pcloud-cloudconnections-networks-put)
    - [Delete a network from a Cloud connection](https://cloud.ibm.com/apidocs/power-cloud#pcloud-cloudconnections-networks-delete)

### February 2021

- Added the following APIs associated with volume clone requests:
    - [Create a new volumes clone request and initiate the Prepare action](https://cloud.ibm.com/apidocs/power-cloud#pcloud-v2-volumesclone-post)
    - [Get the list of volumes-clone request for a cloud instance](https://cloud.ibm.com/apidocs/power-cloud#pcloud-v2-volumesclone-getall)
    - [Get the details for a volumes-clone request](https://cloud.ibm.com/apidocs/power-cloud#pcloud-v2-volumesclone-get)
    - [Delete a volumes-clone request](https://cloud.ibm.com/apidocs/power-cloud#pcloud-v2-volumesclone-delete)
    - [Initiate the Start action for a volume-clone request](https://cloud.ibm.com/apidocs/power-cloud#pcloud-v2-volumesclone-start-post)
    - [Initiate the Execute action for a volumes-clone request](https://cloud.ibm.com/apidocs/power-cloud#pcloud-v2-volumesclone-execute-post)
    - [Cancel a volume-clone request and initiate the Cleanup action](https://cloud.ibm.com/apidocs/power-cloud#pcloud-v2-volumesclone-cancel-post)
- Added the following APIs for requests related to storage capacity:
    - [Get storage capacity for all available storage types in a region](https://cloud.ibm.com/apidocs/power-cloud#pcloud-storagecapacity-types-getall)
    - [Get storage capacity for a storage type in a region](https://cloud.ibm.com/apidocs/power-cloud#pcloud-storagecapacity-types-get)
    - [Get storage capacity for all available storage pools in a region](https://cloud.ibm.com/apidocs/power-cloud#pcloud-storagecapacity-pools-getall)
    - [Get storage capacity for a storage pool in a region](https://cloud.ibm.com/apidocs/power-cloud#pcloud-storagecapacity-pools-get)

This SDK is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 2.5.0
- Package version: 3.1.0
- Generator version: 7.23.0
- Build package: org.openapitools.codegen.languages.RubyClientCodegen
For more information, please visit [https://github.ibm.com/power-iaas](https://github.ibm.com/power-iaas)

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build ibm_cloud_power.gemspec
```

Then either install the gem locally:

```shell
gem install ./ibm_cloud_power-3.1.0.gem
```

(for development, run `gem install --dev ./ibm_cloud_power-3.1.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'ibm_cloud_power', '~> 3.1.0'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/GIT_USER_ID/GIT_REPO_ID, then add the following in the Gemfile:

    gem 'ibm_cloud_power', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:

```ruby
# Load the gem
require 'ibm_cloud_power'

api_instance = IbmCloudPower::DatacentersApi.new
datacenter_region = 'datacenter_region_example' # String | Datacenter Region

begin
  #Get a Datacenter's information and capabilities
  result = api_instance.v1_datacenters_get(datacenter_region)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Exception when calling DatacentersApi->v1_datacenters_get: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *http://localhost*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*IbmCloudPower::DatacentersApi* | [**v1_datacenters_get**](docs/DatacentersApi.md#v1_datacenters_get) | **GET** /v1/datacenters/{datacenter_region} | Get a Datacenter's information and capabilities
*IbmCloudPower::DatacentersApi* | [**v1_datacenters_getall**](docs/DatacentersApi.md#v1_datacenters_getall) | **GET** /v1/datacenters | Get all Datacenters information and capabilities
*IbmCloudPower::DatacentersApi* | [**v1_datacenters_private_get**](docs/DatacentersApi.md#v1_datacenters_private_get) | **GET** /v1/datacenters/private/{datacenter_region} | Get a private Datacenter's information and capabilities
*IbmCloudPower::DatacentersApi* | [**v1_datacenters_private_getall**](docs/DatacentersApi.md#v1_datacenters_private_getall) | **GET** /v1/datacenters/private | Get private Datacenter information and capabilities
*IbmCloudPower::HostGroupsApi* | [**v1_available_hosts**](docs/HostGroupsApi.md#v1_available_hosts) | **GET** /v1/available-hosts | List all the hosts that can be reserved
*IbmCloudPower::HostGroupsApi* | [**v1_host_groups_get**](docs/HostGroupsApi.md#v1_host_groups_get) | **GET** /v1/host-groups | Get the list of host groups for the workspace
*IbmCloudPower::HostGroupsApi* | [**v1_host_groups_id_get**](docs/HostGroupsApi.md#v1_host_groups_id_get) | **GET** /v1/host-groups/{host_group_id} | Get the details of a host group
*IbmCloudPower::HostGroupsApi* | [**v1_host_groups_id_put**](docs/HostGroupsApi.md#v1_host_groups_id_put) | **PUT** /v1/host-groups/{host_group_id} | Share/unshare a host group with another workspace
*IbmCloudPower::HostGroupsApi* | [**v1_host_groups_post**](docs/HostGroupsApi.md#v1_host_groups_post) | **POST** /v1/host-groups | Create a host group with one (or more) host
*IbmCloudPower::HostGroupsApi* | [**v1_hosts_get**](docs/HostGroupsApi.md#v1_hosts_get) | **GET** /v1/hosts | Get the list of all the hosts the workspace has access to
*IbmCloudPower::HostGroupsApi* | [**v1_hosts_id_delete**](docs/HostGroupsApi.md#v1_hosts_id_delete) | **DELETE** /v1/hosts/{host_id} | Release a host from its host group
*IbmCloudPower::HostGroupsApi* | [**v1_hosts_id_get**](docs/HostGroupsApi.md#v1_hosts_id_get) | **GET** /v1/hosts/{host_id} | Get the details about a host
*IbmCloudPower::HostGroupsApi* | [**v1_hosts_id_put**](docs/HostGroupsApi.md#v1_hosts_id_put) | **PUT** /v1/hosts/{host_id} | Modify the display name of a host
*IbmCloudPower::HostGroupsApi* | [**v1_hosts_post**](docs/HostGroupsApi.md#v1_hosts_post) | **POST** /v1/hosts | Add new host(s) to an existing host group
*IbmCloudPower::NetworkAddressGroupsApi* | [**v1_network_address_groups_get**](docs/NetworkAddressGroupsApi.md#v1_network_address_groups_get) | **GET** /v1/network-address-groups | Get the list of Network Address Groups for a workspace
*IbmCloudPower::NetworkAddressGroupsApi* | [**v1_network_address_groups_id_delete**](docs/NetworkAddressGroupsApi.md#v1_network_address_groups_id_delete) | **DELETE** /v1/network-address-groups/{network_address_group_id} | Delete a Network Address Group from a workspace
*IbmCloudPower::NetworkAddressGroupsApi* | [**v1_network_address_groups_id_get**](docs/NetworkAddressGroupsApi.md#v1_network_address_groups_id_get) | **GET** /v1/network-address-groups/{network_address_group_id} | Get the detail of a Network Address Group
*IbmCloudPower::NetworkAddressGroupsApi* | [**v1_network_address_groups_id_put**](docs/NetworkAddressGroupsApi.md#v1_network_address_groups_id_put) | **PUT** /v1/network-address-groups/{network_address_group_id} | Update a Network Address Group
*IbmCloudPower::NetworkAddressGroupsApi* | [**v1_network_address_groups_members_delete**](docs/NetworkAddressGroupsApi.md#v1_network_address_groups_members_delete) | **DELETE** /v1/network-address-groups/{network_address_group_id}/members/{network_address_group_member_id} | Delete the member from a Network Address Group
*IbmCloudPower::NetworkAddressGroupsApi* | [**v1_network_address_groups_members_post**](docs/NetworkAddressGroupsApi.md#v1_network_address_groups_members_post) | **POST** /v1/network-address-groups/{network_address_group_id}/members | Add a member to a Network Address Group
*IbmCloudPower::NetworkAddressGroupsApi* | [**v1_network_address_groups_post**](docs/NetworkAddressGroupsApi.md#v1_network_address_groups_post) | **POST** /v1/network-address-groups | Create a new Network Address Group
*IbmCloudPower::NetworkPeersApi* | [**v1_network_peers_getall**](docs/NetworkPeersApi.md#v1_network_peers_getall) | **GET** /v1/network-peers | Get the list of Network Peers
*IbmCloudPower::NetworkPeersApi* | [**v1_network_peers_id_delete**](docs/NetworkPeersApi.md#v1_network_peers_id_delete) | **DELETE** /v1/network-peers/{network_peer_id} | Delete a Network Peer
*IbmCloudPower::NetworkPeersApi* | [**v1_network_peers_id_get**](docs/NetworkPeersApi.md#v1_network_peers_id_get) | **GET** /v1/network-peers/{network_peer_id} | Get the details of a Network Peer
*IbmCloudPower::NetworkPeersApi* | [**v1_network_peers_id_put**](docs/NetworkPeersApi.md#v1_network_peers_id_put) | **PUT** /v1/network-peers/{network_peer_id} | Update a Network Peer
*IbmCloudPower::NetworkPeersApi* | [**v1_network_peers_interfaces_getall**](docs/NetworkPeersApi.md#v1_network_peers_interfaces_getall) | **GET** /v1/network-peers/interfaces | Get the list of Interfaces for Network Peer
*IbmCloudPower::NetworkPeersApi* | [**v1_network_peers_post**](docs/NetworkPeersApi.md#v1_network_peers_post) | **POST** /v1/network-peers | Create a new Network Peer
*IbmCloudPower::NetworkPeersApi* | [**v1_network_peers_route_filter_id_delete**](docs/NetworkPeersApi.md#v1_network_peers_route_filter_id_delete) | **DELETE** /v1/network-peers/{network_peer_id}/route-filters/{route_filter_id} | Delete a Route Filter
*IbmCloudPower::NetworkPeersApi* | [**v1_network_peers_route_filter_id_get**](docs/NetworkPeersApi.md#v1_network_peers_route_filter_id_get) | **GET** /v1/network-peers/{network_peer_id}/route-filters/{route_filter_id} | Get the details of a Route Filter
*IbmCloudPower::NetworkPeersApi* | [**v1_network_peers_route_filter_post**](docs/NetworkPeersApi.md#v1_network_peers_route_filter_post) | **POST** /v1/network-peers/{network_peer_id}/route-filters | Create a new Route Filter
*IbmCloudPower::NetworkSecurityGroupsApi* | [**v1_network_security_groups_action_post**](docs/NetworkSecurityGroupsApi.md#v1_network_security_groups_action_post) | **POST** /v1/network-security-groups/action | Perform a Network Security Groups action (enable, disable) on a workspace. On enablement, a default Network Security Group is created to allow all traffic for all active network iterfaces
*IbmCloudPower::NetworkSecurityGroupsApi* | [**v1_network_security_groups_id_delete**](docs/NetworkSecurityGroupsApi.md#v1_network_security_groups_id_delete) | **DELETE** /v1/network-security-groups/{network_security_group_id} | Delete a Network Security Group from a workspace
*IbmCloudPower::NetworkSecurityGroupsApi* | [**v1_network_security_groups_id_get**](docs/NetworkSecurityGroupsApi.md#v1_network_security_groups_id_get) | **GET** /v1/network-security-groups/{network_security_group_id} | Get the detail of a Network Security Group
*IbmCloudPower::NetworkSecurityGroupsApi* | [**v1_network_security_groups_id_post**](docs/NetworkSecurityGroupsApi.md#v1_network_security_groups_id_post) | **POST** /v1/network-security-groups/{network_security_group_id} | Clone a Network Security Group
*IbmCloudPower::NetworkSecurityGroupsApi* | [**v1_network_security_groups_id_put**](docs/NetworkSecurityGroupsApi.md#v1_network_security_groups_id_put) | **PUT** /v1/network-security-groups/{network_security_group_id} | Update a Network Security Group
*IbmCloudPower::NetworkSecurityGroupsApi* | [**v1_network_security_groups_list**](docs/NetworkSecurityGroupsApi.md#v1_network_security_groups_list) | **GET** /v1/network-security-groups | Get the list of Network Security Groups for a workspace
*IbmCloudPower::NetworkSecurityGroupsApi* | [**v1_network_security_groups_members_delete**](docs/NetworkSecurityGroupsApi.md#v1_network_security_groups_members_delete) | **DELETE** /v1/network-security-groups/{network_security_group_id}/members/{network_security_group_member_id} | Delete the member from a Network Security Group
*IbmCloudPower::NetworkSecurityGroupsApi* | [**v1_network_security_groups_members_post**](docs/NetworkSecurityGroupsApi.md#v1_network_security_groups_members_post) | **POST** /v1/network-security-groups/{network_security_group_id}/members | Add a member to a Network Security Group
*IbmCloudPower::NetworkSecurityGroupsApi* | [**v1_network_security_groups_move_member_post**](docs/NetworkSecurityGroupsApi.md#v1_network_security_groups_move_member_post) | **POST** /v1/network-security-groups/{network_security_group_id}/move_member | Move a Network Security Group member to another Network Security Group
*IbmCloudPower::NetworkSecurityGroupsApi* | [**v1_network_security_groups_post**](docs/NetworkSecurityGroupsApi.md#v1_network_security_groups_post) | **POST** /v1/network-security-groups | Create a new Network Security Group
*IbmCloudPower::NetworkSecurityGroupsApi* | [**v1_network_security_groups_rules_delete**](docs/NetworkSecurityGroupsApi.md#v1_network_security_groups_rules_delete) | **DELETE** /v1/network-security-groups/{network_security_group_id}/rules/{network_security_group_rule_id} | Delete the rule from a Network Security Group
*IbmCloudPower::NetworkSecurityGroupsApi* | [**v1_network_security_groups_rules_post**](docs/NetworkSecurityGroupsApi.md#v1_network_security_groups_rules_post) | **POST** /v1/network-security-groups/{network_security_group_id}/rules | Add a rule to a Network Security Group
*IbmCloudPower::NetworksApi* | [**v1_networks_network_interfaces_delete**](docs/NetworksApi.md#v1_networks_network_interfaces_delete) | **DELETE** /v1/networks/{network_id}/network-interfaces/{network_interface_id} | Delete a Network Interface
*IbmCloudPower::NetworksApi* | [**v1_networks_network_interfaces_get**](docs/NetworksApi.md#v1_networks_network_interfaces_get) | **GET** /v1/networks/{network_id}/network-interfaces/{network_interface_id} | Get a Network Interface's information
*IbmCloudPower::NetworksApi* | [**v1_networks_network_interfaces_getall**](docs/NetworksApi.md#v1_networks_network_interfaces_getall) | **GET** /v1/networks/{network_id}/network-interfaces | Get all Network Interfaces for this network
*IbmCloudPower::NetworksApi* | [**v1_networks_network_interfaces_post**](docs/NetworksApi.md#v1_networks_network_interfaces_post) | **POST** /v1/networks/{network_id}/network-interfaces | Create a Network Interface
*IbmCloudPower::NetworksApi* | [**v1_networks_network_interfaces_put**](docs/NetworksApi.md#v1_networks_network_interfaces_put) | **PUT** /v1/networks/{network_id}/network-interfaces/{network_interface_id} | Update a Network Interface's information
*IbmCloudPower::PCloudCloudConnectionsApi* | [**pcloud_cloudconnections_delete**](docs/PCloudCloudConnectionsApi.md#pcloud_cloudconnections_delete) | **DELETE** /pcloud/v1/cloud-instances/{cloud_instance_id}/cloud-connections/{cloud_connection_id} | Delete a Cloud Connection
*IbmCloudPower::PCloudCloudConnectionsApi* | [**pcloud_cloudconnections_get**](docs/PCloudCloudConnectionsApi.md#pcloud_cloudconnections_get) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/cloud-connections/{cloud_connection_id} | Get a cloud connection's state/information
*IbmCloudPower::PCloudCloudConnectionsApi* | [**pcloud_cloudconnections_getall**](docs/PCloudCloudConnectionsApi.md#pcloud_cloudconnections_getall) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/cloud-connections | Get all cloud connections in this cloud instance
*IbmCloudPower::PCloudCloudConnectionsApi* | [**pcloud_cloudconnections_networks_delete**](docs/PCloudCloudConnectionsApi.md#pcloud_cloudconnections_networks_delete) | **DELETE** /pcloud/v1/cloud-instances/{cloud_instance_id}/cloud-connections/{cloud_connection_id}/networks/{network_id} | Detach a network from a Cloud Connection
*IbmCloudPower::PCloudCloudConnectionsApi* | [**pcloud_cloudconnections_networks_put**](docs/PCloudCloudConnectionsApi.md#pcloud_cloudconnections_networks_put) | **PUT** /pcloud/v1/cloud-instances/{cloud_instance_id}/cloud-connections/{cloud_connection_id}/networks/{network_id} | Attach a network to the cloud connection
*IbmCloudPower::PCloudCloudConnectionsApi* | [**pcloud_cloudconnections_post**](docs/PCloudCloudConnectionsApi.md#pcloud_cloudconnections_post) | **POST** /pcloud/v1/cloud-instances/{cloud_instance_id}/cloud-connections | Create a new cloud connection
*IbmCloudPower::PCloudCloudConnectionsApi* | [**pcloud_cloudconnections_put**](docs/PCloudCloudConnectionsApi.md#pcloud_cloudconnections_put) | **PUT** /pcloud/v1/cloud-instances/{cloud_instance_id}/cloud-connections/{cloud_connection_id} | Update a Cloud Connection
*IbmCloudPower::PCloudCloudConnectionsApi* | [**pcloud_cloudconnections_virtualprivateclouds_getall**](docs/PCloudCloudConnectionsApi.md#pcloud_cloudconnections_virtualprivateclouds_getall) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/cloud-connections-virtual-private-clouds | Get all virtual private cloud connections in this cloud instance
*IbmCloudPower::PCloudDisasterRecoveryApi* | [**pcloud_locations_disasterrecovery_get**](docs/PCloudDisasterRecoveryApi.md#pcloud_locations_disasterrecovery_get) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/locations/disaster-recovery | Get the disaster recovery site details for the current location
*IbmCloudPower::PCloudDisasterRecoveryApi* | [**pcloud_locations_disasterrecovery_getall**](docs/PCloudDisasterRecoveryApi.md#pcloud_locations_disasterrecovery_getall) | **GET** /pcloud/v1/locations/disaster-recovery | Get all disaster recovery locations supported by Power Virtual Server
*IbmCloudPower::PCloudEventsApi* | [**pcloud_events_get**](docs/PCloudEventsApi.md#pcloud_events_get) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/events/{event_id} | Get a single event
*IbmCloudPower::PCloudEventsApi* | [**pcloud_events_getsince**](docs/PCloudEventsApi.md#pcloud_events_getsince) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/events | Get events from this cloud instance since a specific timestamp
*IbmCloudPower::PCloudImagesApi* | [**pcloud_cloudinstances_images_delete**](docs/PCloudImagesApi.md#pcloud_cloudinstances_images_delete) | **DELETE** /pcloud/v1/cloud-instances/{cloud_instance_id}/images/{image_id} | Delete an Image from a Cloud Instance
*IbmCloudPower::PCloudImagesApi* | [**pcloud_cloudinstances_images_export_post**](docs/PCloudImagesApi.md#pcloud_cloudinstances_images_export_post) | **POST** /pcloud/v1/cloud-instances/{cloud_instance_id}/images/{image_id}/export | Export an image
*IbmCloudPower::PCloudImagesApi* | [**pcloud_cloudinstances_images_get**](docs/PCloudImagesApi.md#pcloud_cloudinstances_images_get) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/images/{image_id} | Detailed info of an image
*IbmCloudPower::PCloudImagesApi* | [**pcloud_cloudinstances_images_getall**](docs/PCloudImagesApi.md#pcloud_cloudinstances_images_getall) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/images | List all images for this cloud instance
*IbmCloudPower::PCloudImagesApi* | [**pcloud_cloudinstances_images_post**](docs/PCloudImagesApi.md#pcloud_cloudinstances_images_post) | **POST** /pcloud/v1/cloud-instances/{cloud_instance_id}/images | Create a new Image (from available images)
*IbmCloudPower::PCloudImagesApi* | [**pcloud_cloudinstances_stockimages_get**](docs/PCloudImagesApi.md#pcloud_cloudinstances_stockimages_get) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/stock-images/{image_id} | Detailed info of an available stock image
*IbmCloudPower::PCloudImagesApi* | [**pcloud_cloudinstances_stockimages_getall**](docs/PCloudImagesApi.md#pcloud_cloudinstances_stockimages_getall) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/stock-images | List all available stock images
*IbmCloudPower::PCloudImagesApi* | [**pcloud_images_get**](docs/PCloudImagesApi.md#pcloud_images_get) | **GET** /pcloud/v1/images/{image_id} | Detailed info of an image in the image-catalog
*IbmCloudPower::PCloudImagesApi* | [**pcloud_images_getall**](docs/PCloudImagesApi.md#pcloud_images_getall) | **GET** /pcloud/v1/images | List all the images in the image-catalog
*IbmCloudPower::PCloudImagesApi* | [**pcloud_v1_cloudinstances_cosimages_get**](docs/PCloudImagesApi.md#pcloud_v1_cloudinstances_cosimages_get) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/cos-images | Get detail of last cos-image import job
*IbmCloudPower::PCloudImagesApi* | [**pcloud_v1_cloudinstances_cosimages_post**](docs/PCloudImagesApi.md#pcloud_v1_cloudinstances_cosimages_post) | **POST** /pcloud/v1/cloud-instances/{cloud_instance_id}/cos-images | Create an cos-image import job
*IbmCloudPower::PCloudImagesApi* | [**pcloud_v2_images_export_get**](docs/PCloudImagesApi.md#pcloud_v2_images_export_get) | **GET** /pcloud/v2/cloud-instances/{cloud_instance_id}/images/{image_id}/export | Get detail of last image export job
*IbmCloudPower::PCloudImagesApi* | [**pcloud_v2_images_export_post**](docs/PCloudImagesApi.md#pcloud_v2_images_export_post) | **POST** /pcloud/v2/cloud-instances/{cloud_instance_id}/images/{image_id}/export | Add image export job to the jobs queue
*IbmCloudPower::PCloudInstancesApi* | [**pcloud_cloudinstances_get**](docs/PCloudInstancesApi.md#pcloud_cloudinstances_get) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id} | Get a Cloud Instance's current state/information
*IbmCloudPower::PCloudJobsApi* | [**pcloud_cloudinstances_jobs_delete**](docs/PCloudJobsApi.md#pcloud_cloudinstances_jobs_delete) | **DELETE** /pcloud/v1/cloud-instances/{cloud_instance_id}/jobs/{job_id} | Delete a cloud instance job
*IbmCloudPower::PCloudJobsApi* | [**pcloud_cloudinstances_jobs_get**](docs/PCloudJobsApi.md#pcloud_cloudinstances_jobs_get) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/jobs/{job_id} | List the detail of a job
*IbmCloudPower::PCloudJobsApi* | [**pcloud_cloudinstances_jobs_getall**](docs/PCloudJobsApi.md#pcloud_cloudinstances_jobs_getall) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/jobs | List up to the last 5 jobs initiated by the cloud instance
*IbmCloudPower::PCloudNetworksApi* | [**pcloud_networks_delete**](docs/PCloudNetworksApi.md#pcloud_networks_delete) | **DELETE** /pcloud/v1/cloud-instances/{cloud_instance_id}/networks/{network_id} | Delete a Network
*IbmCloudPower::PCloudNetworksApi* | [**pcloud_networks_get**](docs/PCloudNetworksApi.md#pcloud_networks_get) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/networks/{network_id} | Get a network's current state/information
*IbmCloudPower::PCloudNetworksApi* | [**pcloud_networks_getall**](docs/PCloudNetworksApi.md#pcloud_networks_getall) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/networks | Get all networks in this cloud instance
*IbmCloudPower::PCloudNetworksApi* | [**pcloud_networks_ports_delete**](docs/PCloudNetworksApi.md#pcloud_networks_ports_delete) | **DELETE** /pcloud/v1/cloud-instances/{cloud_instance_id}/networks/{network_id}/ports/{port_id} | Delete a Network Port
*IbmCloudPower::PCloudNetworksApi* | [**pcloud_networks_ports_get**](docs/PCloudNetworksApi.md#pcloud_networks_ports_get) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/networks/{network_id}/ports/{port_id} | Get a port's information
*IbmCloudPower::PCloudNetworksApi* | [**pcloud_networks_ports_getall**](docs/PCloudNetworksApi.md#pcloud_networks_ports_getall) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/networks/{network_id}/ports | Get all ports for this network
*IbmCloudPower::PCloudNetworksApi* | [**pcloud_networks_ports_post**](docs/PCloudNetworksApi.md#pcloud_networks_ports_post) | **POST** /pcloud/v1/cloud-instances/{cloud_instance_id}/networks/{network_id}/ports | Perform port addition, deletion, and listing
*IbmCloudPower::PCloudNetworksApi* | [**pcloud_networks_ports_put**](docs/PCloudNetworksApi.md#pcloud_networks_ports_put) | **PUT** /pcloud/v1/cloud-instances/{cloud_instance_id}/networks/{network_id}/ports/{port_id} | Update a port's information
*IbmCloudPower::PCloudNetworksApi* | [**pcloud_networks_post**](docs/PCloudNetworksApi.md#pcloud_networks_post) | **POST** /pcloud/v1/cloud-instances/{cloud_instance_id}/networks | Create a new Network
*IbmCloudPower::PCloudNetworksApi* | [**pcloud_networks_put**](docs/PCloudNetworksApi.md#pcloud_networks_put) | **PUT** /pcloud/v1/cloud-instances/{cloud_instance_id}/networks/{network_id} | Update a Network
*IbmCloudPower::PCloudPVMInstancesApi* | [**pcloud_pvminstances_action_post**](docs/PCloudPVMInstancesApi.md#pcloud_pvminstances_action_post) | **POST** /pcloud/v1/cloud-instances/{cloud_instance_id}/pvm-instances/{pvm_instance_id}/action | Perform an action on a PVMInstance
*IbmCloudPower::PCloudPVMInstancesApi* | [**pcloud_pvminstances_capture_post**](docs/PCloudPVMInstancesApi.md#pcloud_pvminstances_capture_post) | **POST** /pcloud/v1/cloud-instances/{cloud_instance_id}/pvm-instances/{pvm_instance_id}/capture | Capture a PVMInstance and create a deployable image
*IbmCloudPower::PCloudPVMInstancesApi* | [**pcloud_pvminstances_console_get**](docs/PCloudPVMInstancesApi.md#pcloud_pvminstances_console_get) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/pvm-instances/{pvm_instance_id}/console | List all console languages
*IbmCloudPower::PCloudPVMInstancesApi* | [**pcloud_pvminstances_console_post**](docs/PCloudPVMInstancesApi.md#pcloud_pvminstances_console_post) | **POST** /pcloud/v1/cloud-instances/{cloud_instance_id}/pvm-instances/{pvm_instance_id}/console | Generate the noVNC Console URL
*IbmCloudPower::PCloudPVMInstancesApi* | [**pcloud_pvminstances_console_put**](docs/PCloudPVMInstancesApi.md#pcloud_pvminstances_console_put) | **PUT** /pcloud/v1/cloud-instances/{cloud_instance_id}/pvm-instances/{pvm_instance_id}/console | Update PVMInstance console language code
*IbmCloudPower::PCloudPVMInstancesApi* | [**pcloud_pvminstances_delete**](docs/PCloudPVMInstancesApi.md#pcloud_pvminstances_delete) | **DELETE** /pcloud/v1/cloud-instances/{cloud_instance_id}/pvm-instances/{pvm_instance_id} | Delete a PCloud PVM Instance
*IbmCloudPower::PCloudPVMInstancesApi* | [**pcloud_pvminstances_get**](docs/PCloudPVMInstancesApi.md#pcloud_pvminstances_get) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/pvm-instances/{pvm_instance_id} | Get a PVM Instance's current state or information
*IbmCloudPower::PCloudPVMInstancesApi* | [**pcloud_pvminstances_getall**](docs/PCloudPVMInstancesApi.md#pcloud_pvminstances_getall) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/pvm-instances | Get all the pvm instances for this cloud instance
*IbmCloudPower::PCloudPVMInstancesApi* | [**pcloud_pvminstances_networks_delete**](docs/PCloudPVMInstancesApi.md#pcloud_pvminstances_networks_delete) | **DELETE** /pcloud/v1/cloud-instances/{cloud_instance_id}/pvm-instances/{pvm_instance_id}/networks/{network_id} | Remove all Address of Network from a PVM Instance
*IbmCloudPower::PCloudPVMInstancesApi* | [**pcloud_pvminstances_networks_get**](docs/PCloudPVMInstancesApi.md#pcloud_pvminstances_networks_get) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/pvm-instances/{pvm_instance_id}/networks/{network_id} | Get a PVM Instance's network information
*IbmCloudPower::PCloudPVMInstancesApi* | [**pcloud_pvminstances_networks_getall**](docs/PCloudPVMInstancesApi.md#pcloud_pvminstances_networks_getall) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/pvm-instances/{pvm_instance_id}/networks | Get all networks for this PVM Instance
*IbmCloudPower::PCloudPVMInstancesApi* | [**pcloud_pvminstances_networks_post**](docs/PCloudPVMInstancesApi.md#pcloud_pvminstances_networks_post) | **POST** /pcloud/v1/cloud-instances/{cloud_instance_id}/pvm-instances/{pvm_instance_id}/networks | Perform network addition
*IbmCloudPower::PCloudPVMInstancesApi* | [**pcloud_pvminstances_operations_post**](docs/PCloudPVMInstancesApi.md#pcloud_pvminstances_operations_post) | **POST** /pcloud/v1/cloud-instances/{cloud_instance_id}/pvm-instances/{pvm_instance_id}/operations | Perform an operation on a PVMInstance
*IbmCloudPower::PCloudPVMInstancesApi* | [**pcloud_pvminstances_post**](docs/PCloudPVMInstancesApi.md#pcloud_pvminstances_post) | **POST** /pcloud/v1/cloud-instances/{cloud_instance_id}/pvm-instances | Create a new Power VM Instance
*IbmCloudPower::PCloudPVMInstancesApi* | [**pcloud_pvminstances_put**](docs/PCloudPVMInstancesApi.md#pcloud_pvminstances_put) | **PUT** /pcloud/v1/cloud-instances/{cloud_instance_id}/pvm-instances/{pvm_instance_id} | Update a PCloud PVM Instance
*IbmCloudPower::PCloudPVMInstancesApi* | [**pcloud_pvminstances_snapshots_getall**](docs/PCloudPVMInstancesApi.md#pcloud_pvminstances_snapshots_getall) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/pvm-instances/{pvm_instance_id}/snapshots | Get all snapshots for this PVM Instance
*IbmCloudPower::PCloudPVMInstancesApi* | [**pcloud_pvminstances_snapshots_post**](docs/PCloudPVMInstancesApi.md#pcloud_pvminstances_snapshots_post) | **POST** /pcloud/v1/cloud-instances/{cloud_instance_id}/pvm-instances/{pvm_instance_id}/snapshots | Create a PVM Instance snapshot
*IbmCloudPower::PCloudPVMInstancesApi* | [**pcloud_pvminstances_snapshots_restore_post**](docs/PCloudPVMInstancesApi.md#pcloud_pvminstances_snapshots_restore_post) | **POST** /pcloud/v1/cloud-instances/{cloud_instance_id}/pvm-instances/{pvm_instance_id}/snapshots/{snapshot_id}/restore | Restore a PVM Instance snapshot
*IbmCloudPower::PCloudPVMInstancesApi* | [**pcloud_v2_pvminstances_capture_get**](docs/PCloudPVMInstancesApi.md#pcloud_v2_pvminstances_capture_get) | **GET** /pcloud/v2/cloud-instances/{cloud_instance_id}/pvm-instances/{pvm_instance_id}/capture | Get detail of last capture job
*IbmCloudPower::PCloudPVMInstancesApi* | [**pcloud_v2_pvminstances_capture_post**](docs/PCloudPVMInstancesApi.md#pcloud_v2_pvminstances_capture_post) | **POST** /pcloud/v2/cloud-instances/{cloud_instance_id}/pvm-instances/{pvm_instance_id}/capture | Add a capture pvm-instance to the jobs queue
*IbmCloudPower::PCloudPVMInstancesApi* | [**pcloud_v2_pvminstances_getall**](docs/PCloudPVMInstancesApi.md#pcloud_v2_pvminstances_getall) | **GET** /pcloud/v2/cloud-instances/{cloud_instance_id}/pvm-instances | Get all the pvm instances for this cloud instance
*IbmCloudPower::PCloudPlacementGroupsApi* | [**pcloud_placementgroups_delete**](docs/PCloudPlacementGroupsApi.md#pcloud_placementgroups_delete) | **DELETE** /pcloud/v1/cloud-instances/{cloud_instance_id}/placement-groups/{placement_group_id} | Delete Server Placement Group
*IbmCloudPower::PCloudPlacementGroupsApi* | [**pcloud_placementgroups_get**](docs/PCloudPlacementGroupsApi.md#pcloud_placementgroups_get) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/placement-groups/{placement_group_id} | Get Server Placement Group detail
*IbmCloudPower::PCloudPlacementGroupsApi* | [**pcloud_placementgroups_getall**](docs/PCloudPlacementGroupsApi.md#pcloud_placementgroups_getall) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/placement-groups | Get all Server Placement Groups
*IbmCloudPower::PCloudPlacementGroupsApi* | [**pcloud_placementgroups_members_delete**](docs/PCloudPlacementGroupsApi.md#pcloud_placementgroups_members_delete) | **DELETE** /pcloud/v1/cloud-instances/{cloud_instance_id}/placement-groups/{placement_group_id}/members | Remove Server from Placement Group
*IbmCloudPower::PCloudPlacementGroupsApi* | [**pcloud_placementgroups_members_post**](docs/PCloudPlacementGroupsApi.md#pcloud_placementgroups_members_post) | **POST** /pcloud/v1/cloud-instances/{cloud_instance_id}/placement-groups/{placement_group_id}/members | Add Server to Placement Group
*IbmCloudPower::PCloudPlacementGroupsApi* | [**pcloud_placementgroups_post**](docs/PCloudPlacementGroupsApi.md#pcloud_placementgroups_post) | **POST** /pcloud/v1/cloud-instances/{cloud_instance_id}/placement-groups | Create a new Server Placement Group
*IbmCloudPower::PCloudPodCapacityApi* | [**pcloud_podcapacity_get**](docs/PCloudPodCapacityApi.md#pcloud_podcapacity_get) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/pod-capacity | List of available resources within a particular Pod
*IbmCloudPower::PCloudSAPApi* | [**pcloud_sap_get**](docs/PCloudSAPApi.md#pcloud_sap_get) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/sap/{sap_profile_id} | Get the information on an SAP profile
*IbmCloudPower::PCloudSAPApi* | [**pcloud_sap_getall**](docs/PCloudSAPApi.md#pcloud_sap_getall) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/sap | Get list of SAP profiles
*IbmCloudPower::PCloudSAPApi* | [**pcloud_sap_post**](docs/PCloudSAPApi.md#pcloud_sap_post) | **POST** /pcloud/v1/cloud-instances/{cloud_instance_id}/sap | Create a new SAP PVM Instance
*IbmCloudPower::PCloudSPPPlacementGroupsApi* | [**pcloud_sppplacementgroups_delete**](docs/PCloudSPPPlacementGroupsApi.md#pcloud_sppplacementgroups_delete) | **DELETE** /pcloud/v1/cloud-instances/{cloud_instance_id}/spp-placement-groups/{spp_placement_group_id} | Delete a Shared Processor Pool Placement Group from a cloud instance
*IbmCloudPower::PCloudSPPPlacementGroupsApi* | [**pcloud_sppplacementgroups_get**](docs/PCloudSPPPlacementGroupsApi.md#pcloud_sppplacementgroups_get) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/spp-placement-groups/{spp_placement_group_id} | Get the detail of a Shared Processor Pool Placement Group for a cloud instance
*IbmCloudPower::PCloudSPPPlacementGroupsApi* | [**pcloud_sppplacementgroups_getall**](docs/PCloudSPPPlacementGroupsApi.md#pcloud_sppplacementgroups_getall) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/spp-placement-groups | Get the list of Shared Processor Pool Placement Groups for a cloud instance
*IbmCloudPower::PCloudSPPPlacementGroupsApi* | [**pcloud_sppplacementgroups_members_delete**](docs/PCloudSPPPlacementGroupsApi.md#pcloud_sppplacementgroups_members_delete) | **DELETE** /pcloud/v1/cloud-instances/{cloud_instance_id}/spp-placement-groups/{spp_placement_group_id}/members/{shared_processor_pool_id} | Delete Shared Processor Pool member from a Shared Processor Pool Placement Group
*IbmCloudPower::PCloudSPPPlacementGroupsApi* | [**pcloud_sppplacementgroups_members_post**](docs/PCloudSPPPlacementGroupsApi.md#pcloud_sppplacementgroups_members_post) | **POST** /pcloud/v1/cloud-instances/{cloud_instance_id}/spp-placement-groups/{spp_placement_group_id}/members/{shared_processor_pool_id} | Add Shared Processor Pool as a member of a Shared Processor Pool Placement Group
*IbmCloudPower::PCloudSPPPlacementGroupsApi* | [**pcloud_sppplacementgroups_post**](docs/PCloudSPPPlacementGroupsApi.md#pcloud_sppplacementgroups_post) | **POST** /pcloud/v1/cloud-instances/{cloud_instance_id}/spp-placement-groups | Create a new Shared Processor Pool Placement Group
*IbmCloudPower::PCloudSharedProcessorPoolsApi* | [**pcloud_sharedprocessorpools_delete**](docs/PCloudSharedProcessorPoolsApi.md#pcloud_sharedprocessorpools_delete) | **DELETE** /pcloud/v1/cloud-instances/{cloud_instance_id}/shared-processor-pools/{shared_processor_pool_id} | Delete a Shared Processor Pool from a cloud instance
*IbmCloudPower::PCloudSharedProcessorPoolsApi* | [**pcloud_sharedprocessorpools_get**](docs/PCloudSharedProcessorPoolsApi.md#pcloud_sharedprocessorpools_get) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/shared-processor-pools/{shared_processor_pool_id} | Get the detail of a Shared Processor Pool for a cloud instance
*IbmCloudPower::PCloudSharedProcessorPoolsApi* | [**pcloud_sharedprocessorpools_getall**](docs/PCloudSharedProcessorPoolsApi.md#pcloud_sharedprocessorpools_getall) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/shared-processor-pools | Get the list of Shared Processor Pools for a cloud instance
*IbmCloudPower::PCloudSharedProcessorPoolsApi* | [**pcloud_sharedprocessorpools_post**](docs/PCloudSharedProcessorPoolsApi.md#pcloud_sharedprocessorpools_post) | **POST** /pcloud/v1/cloud-instances/{cloud_instance_id}/shared-processor-pools | Create a new Shared Processor Pool
*IbmCloudPower::PCloudSharedProcessorPoolsApi* | [**pcloud_sharedprocessorpools_put**](docs/PCloudSharedProcessorPoolsApi.md#pcloud_sharedprocessorpools_put) | **PUT** /pcloud/v1/cloud-instances/{cloud_instance_id}/shared-processor-pools/{shared_processor_pool_id} | Update a Shared Processor Pool for a cloud instance
*IbmCloudPower::PCloudSnapshotsApi* | [**pcloud_cloudinstances_snapshots_delete**](docs/PCloudSnapshotsApi.md#pcloud_cloudinstances_snapshots_delete) | **DELETE** /pcloud/v1/cloud-instances/{cloud_instance_id}/snapshots/{snapshot_id} | Delete a PVM instance snapshot of a cloud instance
*IbmCloudPower::PCloudSnapshotsApi* | [**pcloud_cloudinstances_snapshots_get**](docs/PCloudSnapshotsApi.md#pcloud_cloudinstances_snapshots_get) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/snapshots/{snapshot_id} | Get the detail of a snapshot
*IbmCloudPower::PCloudSnapshotsApi* | [**pcloud_cloudinstances_snapshots_getall**](docs/PCloudSnapshotsApi.md#pcloud_cloudinstances_snapshots_getall) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/snapshots | List all PVM instance snapshots for this cloud instance
*IbmCloudPower::PCloudSnapshotsApi* | [**pcloud_cloudinstances_snapshots_put**](docs/PCloudSnapshotsApi.md#pcloud_cloudinstances_snapshots_put) | **PUT** /pcloud/v1/cloud-instances/{cloud_instance_id}/snapshots/{snapshot_id} | Update a PVM instance snapshot
*IbmCloudPower::PCloudStorageCapacityApi* | [**pcloud_storagecapacity_pools_get**](docs/PCloudStorageCapacityApi.md#pcloud_storagecapacity_pools_get) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/storage-capacity/storage-pools/{storage_pool_name} | Storage capacity for a storage pool in a region
*IbmCloudPower::PCloudStorageCapacityApi* | [**pcloud_storagecapacity_pools_getall**](docs/PCloudStorageCapacityApi.md#pcloud_storagecapacity_pools_getall) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/storage-capacity/storage-pools | Storage capacity for all available storage pools in a region
*IbmCloudPower::PCloudStorageCapacityApi* | [**pcloud_storagecapacity_types_get**](docs/PCloudStorageCapacityApi.md#pcloud_storagecapacity_types_get) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/storage-capacity/storage-types/{storage_type_name} | Storage capacity for a storage type in a region
*IbmCloudPower::PCloudStorageCapacityApi* | [**pcloud_storagecapacity_types_getall**](docs/PCloudStorageCapacityApi.md#pcloud_storagecapacity_types_getall) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/storage-capacity/storage-types | Storage capacity for all available storage types in a region
*IbmCloudPower::PCloudStorageTiersApi* | [**pcloud_cloudinstances_storagetiers_getall**](docs/PCloudStorageTiersApi.md#pcloud_cloudinstances_storagetiers_getall) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/storage-tiers | List all supported storage tiers for this cloud instance
*IbmCloudPower::PCloudTasksApi* | [**pcloud_tasks_delete**](docs/PCloudTasksApi.md#pcloud_tasks_delete) | **DELETE** /pcloud/v1/tasks/{task_id} | Delete a Task
*IbmCloudPower::PCloudTasksApi* | [**pcloud_tasks_get**](docs/PCloudTasksApi.md#pcloud_tasks_get) | **GET** /pcloud/v1/tasks/{task_id} | Get a Task
*IbmCloudPower::PCloudTenantsApi* | [**pcloud_tenants_get**](docs/PCloudTenantsApi.md#pcloud_tenants_get) | **GET** /pcloud/v1/tenants/{tenant_id} | Get a Tenant's current state/information
*IbmCloudPower::PCloudTenantsApi* | [**pcloud_tenants_put**](docs/PCloudTenantsApi.md#pcloud_tenants_put) | **PUT** /pcloud/v1/tenants/{tenant_id} | Update a tenant
*IbmCloudPower::PCloudTenantsSSHKeysApi* | [**pcloud_tenants_sshkeys_delete**](docs/PCloudTenantsSSHKeysApi.md#pcloud_tenants_sshkeys_delete) | **DELETE** /pcloud/v1/tenants/{tenant_id}/sshkeys/{sshkey_name} | Delete a Tenant's SSH key
*IbmCloudPower::PCloudTenantsSSHKeysApi* | [**pcloud_tenants_sshkeys_get**](docs/PCloudTenantsSSHKeysApi.md#pcloud_tenants_sshkeys_get) | **GET** /pcloud/v1/tenants/{tenant_id}/sshkeys/{sshkey_name} | Get a Tenant's SSH Key by name
*IbmCloudPower::PCloudTenantsSSHKeysApi* | [**pcloud_tenants_sshkeys_getall**](docs/PCloudTenantsSSHKeysApi.md#pcloud_tenants_sshkeys_getall) | **GET** /pcloud/v1/tenants/{tenant_id}/sshkeys | List a Tenant's SSH Keys
*IbmCloudPower::PCloudTenantsSSHKeysApi* | [**pcloud_tenants_sshkeys_post**](docs/PCloudTenantsSSHKeysApi.md#pcloud_tenants_sshkeys_post) | **POST** /pcloud/v1/tenants/{tenant_id}/sshkeys | Add a new SSH key to the Tenant
*IbmCloudPower::PCloudTenantsSSHKeysApi* | [**pcloud_tenants_sshkeys_put**](docs/PCloudTenantsSSHKeysApi.md#pcloud_tenants_sshkeys_put) | **PUT** /pcloud/v1/tenants/{tenant_id}/sshkeys/{sshkey_name} | Update an SSH Key
*IbmCloudPower::PCloudVPMemVolumesApi* | [**pcloud_pvminstances_vpmem_volumes_delete**](docs/PCloudVPMemVolumesApi.md#pcloud_pvminstances_vpmem_volumes_delete) | **DELETE** /pcloud/v1/cloud-instances/{cloud_instance_id}/pvm-instances/{pvm_instance_id}/vpmem-volumes/{vpmem_volume_id} | Delete a vPMEM volume attached to this PVM Instance
*IbmCloudPower::PCloudVPMemVolumesApi* | [**pcloud_pvminstances_vpmem_volumes_get**](docs/PCloudVPMemVolumesApi.md#pcloud_pvminstances_vpmem_volumes_get) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/pvm-instances/{pvm_instance_id}/vpmem-volumes/{vpmem_volume_id} | Get information about a vPMEM volume
*IbmCloudPower::PCloudVPMemVolumesApi* | [**pcloud_pvminstances_vpmem_volumes_getall**](docs/PCloudVPMemVolumesApi.md#pcloud_pvminstances_vpmem_volumes_getall) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/pvm-instances/{pvm_instance_id}/vpmem-volumes | List all vPMEM volumes attached to this PVM Instance
*IbmCloudPower::PCloudVPMemVolumesApi* | [**pcloud_pvminstances_vpmem_volumes_post**](docs/PCloudVPMemVolumesApi.md#pcloud_pvminstances_vpmem_volumes_post) | **POST** /pcloud/v1/cloud-instances/{cloud_instance_id}/pvm-instances/{pvm_instance_id}/vpmem-volumes | Create a vPMEM volume to be attached to this PVM Instance
*IbmCloudPower::PCloudVPMemVolumesApi* | [**pcloud_pvminstances_vpmem_volumes_put**](docs/PCloudVPMemVolumesApi.md#pcloud_pvminstances_vpmem_volumes_put) | **PUT** /pcloud/v1/cloud-instances/{cloud_instance_id}/pvm-instances/{pvm_instance_id}/vpmem-volumes/{vpmem_volume_id} | Update a vPMEM volume attached to this PVM Instance
*IbmCloudPower::PCloudVPNConnectionsApi* | [**pcloud_vpnconnections_delete**](docs/PCloudVPNConnectionsApi.md#pcloud_vpnconnections_delete) | **DELETE** /pcloud/v1/cloud-instances/{cloud_instance_id}/vpn/vpn-connections/{vpn_connection_id} | Delete VPN Connection
*IbmCloudPower::PCloudVPNConnectionsApi* | [**pcloud_vpnconnections_get**](docs/PCloudVPNConnectionsApi.md#pcloud_vpnconnections_get) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/vpn/vpn-connections/{vpn_connection_id} | Get VPN Connection
*IbmCloudPower::PCloudVPNConnectionsApi* | [**pcloud_vpnconnections_getall**](docs/PCloudVPNConnectionsApi.md#pcloud_vpnconnections_getall) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/vpn/vpn-connections | Get all VPN Connections
*IbmCloudPower::PCloudVPNConnectionsApi* | [**pcloud_vpnconnections_networks_delete**](docs/PCloudVPNConnectionsApi.md#pcloud_vpnconnections_networks_delete) | **DELETE** /pcloud/v1/cloud-instances/{cloud_instance_id}/vpn/vpn-connections/{vpn_connection_id}/networks | Detach network
*IbmCloudPower::PCloudVPNConnectionsApi* | [**pcloud_vpnconnections_networks_get**](docs/PCloudVPNConnectionsApi.md#pcloud_vpnconnections_networks_get) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/vpn/vpn-connections/{vpn_connection_id}/networks | Get attached networks
*IbmCloudPower::PCloudVPNConnectionsApi* | [**pcloud_vpnconnections_networks_put**](docs/PCloudVPNConnectionsApi.md#pcloud_vpnconnections_networks_put) | **PUT** /pcloud/v1/cloud-instances/{cloud_instance_id}/vpn/vpn-connections/{vpn_connection_id}/networks | Attach network
*IbmCloudPower::PCloudVPNConnectionsApi* | [**pcloud_vpnconnections_peersubnets_delete**](docs/PCloudVPNConnectionsApi.md#pcloud_vpnconnections_peersubnets_delete) | **DELETE** /pcloud/v1/cloud-instances/{cloud_instance_id}/vpn/vpn-connections/{vpn_connection_id}/peer-subnets | Detach Peer Subnet
*IbmCloudPower::PCloudVPNConnectionsApi* | [**pcloud_vpnconnections_peersubnets_get**](docs/PCloudVPNConnectionsApi.md#pcloud_vpnconnections_peersubnets_get) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/vpn/vpn-connections/{vpn_connection_id}/peer-subnets | Get Peer Subnets
*IbmCloudPower::PCloudVPNConnectionsApi* | [**pcloud_vpnconnections_peersubnets_put**](docs/PCloudVPNConnectionsApi.md#pcloud_vpnconnections_peersubnets_put) | **PUT** /pcloud/v1/cloud-instances/{cloud_instance_id}/vpn/vpn-connections/{vpn_connection_id}/peer-subnets | Attach Peer Subnet
*IbmCloudPower::PCloudVPNConnectionsApi* | [**pcloud_vpnconnections_post**](docs/PCloudVPNConnectionsApi.md#pcloud_vpnconnections_post) | **POST** /pcloud/v1/cloud-instances/{cloud_instance_id}/vpn/vpn-connections | Create VPN Connection
*IbmCloudPower::PCloudVPNConnectionsApi* | [**pcloud_vpnconnections_put**](docs/PCloudVPNConnectionsApi.md#pcloud_vpnconnections_put) | **PUT** /pcloud/v1/cloud-instances/{cloud_instance_id}/vpn/vpn-connections/{vpn_connection_id} | Update VPN Connection
*IbmCloudPower::PCloudVPNPoliciesApi* | [**pcloud_ikepolicies_delete**](docs/PCloudVPNPoliciesApi.md#pcloud_ikepolicies_delete) | **DELETE** /pcloud/v1/cloud-instances/{cloud_instance_id}/vpn/ike-policies/{ike_policy_id} | Delete IKE Policy
*IbmCloudPower::PCloudVPNPoliciesApi* | [**pcloud_ikepolicies_get**](docs/PCloudVPNPoliciesApi.md#pcloud_ikepolicies_get) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/vpn/ike-policies/{ike_policy_id} | Get the specified IKE Policy
*IbmCloudPower::PCloudVPNPoliciesApi* | [**pcloud_ikepolicies_getall**](docs/PCloudVPNPoliciesApi.md#pcloud_ikepolicies_getall) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/vpn/ike-policies | Get all IKE Policies
*IbmCloudPower::PCloudVPNPoliciesApi* | [**pcloud_ikepolicies_post**](docs/PCloudVPNPoliciesApi.md#pcloud_ikepolicies_post) | **POST** /pcloud/v1/cloud-instances/{cloud_instance_id}/vpn/ike-policies | Add IKE Policy
*IbmCloudPower::PCloudVPNPoliciesApi* | [**pcloud_ikepolicies_put**](docs/PCloudVPNPoliciesApi.md#pcloud_ikepolicies_put) | **PUT** /pcloud/v1/cloud-instances/{cloud_instance_id}/vpn/ike-policies/{ike_policy_id} | Update IKE Policy
*IbmCloudPower::PCloudVPNPoliciesApi* | [**pcloud_ipsecpolicies_delete**](docs/PCloudVPNPoliciesApi.md#pcloud_ipsecpolicies_delete) | **DELETE** /pcloud/v1/cloud-instances/{cloud_instance_id}/vpn/ipsec-policies/{ipsec_policy_id} | Delete IPSec Policy
*IbmCloudPower::PCloudVPNPoliciesApi* | [**pcloud_ipsecpolicies_get**](docs/PCloudVPNPoliciesApi.md#pcloud_ipsecpolicies_get) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/vpn/ipsec-policies/{ipsec_policy_id} | Get the specified IPSec Policy
*IbmCloudPower::PCloudVPNPoliciesApi* | [**pcloud_ipsecpolicies_getall**](docs/PCloudVPNPoliciesApi.md#pcloud_ipsecpolicies_getall) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/vpn/ipsec-policies | Get all IPSec Policies
*IbmCloudPower::PCloudVPNPoliciesApi* | [**pcloud_ipsecpolicies_post**](docs/PCloudVPNPoliciesApi.md#pcloud_ipsecpolicies_post) | **POST** /pcloud/v1/cloud-instances/{cloud_instance_id}/vpn/ipsec-policies | Add IPSec Policy
*IbmCloudPower::PCloudVPNPoliciesApi* | [**pcloud_ipsecpolicies_put**](docs/PCloudVPNPoliciesApi.md#pcloud_ipsecpolicies_put) | **PUT** /pcloud/v1/cloud-instances/{cloud_instance_id}/vpn/ipsec-policies/{ipsec_policy_id} | Update IPSec Policy
*IbmCloudPower::PCloudVirtualSerialNumberApi* | [**pcloud_pvminstances_virtualserialnumber_delete**](docs/PCloudVirtualSerialNumberApi.md#pcloud_pvminstances_virtualserialnumber_delete) | **DELETE** /pcloud/v1/cloud-instances/{cloud_instance_id}/pvm-instances/{pvm_instance_id}/virtual-serial-number | Unassign Virtual Serial Number from a PVM Instance
*IbmCloudPower::PCloudVirtualSerialNumberApi* | [**pcloud_pvminstances_virtualserialnumber_get**](docs/PCloudVirtualSerialNumberApi.md#pcloud_pvminstances_virtualserialnumber_get) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/pvm-instances/{pvm_instance_id}/virtual-serial-number | Get a PVM Instance's Virtual Serial Number Information
*IbmCloudPower::PCloudVirtualSerialNumberApi* | [**pcloud_pvminstances_virtualserialnumber_post**](docs/PCloudVirtualSerialNumberApi.md#pcloud_pvminstances_virtualserialnumber_post) | **POST** /pcloud/v1/cloud-instances/{cloud_instance_id}/pvm-instances/{pvm_instance_id}/virtual-serial-number | Assign Virtual Serial Number to a PVM Instance
*IbmCloudPower::PCloudVirtualSerialNumberApi* | [**pcloud_pvminstances_virtualserialnumber_put**](docs/PCloudVirtualSerialNumberApi.md#pcloud_pvminstances_virtualserialnumber_put) | **PUT** /pcloud/v1/cloud-instances/{cloud_instance_id}/pvm-instances/{pvm_instance_id}/virtual-serial-number | Update a Virtual Serial Number
*IbmCloudPower::PCloudVirtualSerialNumberApi* | [**pcloud_virtualserialnumber_delete**](docs/PCloudVirtualSerialNumberApi.md#pcloud_virtualserialnumber_delete) | **DELETE** /v1/virtual-serial-number/{virtual_serial_number} | Unreserve a retained Virtual Serial Number
*IbmCloudPower::PCloudVirtualSerialNumberApi* | [**pcloud_virtualserialnumber_get**](docs/PCloudVirtualSerialNumberApi.md#pcloud_virtualserialnumber_get) | **GET** /v1/virtual-serial-number/{virtual_serial_number} | Get information for a Virtual Serial Number
*IbmCloudPower::PCloudVirtualSerialNumberApi* | [**pcloud_virtualserialnumber_getall**](docs/PCloudVirtualSerialNumberApi.md#pcloud_virtualserialnumber_getall) | **GET** /v1/virtual-serial-number | List all utilized and retained VSNs
*IbmCloudPower::PCloudVirtualSerialNumberApi* | [**pcloud_virtualserialnumber_put**](docs/PCloudVirtualSerialNumberApi.md#pcloud_virtualserialnumber_put) | **PUT** /v1/virtual-serial-number/{virtual_serial_number} | Update Description of a Reserved Virtual Serial Number
*IbmCloudPower::PCloudVirtualSerialNumberApi* | [**pcloud_virtualserialnumber_softwaretiers_getall**](docs/PCloudVirtualSerialNumberApi.md#pcloud_virtualserialnumber_softwaretiers_getall) | **GET** /v1/virtual-serial-number/software-tiers | List supported software tiers (IBMi licensing)
*IbmCloudPower::PCloudVolumeGroupsApi* | [**pcloud_volumegroups_action_post**](docs/PCloudVolumeGroupsApi.md#pcloud_volumegroups_action_post) | **POST** /pcloud/v1/cloud-instances/{cloud_instance_id}/volume-groups/{volume_group_id}/action | Perform an action on a volume group
*IbmCloudPower::PCloudVolumeGroupsApi* | [**pcloud_volumegroups_delete**](docs/PCloudVolumeGroupsApi.md#pcloud_volumegroups_delete) | **DELETE** /pcloud/v1/cloud-instances/{cloud_instance_id}/volume-groups/{volume_group_id} | Delete a cloud instance volume group
*IbmCloudPower::PCloudVolumeGroupsApi* | [**pcloud_volumegroups_get**](docs/PCloudVolumeGroupsApi.md#pcloud_volumegroups_get) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/volume-groups/{volume_group_id} | Get volume Group
*IbmCloudPower::PCloudVolumeGroupsApi* | [**pcloud_volumegroups_get_details**](docs/PCloudVolumeGroupsApi.md#pcloud_volumegroups_get_details) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/volume-groups/{volume_group_id}/details | Get volume Group details
*IbmCloudPower::PCloudVolumeGroupsApi* | [**pcloud_volumegroups_getall**](docs/PCloudVolumeGroupsApi.md#pcloud_volumegroups_getall) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/volume-groups | Get all volume groups
*IbmCloudPower::PCloudVolumeGroupsApi* | [**pcloud_volumegroups_getall_details**](docs/PCloudVolumeGroupsApi.md#pcloud_volumegroups_getall_details) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/volume-groups/details | Get all volume groups with details
*IbmCloudPower::PCloudVolumeGroupsApi* | [**pcloud_volumegroups_post**](docs/PCloudVolumeGroupsApi.md#pcloud_volumegroups_post) | **POST** /pcloud/v1/cloud-instances/{cloud_instance_id}/volume-groups | Create a new volume group
*IbmCloudPower::PCloudVolumeGroupsApi* | [**pcloud_volumegroups_put**](docs/PCloudVolumeGroupsApi.md#pcloud_volumegroups_put) | **PUT** /pcloud/v1/cloud-instances/{cloud_instance_id}/volume-groups/{volume_group_id} | updates the volume group
*IbmCloudPower::PCloudVolumeGroupsApi* | [**pcloud_volumegroups_remote_copy_relationships_get**](docs/PCloudVolumeGroupsApi.md#pcloud_volumegroups_remote_copy_relationships_get) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/volume-groups/{volume_group_id}/remote-copy-relationships | Get remote copy relationships of the volume belonging to volume group
*IbmCloudPower::PCloudVolumeGroupsApi* | [**pcloud_volumegroups_storage_details_get**](docs/PCloudVolumeGroupsApi.md#pcloud_volumegroups_storage_details_get) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/volume-groups/{volume_group_id}/storage-details | Get storage details of volume group
*IbmCloudPower::PCloudVolumeOnboardingApi* | [**pcloud_volume_onboarding_get**](docs/PCloudVolumeOnboardingApi.md#pcloud_volume_onboarding_get) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/volumes/onboarding/{volume_onboarding_id} | Get the information of volume onboarding operation
*IbmCloudPower::PCloudVolumeOnboardingApi* | [**pcloud_volume_onboarding_getall**](docs/PCloudVolumeOnboardingApi.md#pcloud_volume_onboarding_getall) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/volumes/onboarding | List all volume onboardings for this cloud instance
*IbmCloudPower::PCloudVolumeOnboardingApi* | [**pcloud_volume_onboarding_post**](docs/PCloudVolumeOnboardingApi.md#pcloud_volume_onboarding_post) | **POST** /pcloud/v1/cloud-instances/{cloud_instance_id}/volumes/onboarding | Onboard auxiliary volumes to target site
*IbmCloudPower::PCloudVolumesApi* | [**pcloud_cloudinstances_volumes_action_post**](docs/PCloudVolumesApi.md#pcloud_cloudinstances_volumes_action_post) | **POST** /pcloud/v1/cloud-instances/{cloud_instance_id}/volumes/{volume_id}/action | Perform an action on a Volume
*IbmCloudPower::PCloudVolumesApi* | [**pcloud_cloudinstances_volumes_delete**](docs/PCloudVolumesApi.md#pcloud_cloudinstances_volumes_delete) | **DELETE** /pcloud/v1/cloud-instances/{cloud_instance_id}/volumes/{volume_id} | Delete a cloud instance volume
*IbmCloudPower::PCloudVolumesApi* | [**pcloud_cloudinstances_volumes_flash_copy_mappings_get**](docs/PCloudVolumesApi.md#pcloud_cloudinstances_volumes_flash_copy_mappings_get) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/volumes/{volume_id}/flash-copy-mappings | Get a list of flashcopy mappings of a given volume
*IbmCloudPower::PCloudVolumesApi* | [**pcloud_cloudinstances_volumes_get**](docs/PCloudVolumesApi.md#pcloud_cloudinstances_volumes_get) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/volumes/{volume_id} | Detailed info of a volume
*IbmCloudPower::PCloudVolumesApi* | [**pcloud_cloudinstances_volumes_getall**](docs/PCloudVolumesApi.md#pcloud_cloudinstances_volumes_getall) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/volumes | List all volumes for this cloud instance
*IbmCloudPower::PCloudVolumesApi* | [**pcloud_cloudinstances_volumes_post**](docs/PCloudVolumesApi.md#pcloud_cloudinstances_volumes_post) | **POST** /pcloud/v1/cloud-instances/{cloud_instance_id}/volumes | Create a new data Volume
*IbmCloudPower::PCloudVolumesApi* | [**pcloud_cloudinstances_volumes_put**](docs/PCloudVolumesApi.md#pcloud_cloudinstances_volumes_put) | **PUT** /pcloud/v1/cloud-instances/{cloud_instance_id}/volumes/{volume_id} | Update a cloud instance volume
*IbmCloudPower::PCloudVolumesApi* | [**pcloud_cloudinstances_volumes_remote_copy_relationship_get**](docs/PCloudVolumesApi.md#pcloud_cloudinstances_volumes_remote_copy_relationship_get) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/volumes/{volume_id}/remote-copy | Get remote copy relationship of a volume
*IbmCloudPower::PCloudVolumesApi* | [**pcloud_pvminstances_volumes_delete**](docs/PCloudVolumesApi.md#pcloud_pvminstances_volumes_delete) | **DELETE** /pcloud/v1/cloud-instances/{cloud_instance_id}/pvm-instances/{pvm_instance_id}/volumes/{volume_id} | Detach a volume from a PVMInstance
*IbmCloudPower::PCloudVolumesApi* | [**pcloud_pvminstances_volumes_get**](docs/PCloudVolumesApi.md#pcloud_pvminstances_volumes_get) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/pvm-instances/{pvm_instance_id}/volumes/{volume_id} | Detailed info of a volume attached to a PVMInstance
*IbmCloudPower::PCloudVolumesApi* | [**pcloud_pvminstances_volumes_getall**](docs/PCloudVolumesApi.md#pcloud_pvminstances_volumes_getall) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/pvm-instances/{pvm_instance_id}/volumes | List all volumes attached to a PVM Instance
*IbmCloudPower::PCloudVolumesApi* | [**pcloud_pvminstances_volumes_post**](docs/PCloudVolumesApi.md#pcloud_pvminstances_volumes_post) | **POST** /pcloud/v1/cloud-instances/{cloud_instance_id}/pvm-instances/{pvm_instance_id}/volumes/{volume_id} | Attach a volume to a PVMInstance
*IbmCloudPower::PCloudVolumesApi* | [**pcloud_pvminstances_volumes_put**](docs/PCloudVolumesApi.md#pcloud_pvminstances_volumes_put) | **PUT** /pcloud/v1/cloud-instances/{cloud_instance_id}/pvm-instances/{pvm_instance_id}/volumes/{volume_id} | Update a volume attached to a PVMInstance
*IbmCloudPower::PCloudVolumesApi* | [**pcloud_pvminstances_volumes_setboot_put**](docs/PCloudVolumesApi.md#pcloud_pvminstances_volumes_setboot_put) | **PUT** /pcloud/v1/cloud-instances/{cloud_instance_id}/pvm-instances/{pvm_instance_id}/volumes/{volume_id}/setboot | Set the PVMInstance volume as the boot volume
*IbmCloudPower::PCloudVolumesApi* | [**pcloud_v2_pvminstances_volumes_delete**](docs/PCloudVolumesApi.md#pcloud_v2_pvminstances_volumes_delete) | **DELETE** /pcloud/v2/cloud-instances/{cloud_instance_id}/pvm-instances/{pvm_instance_id}/volumes | Detach multiple volumes from a PVMInstance
*IbmCloudPower::PCloudVolumesApi* | [**pcloud_v2_pvminstances_volumes_post**](docs/PCloudVolumesApi.md#pcloud_v2_pvminstances_volumes_post) | **POST** /pcloud/v2/cloud-instances/{cloud_instance_id}/pvm-instances/{pvm_instance_id}/volumes | Attach all volumes to a PVMInstance
*IbmCloudPower::PCloudVolumesApi* | [**pcloud_v2_volumes_clone_post**](docs/PCloudVolumesApi.md#pcloud_v2_volumes_clone_post) | **POST** /pcloud/v2/cloud-instances/{cloud_instance_id}/volumes/clone | Create a volume clone for specified volumes
*IbmCloudPower::PCloudVolumesApi* | [**pcloud_v2_volumes_clonetasks_get**](docs/PCloudVolumesApi.md#pcloud_v2_volumes_clonetasks_get) | **GET** /pcloud/v2/cloud-instances/{cloud_instance_id}/volumes/clone-tasks/{clone_task_id} | Get the status of a volumes clone request for the specified clone task ID
*IbmCloudPower::PCloudVolumesApi* | [**pcloud_v2_volumes_delete**](docs/PCloudVolumesApi.md#pcloud_v2_volumes_delete) | **DELETE** /pcloud/v2/cloud-instances/{cloud_instance_id}/volumes | Delete all volumes
*IbmCloudPower::PCloudVolumesApi* | [**pcloud_v2_volumes_post**](docs/PCloudVolumesApi.md#pcloud_v2_volumes_post) | **POST** /pcloud/v2/cloud-instances/{cloud_instance_id}/volumes | Create multiple data volumes from a single definition
*IbmCloudPower::PCloudVolumesApi* | [**pcloud_v2_volumesclone_cancel_post**](docs/PCloudVolumesApi.md#pcloud_v2_volumesclone_cancel_post) | **POST** /pcloud/v2/cloud-instances/{cloud_instance_id}/volumes-clone/{volumes_clone_id}/cancel | Cancel a volumes-clone request 
*IbmCloudPower::PCloudVolumesApi* | [**pcloud_v2_volumesclone_delete**](docs/PCloudVolumesApi.md#pcloud_v2_volumesclone_delete) | **DELETE** /pcloud/v2/cloud-instances/{cloud_instance_id}/volumes-clone/{volumes_clone_id} | Delete a volumes-clone request
*IbmCloudPower::PCloudVolumesApi* | [**pcloud_v2_volumesclone_execute_post**](docs/PCloudVolumesApi.md#pcloud_v2_volumesclone_execute_post) | **POST** /pcloud/v2/cloud-instances/{cloud_instance_id}/volumes-clone/{volumes_clone_id}/execute | Initiate the Execute action for a volumes-clone request 
*IbmCloudPower::PCloudVolumesApi* | [**pcloud_v2_volumesclone_get**](docs/PCloudVolumesApi.md#pcloud_v2_volumesclone_get) | **GET** /pcloud/v2/cloud-instances/{cloud_instance_id}/volumes-clone/{volumes_clone_id} | Get the details for a volumes-clone request
*IbmCloudPower::PCloudVolumesApi* | [**pcloud_v2_volumesclone_getall**](docs/PCloudVolumesApi.md#pcloud_v2_volumesclone_getall) | **GET** /pcloud/v2/cloud-instances/{cloud_instance_id}/volumes-clone | Get the list of volumes-clone request for a cloud instance
*IbmCloudPower::PCloudVolumesApi* | [**pcloud_v2_volumesclone_post**](docs/PCloudVolumesApi.md#pcloud_v2_volumesclone_post) | **POST** /pcloud/v2/cloud-instances/{cloud_instance_id}/volumes-clone | Create a new volumes clone request and initiates the Prepare action 
*IbmCloudPower::PCloudVolumesApi* | [**pcloud_v2_volumesclone_start_post**](docs/PCloudVolumesApi.md#pcloud_v2_volumesclone_start_post) | **POST** /pcloud/v2/cloud-instances/{cloud_instance_id}/volumes-clone/{volumes_clone_id}/start | Initiate the Start action for a volumes-clone request 
*IbmCloudPower::PCloudVolumesApi* | [**pcloud_volumes_clone_post**](docs/PCloudVolumesApi.md#pcloud_volumes_clone_post) | **POST** /pcloud/v1/cloud-instances/{cloud_instance_id}/volumes/clone | Create a volume clone for specified volumes
*IbmCloudPower::RoutesApi* | [**v1_routes_delete**](docs/RoutesApi.md#v1_routes_delete) | **DELETE** /v1/routes/{route_id} | Delete a route
*IbmCloudPower::RoutesApi* | [**v1_routes_get**](docs/RoutesApi.md#v1_routes_get) | **GET** /v1/routes/{route_id} | Get a route's information
*IbmCloudPower::RoutesApi* | [**v1_routes_getall**](docs/RoutesApi.md#v1_routes_getall) | **GET** /v1/routes | Get all routes in the workspace
*IbmCloudPower::RoutesApi* | [**v1_routes_post**](docs/RoutesApi.md#v1_routes_post) | **POST** /v1/routes | Perform a route creation
*IbmCloudPower::RoutesApi* | [**v1_routes_put**](docs/RoutesApi.md#v1_routes_put) | **PUT** /v1/routes/{route_id} | Update a route's information
*IbmCloudPower::RoutesApi* | [**v1_routes_report_get**](docs/RoutesApi.md#v1_routes_report_get) | **GET** /v1/routes/report | Get the route report for a workspace
*IbmCloudPower::SSHKeysApi* | [**v1_sshkeys_delete**](docs/SSHKeysApi.md#v1_sshkeys_delete) | **DELETE** /v1/ssh-keys/{sshkey_id} | Delete ssh-key
*IbmCloudPower::SSHKeysApi* | [**v1_sshkeys_get**](docs/SSHKeysApi.md#v1_sshkeys_get) | **GET** /v1/ssh-keys/{sshkey_id} | Get ssh-key information
*IbmCloudPower::SSHKeysApi* | [**v1_sshkeys_getall**](docs/SSHKeysApi.md#v1_sshkeys_getall) | **GET** /v1/ssh-keys | List SSH Keys
*IbmCloudPower::SSHKeysApi* | [**v1_sshkeys_post**](docs/SSHKeysApi.md#v1_sshkeys_post) | **POST** /v1/ssh-keys | Add a new SSH key
*IbmCloudPower::SSHKeysApi* | [**v1_sshkeys_put**](docs/SSHKeysApi.md#v1_sshkeys_put) | **PUT** /v1/ssh-keys/{sshkey_id} | Update the ssh key
*IbmCloudPower::SnapshotsApi* | [**v1_snapshots_get**](docs/SnapshotsApi.md#v1_snapshots_get) | **GET** /v1/snapshots/{snapshot_id} | Get the detail of a snapshot
*IbmCloudPower::SnapshotsApi* | [**v1_snapshots_getall**](docs/SnapshotsApi.md#v1_snapshots_getall) | **GET** /v1/snapshots | Get a list of all the snapshots on a workspace
*IbmCloudPower::SnapshotsApi* | [**v1_volume_snapshots_get**](docs/SnapshotsApi.md#v1_volume_snapshots_get) | **GET** /v1/volume-snapshots | Get the list of volume snapshots on a workspace
*IbmCloudPower::SnapshotsApi* | [**v1_volume_snapshots_get_0**](docs/SnapshotsApi.md#v1_volume_snapshots_get_0) | **GET** /v1/volume-snapshots/{volume_snapshot_uuid} | Get the detail of a volume snapshot
*IbmCloudPower::WorkspacesApi* | [**v1_workspaces_get**](docs/WorkspacesApi.md#v1_workspaces_get) | **GET** /v1/workspaces/{workspace_id} | Get a Workspace's information and capabilities
*IbmCloudPower::WorkspacesApi* | [**v1_workspaces_getall**](docs/WorkspacesApi.md#v1_workspaces_getall) | **GET** /v1/workspaces | Get all Workspaces information and capabilities for a tenant


## Documentation for Models

 - [IbmCloudPower::AccessConfig](docs/AccessConfig.md)
 - [IbmCloudPower::AddHost](docs/AddHost.md)
 - [IbmCloudPower::AddServerVirtualSerialNumber](docs/AddServerVirtualSerialNumber.md)
 - [IbmCloudPower::AuxiliaryVolumeForOnboarding](docs/AuxiliaryVolumeForOnboarding.md)
 - [IbmCloudPower::AuxiliaryVolumesForOnboarding](docs/AuxiliaryVolumesForOnboarding.md)
 - [IbmCloudPower::AuxiliaryVolumesForOnboardingAuxiliaryVolumesInner](docs/AuxiliaryVolumesForOnboardingAuxiliaryVolumesInner.md)
 - [IbmCloudPower::AvailableHost](docs/AvailableHost.md)
 - [IbmCloudPower::AvailableHostCapacity](docs/AvailableHostCapacity.md)
 - [IbmCloudPower::AvailableHostCapacityCores](docs/AvailableHostCapacityCores.md)
 - [IbmCloudPower::AvailableHostResourceCapacity](docs/AvailableHostResourceCapacity.md)
 - [IbmCloudPower::CapabilitiesDetails](docs/CapabilitiesDetails.md)
 - [IbmCloudPower::CapabilitiesDetailsDisasterRecovery](docs/CapabilitiesDetailsDisasterRecovery.md)
 - [IbmCloudPower::CapabilitiesDetailsSupportedSystems](docs/CapabilitiesDetailsSupportedSystems.md)
 - [IbmCloudPower::CloneTaskReference](docs/CloneTaskReference.md)
 - [IbmCloudPower::CloneTaskStatus](docs/CloneTaskStatus.md)
 - [IbmCloudPower::ClonedVolume](docs/ClonedVolume.md)
 - [IbmCloudPower::ClonedVolumeDetail](docs/ClonedVolumeDetail.md)
 - [IbmCloudPower::ClonedVolumeDetailClone](docs/ClonedVolumeDetailClone.md)
 - [IbmCloudPower::CloudConnection](docs/CloudConnection.md)
 - [IbmCloudPower::CloudConnectionClassic](docs/CloudConnectionClassic.md)
 - [IbmCloudPower::CloudConnectionCreate](docs/CloudConnectionCreate.md)
 - [IbmCloudPower::CloudConnectionCreateClassic](docs/CloudConnectionCreateClassic.md)
 - [IbmCloudPower::CloudConnectionCreateResponse](docs/CloudConnectionCreateResponse.md)
 - [IbmCloudPower::CloudConnectionEndpointClassic](docs/CloudConnectionEndpointClassic.md)
 - [IbmCloudPower::CloudConnectionEndpointClassicUpdate](docs/CloudConnectionEndpointClassicUpdate.md)
 - [IbmCloudPower::CloudConnectionEndpointVPC](docs/CloudConnectionEndpointVPC.md)
 - [IbmCloudPower::CloudConnectionGRETunnel](docs/CloudConnectionGRETunnel.md)
 - [IbmCloudPower::CloudConnectionGRETunnelCreate](docs/CloudConnectionGRETunnelCreate.md)
 - [IbmCloudPower::CloudConnectionUpdate](docs/CloudConnectionUpdate.md)
 - [IbmCloudPower::CloudConnectionVirtualPrivateClouds](docs/CloudConnectionVirtualPrivateClouds.md)
 - [IbmCloudPower::CloudConnectionVirtualPrivateCloudsVirtualPrivateCloudsInner](docs/CloudConnectionVirtualPrivateCloudsVirtualPrivateCloudsInner.md)
 - [IbmCloudPower::CloudConnectionVpc](docs/CloudConnectionVpc.md)
 - [IbmCloudPower::CloudConnections](docs/CloudConnections.md)
 - [IbmCloudPower::CloudInstance](docs/CloudInstance.md)
 - [IbmCloudPower::CloudInstanceReference](docs/CloudInstanceReference.md)
 - [IbmCloudPower::CloudInstanceUsageLimits](docs/CloudInstanceUsageLimits.md)
 - [IbmCloudPower::ConsoleLanguage](docs/ConsoleLanguage.md)
 - [IbmCloudPower::ConsoleLanguages](docs/ConsoleLanguages.md)
 - [IbmCloudPower::CreateCosImageImportJob](docs/CreateCosImageImportJob.md)
 - [IbmCloudPower::CreateDataVolume](docs/CreateDataVolume.md)
 - [IbmCloudPower::CreateImage](docs/CreateImage.md)
 - [IbmCloudPower::CreateServerVirtualSerialNumber](docs/CreateServerVirtualSerialNumber.md)
 - [IbmCloudPower::CreateWorkspaceSSHKey](docs/CreateWorkspaceSSHKey.md)
 - [IbmCloudPower::Datacenter](docs/Datacenter.md)
 - [IbmCloudPower::DatacenterLocation](docs/DatacenterLocation.md)
 - [IbmCloudPower::Datacenters](docs/Datacenters.md)
 - [IbmCloudPower::DeadPeerDetection](docs/DeadPeerDetection.md)
 - [IbmCloudPower::DeleteServerVirtualSerialNumber](docs/DeleteServerVirtualSerialNumber.md)
 - [IbmCloudPower::DeploymentTarget](docs/DeploymentTarget.md)
 - [IbmCloudPower::DisasterRecovery](docs/DisasterRecovery.md)
 - [IbmCloudPower::DisasterRecoveryAsynchronousReplication](docs/DisasterRecoveryAsynchronousReplication.md)
 - [IbmCloudPower::DisasterRecoveryLocation](docs/DisasterRecoveryLocation.md)
 - [IbmCloudPower::DisasterRecoveryLocations](docs/DisasterRecoveryLocations.md)
 - [IbmCloudPower::Error](docs/Error.md)
 - [IbmCloudPower::Event](docs/Event.md)
 - [IbmCloudPower::EventUser](docs/EventUser.md)
 - [IbmCloudPower::Events](docs/Events.md)
 - [IbmCloudPower::ExportImage](docs/ExportImage.md)
 - [IbmCloudPower::FlashCopyMapping](docs/FlashCopyMapping.md)
 - [IbmCloudPower::GetBulkVolume](docs/GetBulkVolume.md)
 - [IbmCloudPower::GetServerVirtualSerialNumber](docs/GetServerVirtualSerialNumber.md)
 - [IbmCloudPower::Host](docs/Host.md)
 - [IbmCloudPower::HostCapacity](docs/HostCapacity.md)
 - [IbmCloudPower::HostCapacityCores](docs/HostCapacityCores.md)
 - [IbmCloudPower::HostCreate](docs/HostCreate.md)
 - [IbmCloudPower::HostGroup](docs/HostGroup.md)
 - [IbmCloudPower::HostGroupCreate](docs/HostGroupCreate.md)
 - [IbmCloudPower::HostGroupShareOp](docs/HostGroupShareOp.md)
 - [IbmCloudPower::HostGroupSummary](docs/HostGroupSummary.md)
 - [IbmCloudPower::HostHostGroup](docs/HostHostGroup.md)
 - [IbmCloudPower::HostPut](docs/HostPut.md)
 - [IbmCloudPower::HostResourceCapacity](docs/HostResourceCapacity.md)
 - [IbmCloudPower::IKEPolicies](docs/IKEPolicies.md)
 - [IbmCloudPower::IKEPolicy](docs/IKEPolicy.md)
 - [IbmCloudPower::IKEPolicyAuthentication](docs/IKEPolicyAuthentication.md)
 - [IbmCloudPower::IKEPolicyCreate](docs/IKEPolicyCreate.md)
 - [IbmCloudPower::IKEPolicyRef](docs/IKEPolicyRef.md)
 - [IbmCloudPower::IKEPolicyUpdate](docs/IKEPolicyUpdate.md)
 - [IbmCloudPower::IPAddressRange](docs/IPAddressRange.md)
 - [IbmCloudPower::IPSECPolicyAuthentication](docs/IPSECPolicyAuthentication.md)
 - [IbmCloudPower::IPSecPolicies](docs/IPSecPolicies.md)
 - [IbmCloudPower::IPSecPolicy](docs/IPSecPolicy.md)
 - [IbmCloudPower::IPSecPolicyCreate](docs/IPSecPolicyCreate.md)
 - [IbmCloudPower::IPSecPolicyRef](docs/IPSecPolicyRef.md)
 - [IbmCloudPower::IPSecPolicyUpdate](docs/IPSecPolicyUpdate.md)
 - [IbmCloudPower::Image](docs/Image.md)
 - [IbmCloudPower::ImageImportDetails](docs/ImageImportDetails.md)
 - [IbmCloudPower::ImageReference](docs/ImageReference.md)
 - [IbmCloudPower::ImageSpecifications](docs/ImageSpecifications.md)
 - [IbmCloudPower::ImageTaskref](docs/ImageTaskref.md)
 - [IbmCloudPower::ImageVolume](docs/ImageVolume.md)
 - [IbmCloudPower::Images](docs/Images.md)
 - [IbmCloudPower::Job](docs/Job.md)
 - [IbmCloudPower::JobAction](docs/JobAction.md)
 - [IbmCloudPower::JobOperation](docs/JobOperation.md)
 - [IbmCloudPower::JobReference](docs/JobReference.md)
 - [IbmCloudPower::JobResourceDetails](docs/JobResourceDetails.md)
 - [IbmCloudPower::JobResources](docs/JobResources.md)
 - [IbmCloudPower::JobStatus](docs/JobStatus.md)
 - [IbmCloudPower::JobWorkflow](docs/JobWorkflow.md)
 - [IbmCloudPower::Jobs](docs/Jobs.md)
 - [IbmCloudPower::MaximumStorageAllocation](docs/MaximumStorageAllocation.md)
 - [IbmCloudPower::MetadataService](docs/MetadataService.md)
 - [IbmCloudPower::MinMaxDefault](docs/MinMaxDefault.md)
 - [IbmCloudPower::MultiVolumesCreate](docs/MultiVolumesCreate.md)
 - [IbmCloudPower::Network](docs/Network.md)
 - [IbmCloudPower::NetworkAddressGroup](docs/NetworkAddressGroup.md)
 - [IbmCloudPower::NetworkAddressGroupAddMember](docs/NetworkAddressGroupAddMember.md)
 - [IbmCloudPower::NetworkAddressGroupCreate](docs/NetworkAddressGroupCreate.md)
 - [IbmCloudPower::NetworkAddressGroupMember](docs/NetworkAddressGroupMember.md)
 - [IbmCloudPower::NetworkAddressGroupUpdate](docs/NetworkAddressGroupUpdate.md)
 - [IbmCloudPower::NetworkAddressGroups](docs/NetworkAddressGroups.md)
 - [IbmCloudPower::NetworkAddressTranslation](docs/NetworkAddressTranslation.md)
 - [IbmCloudPower::NetworkCloudConnectionsInner](docs/NetworkCloudConnectionsInner.md)
 - [IbmCloudPower::NetworkCreate](docs/NetworkCreate.md)
 - [IbmCloudPower::NetworkID](docs/NetworkID.md)
 - [IbmCloudPower::NetworkIDs](docs/NetworkIDs.md)
 - [IbmCloudPower::NetworkInterface](docs/NetworkInterface.md)
 - [IbmCloudPower::NetworkInterfaceCreate](docs/NetworkInterfaceCreate.md)
 - [IbmCloudPower::NetworkInterfaceInstance](docs/NetworkInterfaceInstance.md)
 - [IbmCloudPower::NetworkInterfaceUpdate](docs/NetworkInterfaceUpdate.md)
 - [IbmCloudPower::NetworkInterfaces](docs/NetworkInterfaces.md)
 - [IbmCloudPower::NetworkIpAddressMetrics](docs/NetworkIpAddressMetrics.md)
 - [IbmCloudPower::NetworkPeer](docs/NetworkPeer.md)
 - [IbmCloudPower::NetworkPeerCreate](docs/NetworkPeerCreate.md)
 - [IbmCloudPower::NetworkPeerUpdate](docs/NetworkPeerUpdate.md)
 - [IbmCloudPower::NetworkPeers](docs/NetworkPeers.md)
 - [IbmCloudPower::NetworkPort](docs/NetworkPort.md)
 - [IbmCloudPower::NetworkPortCreate](docs/NetworkPortCreate.md)
 - [IbmCloudPower::NetworkPortPvmInstance](docs/NetworkPortPvmInstance.md)
 - [IbmCloudPower::NetworkPortUpdate](docs/NetworkPortUpdate.md)
 - [IbmCloudPower::NetworkPorts](docs/NetworkPorts.md)
 - [IbmCloudPower::NetworkReference](docs/NetworkReference.md)
 - [IbmCloudPower::NetworkSecurityGroup](docs/NetworkSecurityGroup.md)
 - [IbmCloudPower::NetworkSecurityGroupAddMember](docs/NetworkSecurityGroupAddMember.md)
 - [IbmCloudPower::NetworkSecurityGroupAddRule](docs/NetworkSecurityGroupAddRule.md)
 - [IbmCloudPower::NetworkSecurityGroupClone](docs/NetworkSecurityGroupClone.md)
 - [IbmCloudPower::NetworkSecurityGroupCreate](docs/NetworkSecurityGroupCreate.md)
 - [IbmCloudPower::NetworkSecurityGroupMember](docs/NetworkSecurityGroupMember.md)
 - [IbmCloudPower::NetworkSecurityGroupMoveMember](docs/NetworkSecurityGroupMoveMember.md)
 - [IbmCloudPower::NetworkSecurityGroupRule](docs/NetworkSecurityGroupRule.md)
 - [IbmCloudPower::NetworkSecurityGroupRulePort](docs/NetworkSecurityGroupRulePort.md)
 - [IbmCloudPower::NetworkSecurityGroupRuleProtocol](docs/NetworkSecurityGroupRuleProtocol.md)
 - [IbmCloudPower::NetworkSecurityGroupRuleProtocolTcpFlag](docs/NetworkSecurityGroupRuleProtocolTcpFlag.md)
 - [IbmCloudPower::NetworkSecurityGroupRuleRemote](docs/NetworkSecurityGroupRuleRemote.md)
 - [IbmCloudPower::NetworkSecurityGroupUpdate](docs/NetworkSecurityGroupUpdate.md)
 - [IbmCloudPower::NetworkSecurityGroups](docs/NetworkSecurityGroups.md)
 - [IbmCloudPower::NetworkSecurityGroupsAction](docs/NetworkSecurityGroupsAction.md)
 - [IbmCloudPower::NetworkUpdate](docs/NetworkUpdate.md)
 - [IbmCloudPower::Networks](docs/Networks.md)
 - [IbmCloudPower::Operation](docs/Operation.md)
 - [IbmCloudPower::Operations](docs/Operations.md)
 - [IbmCloudPower::PVMInstance](docs/PVMInstance.md)
 - [IbmCloudPower::PVMInstanceAction](docs/PVMInstanceAction.md)
 - [IbmCloudPower::PVMInstanceAddNetwork](docs/PVMInstanceAddNetwork.md)
 - [IbmCloudPower::PVMInstanceCapture](docs/PVMInstanceCapture.md)
 - [IbmCloudPower::PVMInstanceConfiguration](docs/PVMInstanceConfiguration.md)
 - [IbmCloudPower::PVMInstanceConsole](docs/PVMInstanceConsole.md)
 - [IbmCloudPower::PVMInstanceCores](docs/PVMInstanceCores.md)
 - [IbmCloudPower::PVMInstanceCreate](docs/PVMInstanceCreate.md)
 - [IbmCloudPower::PVMInstanceDelete](docs/PVMInstanceDelete.md)
 - [IbmCloudPower::PVMInstanceFault](docs/PVMInstanceFault.md)
 - [IbmCloudPower::PVMInstanceHealth](docs/PVMInstanceHealth.md)
 - [IbmCloudPower::PVMInstanceMemory](docs/PVMInstanceMemory.md)
 - [IbmCloudPower::PVMInstanceMultiCreate](docs/PVMInstanceMultiCreate.md)
 - [IbmCloudPower::PVMInstanceNetwork](docs/PVMInstanceNetwork.md)
 - [IbmCloudPower::PVMInstanceNetworks](docs/PVMInstanceNetworks.md)
 - [IbmCloudPower::PVMInstanceOperatingSystem](docs/PVMInstanceOperatingSystem.md)
 - [IbmCloudPower::PVMInstanceOperation](docs/PVMInstanceOperation.md)
 - [IbmCloudPower::PVMInstanceReference](docs/PVMInstanceReference.md)
 - [IbmCloudPower::PVMInstanceReferenceV2](docs/PVMInstanceReferenceV2.md)
 - [IbmCloudPower::PVMInstanceRemoveNetwork](docs/PVMInstanceRemoveNetwork.md)
 - [IbmCloudPower::PVMInstanceUpdate](docs/PVMInstanceUpdate.md)
 - [IbmCloudPower::PVMInstanceUpdateResponse](docs/PVMInstanceUpdateResponse.md)
 - [IbmCloudPower::PVMInstanceV2Health](docs/PVMInstanceV2Health.md)
 - [IbmCloudPower::PVMInstanceV2NetworkPort](docs/PVMInstanceV2NetworkPort.md)
 - [IbmCloudPower::PVMInstanceVirtualCores](docs/PVMInstanceVirtualCores.md)
 - [IbmCloudPower::PVMInstanceVolumeUpdate](docs/PVMInstanceVolumeUpdate.md)
 - [IbmCloudPower::PVMInstances](docs/PVMInstances.md)
 - [IbmCloudPower::PVMInstancesV2](docs/PVMInstancesV2.md)
 - [IbmCloudPower::PeerInterface](docs/PeerInterface.md)
 - [IbmCloudPower::PeerSubnetUpdate](docs/PeerSubnetUpdate.md)
 - [IbmCloudPower::PeerSubnets](docs/PeerSubnets.md)
 - [IbmCloudPower::PeeringNetwork](docs/PeeringNetwork.md)
 - [IbmCloudPower::PinPolicy](docs/PinPolicy.md)
 - [IbmCloudPower::PlacementGroup](docs/PlacementGroup.md)
 - [IbmCloudPower::PlacementGroupCreate](docs/PlacementGroupCreate.md)
 - [IbmCloudPower::PlacementGroupServer](docs/PlacementGroupServer.md)
 - [IbmCloudPower::PlacementGroups](docs/PlacementGroups.md)
 - [IbmCloudPower::PodCapacity](docs/PodCapacity.md)
 - [IbmCloudPower::PodData](docs/PodData.md)
 - [IbmCloudPower::PvmInstanceDeployment](docs/PvmInstanceDeployment.md)
 - [IbmCloudPower::PvmInstanceHost](docs/PvmInstanceHost.md)
 - [IbmCloudPower::PvmInstancePlacementGroup](docs/PvmInstancePlacementGroup.md)
 - [IbmCloudPower::RemoteCopyRelationship](docs/RemoteCopyRelationship.md)
 - [IbmCloudPower::RemoveVirtualSerialNumber](docs/RemoveVirtualSerialNumber.md)
 - [IbmCloudPower::ReplicationService](docs/ReplicationService.md)
 - [IbmCloudPower::ReplicationTargetLocation](docs/ReplicationTargetLocation.md)
 - [IbmCloudPower::Route](docs/Route.md)
 - [IbmCloudPower::RouteCreate](docs/RouteCreate.md)
 - [IbmCloudPower::RouteFilter](docs/RouteFilter.md)
 - [IbmCloudPower::RouteFilterCreate](docs/RouteFilterCreate.md)
 - [IbmCloudPower::RouteReport](docs/RouteReport.md)
 - [IbmCloudPower::RouteReportRoute](docs/RouteReportRoute.md)
 - [IbmCloudPower::RouteUpdate](docs/RouteUpdate.md)
 - [IbmCloudPower::Routes](docs/Routes.md)
 - [IbmCloudPower::SAPCreate](docs/SAPCreate.md)
 - [IbmCloudPower::SAPProfile](docs/SAPProfile.md)
 - [IbmCloudPower::SAPProfileReference](docs/SAPProfileReference.md)
 - [IbmCloudPower::SAPProfileVpmemVolume](docs/SAPProfileVpmemVolume.md)
 - [IbmCloudPower::SAPProfiles](docs/SAPProfiles.md)
 - [IbmCloudPower::SPPPlacementGroup](docs/SPPPlacementGroup.md)
 - [IbmCloudPower::SPPPlacementGroupCreate](docs/SPPPlacementGroupCreate.md)
 - [IbmCloudPower::SPPPlacementGroups](docs/SPPPlacementGroups.md)
 - [IbmCloudPower::SRC](docs/SRC.md)
 - [IbmCloudPower::SSHKey](docs/SSHKey.md)
 - [IbmCloudPower::SSHKeys](docs/SSHKeys.md)
 - [IbmCloudPower::Secondary](docs/Secondary.md)
 - [IbmCloudPower::SharedProcessorPool](docs/SharedProcessorPool.md)
 - [IbmCloudPower::SharedProcessorPoolCreate](docs/SharedProcessorPoolCreate.md)
 - [IbmCloudPower::SharedProcessorPoolDetail](docs/SharedProcessorPoolDetail.md)
 - [IbmCloudPower::SharedProcessorPoolDetailSharedProcessorPool](docs/SharedProcessorPoolDetailSharedProcessorPool.md)
 - [IbmCloudPower::SharedProcessorPoolPlacementGroup](docs/SharedProcessorPoolPlacementGroup.md)
 - [IbmCloudPower::SharedProcessorPoolServer](docs/SharedProcessorPoolServer.md)
 - [IbmCloudPower::SharedProcessorPoolUpdate](docs/SharedProcessorPoolUpdate.md)
 - [IbmCloudPower::SharedProcessorPools](docs/SharedProcessorPools.md)
 - [IbmCloudPower::Site](docs/Site.md)
 - [IbmCloudPower::Snapshot](docs/Snapshot.md)
 - [IbmCloudPower::SnapshotCreate](docs/SnapshotCreate.md)
 - [IbmCloudPower::SnapshotCreateResponse](docs/SnapshotCreateResponse.md)
 - [IbmCloudPower::SnapshotList](docs/SnapshotList.md)
 - [IbmCloudPower::SnapshotRestore](docs/SnapshotRestore.md)
 - [IbmCloudPower::SnapshotUpdate](docs/SnapshotUpdate.md)
 - [IbmCloudPower::SnapshotV1](docs/SnapshotV1.md)
 - [IbmCloudPower::Snapshots](docs/Snapshots.md)
 - [IbmCloudPower::SoftwareLicenses](docs/SoftwareLicenses.md)
 - [IbmCloudPower::SoftwareTier](docs/SoftwareTier.md)
 - [IbmCloudPower::Status](docs/Status.md)
 - [IbmCloudPower::StatusDescription](docs/StatusDescription.md)
 - [IbmCloudPower::StatusDescriptionError](docs/StatusDescriptionError.md)
 - [IbmCloudPower::StockImage](docs/StockImage.md)
 - [IbmCloudPower::StorageAffinity](docs/StorageAffinity.md)
 - [IbmCloudPower::StorageController](docs/StorageController.md)
 - [IbmCloudPower::StoragePoolCapacity](docs/StoragePoolCapacity.md)
 - [IbmCloudPower::StoragePoolCombined](docs/StoragePoolCombined.md)
 - [IbmCloudPower::StoragePoolMap](docs/StoragePoolMap.md)
 - [IbmCloudPower::StoragePoolsCapacity](docs/StoragePoolsCapacity.md)
 - [IbmCloudPower::StoragePoolsCapacityMaximumStorageAllocation](docs/StoragePoolsCapacityMaximumStorageAllocation.md)
 - [IbmCloudPower::StorageTier](docs/StorageTier.md)
 - [IbmCloudPower::StorageTypeCapacity](docs/StorageTypeCapacity.md)
 - [IbmCloudPower::StorageTypesCapacity](docs/StorageTypesCapacity.md)
 - [IbmCloudPower::SupportedSoftwareTier](docs/SupportedSoftwareTier.md)
 - [IbmCloudPower::SupportedSystems](docs/SupportedSystems.md)
 - [IbmCloudPower::System](docs/System.md)
 - [IbmCloudPower::SystemPool](docs/SystemPool.md)
 - [IbmCloudPower::SystemPoolCapacity](docs/SystemPoolCapacity.md)
 - [IbmCloudPower::SystemPoolSharedCoreRatio](docs/SystemPoolSharedCoreRatio.md)
 - [IbmCloudPower::SystemResources](docs/SystemResources.md)
 - [IbmCloudPower::TargetTrustedProfile](docs/TargetTrustedProfile.md)
 - [IbmCloudPower::Task](docs/Task.md)
 - [IbmCloudPower::TaskReference](docs/TaskReference.md)
 - [IbmCloudPower::Tenant](docs/Tenant.md)
 - [IbmCloudPower::TenantUpdate](docs/TenantUpdate.md)
 - [IbmCloudPower::TrustedProfile](docs/TrustedProfile.md)
 - [IbmCloudPower::UpdateMetadataService](docs/UpdateMetadataService.md)
 - [IbmCloudPower::UpdateServerVirtualSerialNumber](docs/UpdateServerVirtualSerialNumber.md)
 - [IbmCloudPower::UpdateTrustedProfile](docs/UpdateTrustedProfile.md)
 - [IbmCloudPower::UpdateVirtualSerialNumber](docs/UpdateVirtualSerialNumber.md)
 - [IbmCloudPower::UpdateVolume](docs/UpdateVolume.md)
 - [IbmCloudPower::UpdateWorkspaceSSHKey](docs/UpdateWorkspaceSSHKey.md)
 - [IbmCloudPower::VPMemVolumeAttach](docs/VPMemVolumeAttach.md)
 - [IbmCloudPower::VPMemVolumeCreate](docs/VPMemVolumeCreate.md)
 - [IbmCloudPower::VPMemVolumeReference](docs/VPMemVolumeReference.md)
 - [IbmCloudPower::VPMemVolumeUpdate](docs/VPMemVolumeUpdate.md)
 - [IbmCloudPower::VPMemVolumes](docs/VPMemVolumes.md)
 - [IbmCloudPower::VPNConnection](docs/VPNConnection.md)
 - [IbmCloudPower::VPNConnectionCreate](docs/VPNConnectionCreate.md)
 - [IbmCloudPower::VPNConnectionCreateResponse](docs/VPNConnectionCreateResponse.md)
 - [IbmCloudPower::VPNConnectionUpdate](docs/VPNConnectionUpdate.md)
 - [IbmCloudPower::VPNConnections](docs/VPNConnections.md)
 - [IbmCloudPower::VirtualCores](docs/VirtualCores.md)
 - [IbmCloudPower::VirtualSerialNumber](docs/VirtualSerialNumber.md)
 - [IbmCloudPower::Volume](docs/Volume.md)
 - [IbmCloudPower::VolumeAction](docs/VolumeAction.md)
 - [IbmCloudPower::VolumeGroup](docs/VolumeGroup.md)
 - [IbmCloudPower::VolumeGroupAction](docs/VolumeGroupAction.md)
 - [IbmCloudPower::VolumeGroupActionReset](docs/VolumeGroupActionReset.md)
 - [IbmCloudPower::VolumeGroupActionStart](docs/VolumeGroupActionStart.md)
 - [IbmCloudPower::VolumeGroupActionStop](docs/VolumeGroupActionStop.md)
 - [IbmCloudPower::VolumeGroupCreate](docs/VolumeGroupCreate.md)
 - [IbmCloudPower::VolumeGroupCreateResponse](docs/VolumeGroupCreateResponse.md)
 - [IbmCloudPower::VolumeGroupDetails](docs/VolumeGroupDetails.md)
 - [IbmCloudPower::VolumeGroupRemoteCopyRelationships](docs/VolumeGroupRemoteCopyRelationships.md)
 - [IbmCloudPower::VolumeGroupStorageDetails](docs/VolumeGroupStorageDetails.md)
 - [IbmCloudPower::VolumeGroupUpdate](docs/VolumeGroupUpdate.md)
 - [IbmCloudPower::VolumeGroups](docs/VolumeGroups.md)
 - [IbmCloudPower::VolumeGroupsDetails](docs/VolumeGroupsDetails.md)
 - [IbmCloudPower::VolumeInfo](docs/VolumeInfo.md)
 - [IbmCloudPower::VolumeOnboarding](docs/VolumeOnboarding.md)
 - [IbmCloudPower::VolumeOnboardingAllOfResults](docs/VolumeOnboardingAllOfResults.md)
 - [IbmCloudPower::VolumeOnboardingAllOfResultsVolumeOnboardingFailures](docs/VolumeOnboardingAllOfResultsVolumeOnboardingFailures.md)
 - [IbmCloudPower::VolumeOnboardingCommon](docs/VolumeOnboardingCommon.md)
 - [IbmCloudPower::VolumeOnboardingCreate](docs/VolumeOnboardingCreate.md)
 - [IbmCloudPower::VolumeOnboardingCreateResponse](docs/VolumeOnboardingCreateResponse.md)
 - [IbmCloudPower::VolumeOnboardingCreateVolumesInner](docs/VolumeOnboardingCreateVolumesInner.md)
 - [IbmCloudPower::VolumeOnboardingFailure](docs/VolumeOnboardingFailure.md)
 - [IbmCloudPower::VolumeOnboardings](docs/VolumeOnboardings.md)
 - [IbmCloudPower::VolumeReference](docs/VolumeReference.md)
 - [IbmCloudPower::VolumeRemoteCopyRelationship](docs/VolumeRemoteCopyRelationship.md)
 - [IbmCloudPower::VolumeSnapshotList](docs/VolumeSnapshotList.md)
 - [IbmCloudPower::Volumes](docs/Volumes.md)
 - [IbmCloudPower::VolumesAttach](docs/VolumesAttach.md)
 - [IbmCloudPower::VolumesAttachmentResponse](docs/VolumesAttachmentResponse.md)
 - [IbmCloudPower::VolumesClone](docs/VolumesClone.md)
 - [IbmCloudPower::VolumesCloneAsyncRequest](docs/VolumesCloneAsyncRequest.md)
 - [IbmCloudPower::VolumesCloneCancel](docs/VolumesCloneCancel.md)
 - [IbmCloudPower::VolumesCloneCreate](docs/VolumesCloneCreate.md)
 - [IbmCloudPower::VolumesCloneDetail](docs/VolumesCloneDetail.md)
 - [IbmCloudPower::VolumesCloneExecute](docs/VolumesCloneExecute.md)
 - [IbmCloudPower::VolumesCloneRequest](docs/VolumesCloneRequest.md)
 - [IbmCloudPower::VolumesCloneResponse](docs/VolumesCloneResponse.md)
 - [IbmCloudPower::VolumesClones](docs/VolumesClones.md)
 - [IbmCloudPower::VolumesDelete](docs/VolumesDelete.md)
 - [IbmCloudPower::VolumesDeleteResponse](docs/VolumesDeleteResponse.md)
 - [IbmCloudPower::VolumesDetach](docs/VolumesDetach.md)
 - [IbmCloudPower::VolumesDetachmentResponse](docs/VolumesDetachmentResponse.md)
 - [IbmCloudPower::Workspace](docs/Workspace.md)
 - [IbmCloudPower::WorkspaceDetails](docs/WorkspaceDetails.md)
 - [IbmCloudPower::WorkspaceLocation](docs/WorkspaceLocation.md)
 - [IbmCloudPower::WorkspaceNetworkSecurityGroupsDetails](docs/WorkspaceNetworkSecurityGroupsDetails.md)
 - [IbmCloudPower::WorkspacePowerEdgeRouterDetails](docs/WorkspacePowerEdgeRouterDetails.md)
 - [IbmCloudPower::WorkspaceSSHKey](docs/WorkspaceSSHKey.md)
 - [IbmCloudPower::WorkspaceSSHKeys](docs/WorkspaceSSHKeys.md)
 - [IbmCloudPower::Workspaces](docs/Workspaces.md)


## Documentation for Authorization

Endpoints do not require authorization.

