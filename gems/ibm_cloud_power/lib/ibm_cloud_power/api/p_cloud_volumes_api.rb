=begin
#Power Cloud API

### Introduction  You can use the IBM® Power® Virtual Server to easily deploy and configure virtual servers that are running AIX, IBM i, or Linux (RHEL and SLES) workloads.  To learn about using Power Virtual Server, see: - [Getting started with IBM Power Virtual Servers](https://cloud.ibm.com/docs/power-iaas?topic=power-iaas-getting-started) - [IBM Power Virtual Server CLI Reference](https://cloud.ibm.com/docs/power-iaas-cli-plugin?topic=power-iaas-cli-plugin-power-iaas-cli-reference-v1)  ## Endpoint URLs  The Power Virtual Server service uses regional endpoints over both public and private network.  Automatically generated regional API endpoints (service URL) will default to IBM Cloud Regions which may cause your request to fail. You should always use the Power Virtual Server regions in the service URL.  The following table shows the IBM Cloud® regions and their corresponding Power Virtual Server region where the APIs are available: <!-- | Country       | Power Virtual Server region | Location | Public endpoint (service URL)               | | ------------- | ------------------------------------------ | -------- | ------------------------------------------- | | United States | Washington DC                              | us-south | `https://us-south.power-iaas.cloud.ibm.com` |  | Washington DC, USA | us-east | us-east | `https://us-east.power-iaas.cloud.ibm.com` | | S----------------l | b-----o | s-----o | `----------------------------------------` | | Toronto, Canada    | ca-tor  | tor     | `https://tor.power-iaas.cloud.ibm.com`     | | Montreal, Canada   | ca-mon  | mon     | `https://mon.power-iaas.cloud.ibm.com`     | | Frankfurt, Germany | eu-de   | eu-de   | `https://eu-de.power-iaas.cloud.ibm.com`   | | London, UK         | eu-gb   | lon     | `https://lon.power-iaas.cloud.ibm.com`     | | Sydney, Australia  | au-syd  | syd     | `https://syd.power-iaas.cloud.ibm.com`     | | Tokyo, Japan       | jp-tok  | tok     | `https://tok.power-iaas.cloud.ibm.com`     | | Osaka, Japan       | jp-osa  | osa     | `https://osa.power-iaas.cloud.ibm.com`     |   -->  | Country          | Power Virtual Server region | Location                   | Public end-point (service URL)            | | ---------------- | ------------------------------------------ | -------------------------- | ----------------------------------------- | | Australia        | Sydney                                     | syd04 \\n syd05             | https://syd.power-iaas.cloud.ibm.com      | | Brazil           | Sao Paulo                                  | sao01 \\n sao04             | https://sao.power-iaas.cloud.ibm.com      | | Canada           | Montreal                                   | mon01                      | https://mon.power-iaas.cloud.ibm.com      | |                  | Toronto                                    | tor01                      | https://tor.power-iaas.cloud.ibm.com      | | Germany          | Frankfurt                                  | eu-de-1 \\n eu-de-2         | https://eu-de.power-iaas.cloud.ibm.com    | | UK/Great Britain | London                                     | lon04 \\n lon06             | https://lon.power-iaas.cloud.ibm.com      | | India            | Chennai                                    | che01 \\n che02 \\n che03    | https://che.power-iaas.cloud.ibm.com      | |                  | Mumbai                                     | in-mum-1 \\n in-mum-2       | https://in-mum.power-iaas.cloud.ibm.com   | | Japan            | Tokyo                                      | tok04                      | https://tok.power-iaas.cloud.ibm.com      | |                  | Osaka                                      | osa21                      | https://osa.power-iaas.cloud.ibm.com      | | Spain            | Madrid                                     | mad02 \\n mad04             | https://mad.power-iaas.cloud.ibm.com      | | United States    | Washington DC                              | us-east \\n wdc06 \\n wdc07  | https://us-east.power-iaas.cloud.ibm.com  | |                  | Dallas                                     | dal10 \\n dal12 \\n us-south | https://us-south.power-iaas.cloud.ibm.com |  | Country          | Power Virtual Server region | Location                   | Private end-point (service URL)                   | | ---------------- | ------------------------------------------ | -------------------------- | ------------------------------------------------- | | Australia        | Sydney                                     | syd04 \\n syd05             | https://private.au-syd.power-iaas.cloud.ibm.com   | | Brazil           | Sao Paulo                                  | sao01 \\n sao04             | https://private.br-sao.power-iaas.cloud.ibm.com   | | Canada           | Montreal                                   | mon01                      | https://private.ca-mon.power-iaas.cloud.ibm.com   | |                  | Toronto                                    | tor01                      | https://private.ca-tor.power-iaas.cloud.ibm.com   | | Germany          | Frankfurt                                  | eu-de-1 \\n eu-de-2         | https://private.eu-de.power-iaas.cloud.ibm.com    | | UK/Great Britain | London                                     | lon04 \\n lon06             | https://private.eu-gb.power-iaas.cloud.ibm.com    | | India            | Chennai                                    | che01 \\n che02 \\n che03    | https://private.in-che.power-iaas.cloud.ibm.com   | |                  | Mumbai                                     | in-mum-1 \\n in-mum-2       | https://private.in-mum.power-iaas.cloud.ibm.com   | | Japan            | Tokyo                                      | tok04                      | https://private.jp-tok.power-iaas.cloud.ibm.com   | |                  | Osaka                                      | osa21                      | https://private.jp-osa.power-iaas.cloud.ibm.com   | | Spain            | Madrid                                     | mad02 \\n mad04             | https://private.eu-es.power-iaas.cloud.ibm.com    | | United States    | Washington DC                              | us-east \\n wdc06 \\n wdc07  | https://private.us-east.power-iaas.cloud.ibm.com  | |                  | Dallas                                     | dal10 \\n dal12 \\n us-south | https://private.us-south.power-iaas.cloud.ibm.com |  ## Curl service URL intro  To call the API, select the service URL that corresponds to the region of your choice and add a method path to form the complete request URL. For example, to list all the workspaces available in the `us-south` region, make a `GET` request to `https://us-south.iaas.cloud.ibm.com/v1/workspaces`.  Example request to call the `us-south` service URL:  ```codeblock curl -H \"Authorization: Bearer {token}\" -X {http_method} \"https://us-south.iaas.cloud.ibm.com/v1{path}\" ```  Replace `{token}`, `{http_method}`, and `{path}` in this example with the values for your particular request.  ## Authentication  The Power Virtual Server API uses Identity and Access Management ([IAM](https://cloud.ibm.com/docs/account?topic=account-iamoverview)) to authenticate requests. To call each API method, you must be assigned a role that includes the required IAM actions. Each method has an Authorization section that lists the required actions and, if applicable, the conditions under which each action is required. Check your access on the [IBM Cloud console](https://cloud.ibm.com/login) by navigating to **[Users](https://cloud.ibm.com/iam/users) > _User_ > Access**.  For more information about IAM actions and how they map to roles, see [Assigning access to account management services](https://cloud.ibm.com/docs/account?topic=account-account-services) and [Managing IAM access for Power Virtual Server](https://cloud.ibm.com/docs/power-iaas?topic=power-iaas-managing-resources-and-users).  Learn about obtaining an IAM token for an authenticated user or service ID in the [IAM Identity Services API](https://cloud.ibm.com/apidocs/iam-identity-token-api). If you first [create an API key](https://cloud.ibm.com/docs/account?topic=account-userapikey#create_user_key), you can [use it to generate an IAM token](https://cloud.ibm.com/docs/account?topic=account-iamtoken_from_apikey).  To use the API, add a valid IAM token to the HTTP `Authorization` request header. For example, `-H 'Authorization: Bearer {token}'`.  For specific APIs you must need to include your IBM Cloud IAM access token and the Power Virtual Server instance ID, also known as your **Cloud Resource Name** (CRN), in each request. The first part of your CRN contains your **Tenant ID** and the second part contains your **Cloud Instance ID**.  The following example shows a typical CRN:  ```text crn:v1:staging:public:power-iaas:us-east:a/abcdefghijklmnopqrstuvwxyzabcdef:121d5ee5-b87d-4a0e-86b8-aaff422135478::  Tenant ID {tenant_id} = abcdefghijklmnopqrstuvwxyzabcdef Cloud Instance ID {cloud_instance_id} = 121d5ee5-b87d-4a0e-86b8-aaff422135478 ```  You can retrieve an access token by first creating an API key, and then exchanging your API key for a IBM Cloud IAM token. For more information, see [Retrieving an access token programmatically](https://cloud.ibm.com/docs/services/key-protect?topic=key-protect-retrieve-access-token) and [Retrieving your instance ID](https://cloud.ibm.com/docs/services/key-protect?topic=key-protect-retrieve-instance-ID).  To retrieve your access token:  ```sh curl -X POST \\   \"https://iam.cloud.ibm.com/identity/token\" \\   --header 'Content-Type: application/x-www-form-urlencoded' \\   --header 'Accept: application/json' \\   --data-urlencode 'grant_type=urn:ibm:params:oauth:grant-type:apikey' \\   --data-urlencode 'apikey={api_key}' ```  To use the API, replace `{token}` with the token obtained above from IAM, replace `{http_method}` with an HTTP method such as `POST`, and replace `{url}` with a request URL such as `https://us-south.iaas.cloud.ibm.com/v1/workspaces/{workspace_id}`:  ```sh curl -H \"Authorization: Bearer {token}\" -X {http_method} \"{url}\"      -H \"CRN\" ```  ## Auditing  Monitor API activity within your account by using the IBM Cloud Activity Tracker service. Each time you make an API call, one or more events are generated that you can track and audit from within Activity Tracker. Specific auditing event types are listed for each individual method. For more information about Power Virtual Server activity tracking, see [Activity Tracker events](https://cloud.ibm.com/docs/power-iaas?topic=power-iaas-at-events).  ## Error handling  This API uses standard HTTP response codes to indicate whether a method completed successfully. A `200` response indicates success. A `400` type response indicates a failure, and a `500` type response indicates an internal system error.  | HTTP Error Code | Description                | Recovery                                                                                                                                                                                                                                                                                                                                                                | | --------------- | -------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | | `400`           | Bad Request                | The input parameters in the request body are either incomplete, malformed, or too large. Be sure to include all required parameters in your request.                                                                                                                                                                                                                    | | `401`           | Unauthorized               | You are not authorized to make this request. Log in to IBM Cloud and try submitting the request again. If this error persists, contact the account owner to check your permissions.                                                                                                                                                              | | `403`           | Forbidden                  | The supplied authentication is not authorized to perform the requested operation. Either you do not have valid access through IAM access policies or your request is denied. If this error persists, contact the account owner to check your permissions.                                                                                                               | | `404`           | Not Found                  | The requested resource could not be found but may be available in the future.                                                                                                                                                                                                                                                                                           | | `405`           | Method Not Allowed         | The requested resource does not support the request method.                                                                                                                                                                                                                                                                                                             | | `406`           | Not Acceptable             | The resource the client requested is not available in a format allowed by the `Accept` header supplied by the client.                                                                                                                                                                                                                                                   | | `408`           | Request Timeout            | The connection to the server timed out. Wait a few minutes, and try submitting the request again.                                                                                                                                                                                                                                                                       | | `409`           | Conflict                   | The request cannot be completed because of a conflict between the request and the current state of the resource.                                                                                                                                                                                                                                                        | | `412`           | Precondition Failed        | The client specified one or more preconditions in its headers, and the server cannot meet those preconditions.                                                                                                                                                                                                                                                          | | `426`           | Upgrade Required           | The server refuses to perform the request using the current protocol but might perform the request after the client upgrades to a different protocol.                                                                                                                                                                                                                   | | `500`           | Internal Server Error      | The request cannot be processed because the client encountered an unexpected condition on the server. Wait a few minutes and try submitting the request again. If this error persists, contact IBM Support.                                                                                                                                                             | | `501`           | Not Implemented            | The server either does not recognize the request method, or it lacks the ability to fulfill the request.                                                                                                                                                                                                                                                                | | `502`           | Bad Gateway                | The server was acting as a gateway or proxy and received an invalid response from the upstream server.                                                                                                                                                                                                                                                                  | | `503`           | Service Unavailable        | The server cannot process the request. Generally, this condition is temporary, such as when a server is overloaded or down for scheduled maintenance. This condition could also be due to an unplanned outage of a service that is needed to process the request. Wait a few minutes and try submitting the request again. If this error persists, contact IBM Support. | | `504`           | Gateway Timeout            | The server was acting as a gateway or proxy and did not receive a timely response from the upstream server.                                                                                                                                                                                                                                                             | | `505`           | HTTP Version Not Supported | The server does not support the HTTP protocol version that is used in the request.                                                                                                                                                                                                                                                                                      |  ## Release notes  Use the release notes to learn about the latest changes to the Power Virtual Server API.  <!-- ## 2025  -->  ### June 2026  Added the following APIs associated with vPMEM volumes: - [Update a vPMEM volume attached to this PVM Instance](https://cloud.ibm.com/docs/apis/power-cloud#pcloud-pvminstances-vpmem-volumes-put)  ### December 2025  Added the following APIs associated with vPMEM volumes: - [List all vPMEM volumes attached to this PVM Instance](https://cloud.ibm.com/apidocs/power-cloud#pcloud-pvminstances-vpmem-volumes-getall) - [Create a vPMEM volume to be attached to this PVM Instance](https://cloud.ibm.com/apidocs/power-cloud#pcloud-pvminstances-vpmem-volumes-post) - [Delete a vPMEM volume attached to this PVM Instance](https://cloud.ibm.com/apidocs/power-cloud#pcloud-pvminstances-vpmem-volumes-delete) - [Get information about a vPMEM volume](https://cloud.ibm.com/apidocs/power-cloud#pcloud-pvminstances-vpmem-volumes-get)  ### September 2025  Added the following APIs associated with network peers: - [Get the list of Network Peers for a workspace](https://cloud.ibm.com/apidocs/power-cloud#v1-networkpeers-getall) - [Create a new Network Peer](https://cloud.ibm.com/apidocs/power-cloud#v1-networkpeers-post) - [Get the list of Network Interfaces for a workspace](https://cloud.ibm.com/apidocs/power-cloud#v1-networkpeers-interfaces-getall) - [Delete a Network Peer from a workspace](https://cloud.ibm.com/apidocs/power-cloud#v1-networkpeers-id-delete) - [Get the details of a Network Peer](https://cloud.ibm.com/apidocs/power-cloud#v1-networkpeers-id-get) - [Update a Network Peer](https://cloud.ibm.com/apidocs/power-cloud#v1-networkpeers-id-put) - [Create a new Route Filter](https://cloud.ibm.com/apidocs/power-cloud#v1-networkpeers-routefilter-post) - [Delete a Route Filter from a Network Peer](https://cloud.ibm.com/apidocs/power-cloud#v1-networkpeers-routefilter-id-delete) - [Get the details of a Route Filter](https://cloud.ibm.com/apidocs/power-cloud#v1-networkpeers-routefilter-id-get)  ### July 2025  Added the following APIs associated with routes: - [Get all routes in the workspace](https://cloud.ibm.com/apidocs/power-cloud?loginMethod=federated#v1-routes-getall) - [Perform a route creation](https://cloud.ibm.com/apidocs/power-cloud?loginMethod=federated#v1-routes-post) - [Get the route report for a workspace](https://cloud.ibm.com/apidocs/power-cloud?loginMethod=federated#v1-routes-report-get) - [Delete a route](https://cloud.ibm.com/apidocs/power-cloud?loginMethod=federated#v1-routes-delete) - [Get a route's information](https://cloud.ibm.com/apidocs/power-cloud?loginMethod=federated#v1-routes-get) - [Update a route's information](https://cloud.ibm.com/apidocs/power-cloud?loginMethod=federated#v1-routes-put)  Added the following APIs associated with ssh keys: - [List SSH Keys](https://cloud.ibm.com/apidocs/power-cloud?loginMethod=federated#v1-sshkeys-getall) - [Add a new SSH key](https://cloud.ibm.com/apidocs/power-cloud?loginMethod=federated#v1-sshkeys-post) - [Delete ssh-key](https://cloud.ibm.com/apidocs/power-cloud?loginMethod=federated#v1-sshkeys-delete) - [Get ssh-key information](https://cloud.ibm.com/apidocs/power-cloud?loginMethod=federated#v1-sshkeys-get) - [Update the ssh key](https://cloud.ibm.com/apidocs/power-cloud?loginMethod=federated#v1-sshkeys-put)  Added an API to list the supported IBM i software tiers: [List supported software tiers (IBMi licensing)](https://cloud.ibm.com/apidocs/power-cloud?loginMethod=federated#pcloud-virtualserialnumber-softwaretiers-getall)  ### February 2025  Added the following APIs associated with network address groups: - [Get the list of Network Address Groups for a workspace](https://cloud.ibm.com/apidocs/power-cloud#v1-networkaddressgroups-get) - [Create a new Network Address Group](https://cloud.ibm.com/apidocs/power-cloud#v1-networkaddressgroups-post) - [Delete a Network Address Group from a workspace](https://cloud.ibm.com/apidocs/power-cloud#v1-networkaddressgroups-id-delete) - [Get the detail of a Network Address Group](https://cloud.ibm.com/apidocs/power-cloud#v1-networkaddressgroups-id-get) - [Update a Network Address Group](https://cloud.ibm.com/apidocs/power-cloud#v1-networkaddressgroups-id-put) - [Add a member to a Network Address Group](https://cloud.ibm.com/apidocs/power-cloud#v1-networkaddressgroups-members-post) - [Delete the member from a Network Address Group](https://cloud.ibm.com/apidocs/power-cloud#v1-networkaddressgroups-members-delete)  Added the following APIs associated with network security groups: - [Get the list of Network Security Groups for a workspace](https://cloud.ibm.com/apidocs/power-cloud#v1-networksecuritygroups-list) - [Create a new Network Security Group](https://cloud.ibm.com/apidocs/power-cloud#v1-networksecuritygroups-post) - [Perform a Network Security Groups action (enable, disable) on a workspace.](https://cloud.ibm.com/apidocs/power-cloud#v1-networksecuritygroups-action-post) - [Delete a Network Security Group from a workspace](https://cloud.ibm.com/apidocs/power-cloud#v1-networksecuritygroups-id-delete) - [Get the detail of a Network Security Group](https://cloud.ibm.com/apidocs/power-cloud#v1-networksecuritygroups-id-get) - [Clone a Network Security Group](https://cloud.ibm.com/apidocs/power-cloud#v1-networksecuritygroups-id-post) - [Update a Network Security Group](https://cloud.ibm.com/apidocs/power-cloud#v1-networksecuritygroups-id-put) - [Add a member to a Network Security Group](https://cloud.ibm.com/apidocs/power-cloud#v1-networksecuritygroups-members-post) - [Delete the member from a Network Security Group](https://cloud.ibm.com/apidocs/power-cloud#v1-networksecuritygroups-members-delete) - [Move a Network Security Group member to another Network Security Group](https://cloud.ibm.com/apidocs/power-cloud#v1-networksecuritygroups-move-member-post) - [Add a rule to a Network Security Group](https://cloud.ibm.com/apidocs/power-cloud#v1-networksecuritygroups-rules-post) - [Delete the rule from a Network Security Group](https://cloud.ibm.com/apidocs/power-cloud#v1-networksecuritygroups-rules-delete)  ### December 2023  The following APIs are availavle: - [Get all Datacenters information and capabilities](https://cloud.ibm.com/apidocs/power-cloud#v1-datacenters-getall) - [Get a Datacenter's information and capabilities](https://cloud.ibm.com/apidocs/power-cloud#v1-datacenters-get) - [Get all Workspaces information and capabilities for a tenant](https://cloud.ibm.com/apidocs/power-cloud#v1-workspaces-getall) - [Get a Workspace's information and capabilities](https://cloud.ibm.com/apidocs/power-cloud#v1-workspaces-get)  ### November 2023  - New API [List all supported storage tiers for this cloud instance](https://cloud.ibm.com/apidocs/power-cloud#pcloud-cloudinstances-storagetiers-getall) is available.  ### September 2023  - Added parameters `availableCapacity`, `maxAllocationSize`, `replicationEnabled`, `storageHost` in the [Storage capacity for a storage pool in a region (GET)](https://cloud.ibm.com/apidocs/power-cloud#pcloud-storagecapacity-pools-get).  ### December 2022  - You can now get new error messages for undefined response codes for new service endpoint response codes.  ### September 2022  - Added the following APIs associated with shared processor pool:     - [Get the list of Shared Processor Pools for a cloud instance](https://cloud.ibm.com/apidocs/power-cloud#pcloud-sharedprocessorpools-getall)     - [Create a new Shared Processor Pool](https://cloud.ibm.com/apidocs/power-cloud#pcloud-sharedprocessorpools-post)     - [Get the detail of a Shared Processor Pool for a cloud instance](https://cloud.ibm.com/apidocs/power-cloud#pcloud-sharedprocessorpools-get)     - [Update a Shared Processor Pool for a cloud instance](https://cloud.ibm.com/apidocs/power-cloud#pcloud-sharedprocessorpools-put)     - [Delete a Shared Processor Pool from a cloud instance](https://cloud.ibm.com/apidocs/power-cloud#pcloud-sharedprocessorpools-delete)  - Added the following APIs associated with global recovery service:     - Disaster recovery         - [Get the disaster recovery site details for the current location](https://cloud.ibm.com/apidocs/power-cloud#pcloud-locations-disasterrecovery-get)         - [Get all disaster recovery locations supported by Power Virtual Server](https://cloud.ibm.com/apidocs/power-cloud#pcloud-locations-disasterrecovery-getall)     - Volume         - [Perform an action on a Volume](https://cloud.ibm.com/apidocs/power-cloud#pcloud-cloudinstances-volumes-action-post)         - [Get a list of flashcopy mappings of a given volume](https://cloud.ibm.com/apidocs/power-cloud#pcloud-cloudinstances-volumes-flashcopymappings-ge)         - [Get remote copy relationship of a volume](https://cloud.ibm.com/apidocs/power-cloud#pcloud-cloudinstances-volumes-remotecopyrelationsh)     - Volume onboarding         - [List all volume onboardings for this cloud instance](https://cloud.ibm.com/apidocs/power-cloud#pcloud-volume-onboarding-getall)         - [Onboard auxiliary volumes to target site](https://cloud.ibm.com/apidocs/power-cloud#pcloud-volume-onboarding-post)         - [Get the information of volume onboarding operation](https://cloud.ibm.com/apidocs/power-cloud#pcloud-volume-onboarding-get)     - Volume groups         - [Get all volume groups](https://cloud.ibm.com/apidocs/power-cloud#pcloud-volumegroups-getall)         - [Create a new volume group](https://cloud.ibm.com/apidocs/power-cloud#pcloud-volumegroups-post)         - [Get all volume groups with details](https://cloud.ibm.com/apidocs/power-cloud#pcloud-volumegroups-getalldetails)         - [Get volume Group](https://cloud.ibm.com/apidocs/power-cloud#pcloud-volumegroups-get)         - [updates the volume group](https://cloud.ibm.com/apidocs/power-cloud#pcloud-volumegroups-put)         - [Delete a cloud instance volume group](https://cloud.ibm.com/apidocs/power-cloud#pcloud-volumegroups-delete)         - [Perform an action (start stop reset ) on a volume group](https://cloud.ibm.com/apidocs/power-cloud#pcloud-volumegroups-action-post)         - [Get volume Group details](https://cloud.ibm.com/apidocs/power-cloud#pcloud-volumegroups-getdetails)         - [Get remote copy relationships of the volume belonging to volume group](https://cloud.ibm.com/apidocs/power-cloud#pcloud-volumegroups-remotecopyrelationships-get)         - [Get storage details of volume group](https://cloud.ibm.com/apidocs/power-cloud#pcloud-volumegroups-storagedetails-get)  ### October 2021  - Added the following APIs associated with VPN connections:     - [Get VPN connections](https://cloud.ibm.com/apidocs/power-cloud#pcloud-vpnconnections-getall)     - [Add IKE policy](https://cloud.ibm.com/apidocs/power-cloud#pcloud-ikepolicies-post)     - [Add IPsec policy](https://cloud.ibm.com/apidocs/power-cloud#pcloud-ipsecpolicies-post)  ### September 2021  - Added the following APIs associated with Image Capture, Image Import, and Image Export:     - [Capture a PVM instance and create a deployable image](https://cloud.ibm.com/apidocs/power-cloud#pcloud-v2-pvminstances-capture-post)     - [Add image export job to the jobs queue](https://cloud.ibm.com/apidocs/power-cloud#pcloud-v2-images-export-post)     - [Create a new image from available images in COS](https://cloud.ibm.com/apidocs/power-cloud#pcloud-v1-cloudinstances-cosimages-post)     - [List up to the last 5 jobs initiated by the cloud instance](https://cloud.ibm.com/apidocs/power-cloud#pcloud-cloudinstances-jobs-getall)  - Added the following APIs associated with storage volumes:     - [Create multiple data volumes from a single definition](https://cloud.ibm.com/apidocs/power-cloud#pcloud-v2-volumes-post)  - Added the following APIs associated with private endpoint:     - [Endpoint URL](https://cloud.ibm.com/apidocs/power-cloud#endpoint)  ### June 2021  - Added the following APIs associated with placement groups:     - [Create a server placement group](https://cloud.ibm.com/apidocs/power-cloud#pcloud-placementgroups-post)     - [Get all server placement groups](https://cloud.ibm.com/apidocs/power-cloud#pcloud-placementgroups-getall)     - [Get server placement group details](https://cloud.ibm.com/apidocs/power-cloud#pcloud-placementgroups-get)     - [Delete server placement group](https://cloud.ibm.com/apidocs/power-cloud#pcloud-placementgroups-delete)     - [Add server to placement group](https://cloud.ibm.com/apidocs/power-cloud#pcloud-placementgroups-members-post)     - [Remove server from placement group](https://cloud.ibm.com/apidocs/power-cloud#pcloud-placementgroups-members-delete)  ### May 2021  - Added the following APIs associated with Cloud connections:     - [Create a new Cloud connection](https://cloud.ibm.com/apidocs/power-cloud#pcloud-cloudconnections-post)     - [Get all Cloud connections in a specific cloud instance](https://cloud.ibm.com/apidocs/power-cloud#pcloud-cloudconnections-getall)     - [Get a Cloud connection's state or information](https://cloud.ibm.com/apidocs/power-cloud#pcloud-cloudconnections-get)     - [Update a Cloud connection](https://cloud.ibm.com/apidocs/power-cloud#pcloud-cloudconnections-put)     - [Delete a Cloud connection](https://cloud.ibm.com/apidocs/power-cloud#pcloud-cloudconnections-delete)     - [Get information about a Cloud connections attached network](https://cloud.ibm.com/apidocs/power-cloud#pcloud-cloudconnections-networks-get)     - [Add a network to the Cloud connection](https://cloud.ibm.com/apidocs/power-cloud#pcloud-cloudconnections-networks-put)     - [Delete a network from a Cloud connection](https://cloud.ibm.com/apidocs/power-cloud#pcloud-cloudconnections-networks-delete)  ### February 2021  - Added the following APIs associated with volume clone requests:     - [Create a new volumes clone request and initiate the Prepare action](https://cloud.ibm.com/apidocs/power-cloud#pcloud-v2-volumesclone-post)     - [Get the list of volumes-clone request for a cloud instance](https://cloud.ibm.com/apidocs/power-cloud#pcloud-v2-volumesclone-getall)     - [Get the details for a volumes-clone request](https://cloud.ibm.com/apidocs/power-cloud#pcloud-v2-volumesclone-get)     - [Delete a volumes-clone request](https://cloud.ibm.com/apidocs/power-cloud#pcloud-v2-volumesclone-delete)     - [Initiate the Start action for a volume-clone request](https://cloud.ibm.com/apidocs/power-cloud#pcloud-v2-volumesclone-start-post)     - [Initiate the Execute action for a volumes-clone request](https://cloud.ibm.com/apidocs/power-cloud#pcloud-v2-volumesclone-execute-post)     - [Cancel a volume-clone request and initiate the Cleanup action](https://cloud.ibm.com/apidocs/power-cloud#pcloud-v2-volumesclone-cancel-post) - Added the following APIs for requests related to storage capacity:     - [Get storage capacity for all available storage types in a region](https://cloud.ibm.com/apidocs/power-cloud#pcloud-storagecapacity-types-getall)     - [Get storage capacity for a storage type in a region](https://cloud.ibm.com/apidocs/power-cloud#pcloud-storagecapacity-types-get)     - [Get storage capacity for all available storage pools in a region](https://cloud.ibm.com/apidocs/power-cloud#pcloud-storagecapacity-pools-getall)     - [Get storage capacity for a storage pool in a region](https://cloud.ibm.com/apidocs/power-cloud#pcloud-storagecapacity-pools-get)

The version of the OpenAPI document: 2.5.0
Contact: ismirlia@us.ibm.com
Generated by: https://openapi-generator.tech
Generator version: 7.23.0

=end

require 'cgi'

module IbmCloudPower
  class PCloudVolumesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Perform an action on a Volume
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance
    # @param volume_id [String] Volume ID
    # @param body [VolumeAction] Parameters for the desired action
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def pcloud_cloudinstances_volumes_action_post(cloud_instance_id, volume_id, body, opts = {})
      data, _status_code, _headers = pcloud_cloudinstances_volumes_action_post_with_http_info(cloud_instance_id, volume_id, body, opts)
      data
    end

    # Perform an action on a Volume
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance
    # @param volume_id [String] Volume ID
    # @param body [VolumeAction] Parameters for the desired action
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def pcloud_cloudinstances_volumes_action_post_with_http_info(cloud_instance_id, volume_id, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PCloudVolumesApi.pcloud_cloudinstances_volumes_action_post ...'
      end
      # verify the required parameter 'cloud_instance_id' is set
      if @api_client.config.client_side_validation && cloud_instance_id.nil?
        fail ArgumentError, "Missing the required parameter 'cloud_instance_id' when calling PCloudVolumesApi.pcloud_cloudinstances_volumes_action_post"
      end
      # verify the required parameter 'volume_id' is set
      if @api_client.config.client_side_validation && volume_id.nil?
        fail ArgumentError, "Missing the required parameter 'volume_id' when calling PCloudVolumesApi.pcloud_cloudinstances_volumes_action_post"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling PCloudVolumesApi.pcloud_cloudinstances_volumes_action_post"
      end
      # resource path
      local_var_path = '/pcloud/v1/cloud-instances/{cloud_instance_id}/volumes/{volume_id}/action'.sub('{cloud_instance_id}', CGI.escape(cloud_instance_id.to_s)).sub('{volume_id}', CGI.escape(volume_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(body)

      # return_type
      return_type = opts[:debug_return_type] || 'Object'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"PCloudVolumesApi.pcloud_cloudinstances_volumes_action_post",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PCloudVolumesApi#pcloud_cloudinstances_volumes_action_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a cloud instance volume
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance
    # @param volume_id [String] Volume ID
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def pcloud_cloudinstances_volumes_delete(cloud_instance_id, volume_id, opts = {})
      data, _status_code, _headers = pcloud_cloudinstances_volumes_delete_with_http_info(cloud_instance_id, volume_id, opts)
      data
    end

    # Delete a cloud instance volume
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance
    # @param volume_id [String] Volume ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def pcloud_cloudinstances_volumes_delete_with_http_info(cloud_instance_id, volume_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PCloudVolumesApi.pcloud_cloudinstances_volumes_delete ...'
      end
      # verify the required parameter 'cloud_instance_id' is set
      if @api_client.config.client_side_validation && cloud_instance_id.nil?
        fail ArgumentError, "Missing the required parameter 'cloud_instance_id' when calling PCloudVolumesApi.pcloud_cloudinstances_volumes_delete"
      end
      # verify the required parameter 'volume_id' is set
      if @api_client.config.client_side_validation && volume_id.nil?
        fail ArgumentError, "Missing the required parameter 'volume_id' when calling PCloudVolumesApi.pcloud_cloudinstances_volumes_delete"
      end
      # resource path
      local_var_path = '/pcloud/v1/cloud-instances/{cloud_instance_id}/volumes/{volume_id}'.sub('{cloud_instance_id}', CGI.escape(cloud_instance_id.to_s)).sub('{volume_id}', CGI.escape(volume_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Object'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"PCloudVolumesApi.pcloud_cloudinstances_volumes_delete",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PCloudVolumesApi#pcloud_cloudinstances_volumes_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a list of flashcopy mappings of a given volume
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance
    # @param volume_id [String] Volume ID
    # @param [Hash] opts the optional parameters
    # @return [Array<FlashCopyMapping>]
    def pcloud_cloudinstances_volumes_flash_copy_mappings_get(cloud_instance_id, volume_id, opts = {})
      data, _status_code, _headers = pcloud_cloudinstances_volumes_flash_copy_mappings_get_with_http_info(cloud_instance_id, volume_id, opts)
      data
    end

    # Get a list of flashcopy mappings of a given volume
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance
    # @param volume_id [String] Volume ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<FlashCopyMapping>, Integer, Hash)>] Array<FlashCopyMapping> data, response status code and response headers
    def pcloud_cloudinstances_volumes_flash_copy_mappings_get_with_http_info(cloud_instance_id, volume_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PCloudVolumesApi.pcloud_cloudinstances_volumes_flash_copy_mappings_get ...'
      end
      # verify the required parameter 'cloud_instance_id' is set
      if @api_client.config.client_side_validation && cloud_instance_id.nil?
        fail ArgumentError, "Missing the required parameter 'cloud_instance_id' when calling PCloudVolumesApi.pcloud_cloudinstances_volumes_flash_copy_mappings_get"
      end
      # verify the required parameter 'volume_id' is set
      if @api_client.config.client_side_validation && volume_id.nil?
        fail ArgumentError, "Missing the required parameter 'volume_id' when calling PCloudVolumesApi.pcloud_cloudinstances_volumes_flash_copy_mappings_get"
      end
      # resource path
      local_var_path = '/pcloud/v1/cloud-instances/{cloud_instance_id}/volumes/{volume_id}/flash-copy-mappings'.sub('{cloud_instance_id}', CGI.escape(cloud_instance_id.to_s)).sub('{volume_id}', CGI.escape(volume_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<FlashCopyMapping>'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"PCloudVolumesApi.pcloud_cloudinstances_volumes_flash_copy_mappings_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PCloudVolumesApi#pcloud_cloudinstances_volumes_flash_copy_mappings_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Detailed info of a volume
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance
    # @param volume_id [String] Volume ID
    # @param [Hash] opts the optional parameters
    # @return [Volume]
    def pcloud_cloudinstances_volumes_get(cloud_instance_id, volume_id, opts = {})
      data, _status_code, _headers = pcloud_cloudinstances_volumes_get_with_http_info(cloud_instance_id, volume_id, opts)
      data
    end

    # Detailed info of a volume
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance
    # @param volume_id [String] Volume ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(Volume, Integer, Hash)>] Volume data, response status code and response headers
    def pcloud_cloudinstances_volumes_get_with_http_info(cloud_instance_id, volume_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PCloudVolumesApi.pcloud_cloudinstances_volumes_get ...'
      end
      # verify the required parameter 'cloud_instance_id' is set
      if @api_client.config.client_side_validation && cloud_instance_id.nil?
        fail ArgumentError, "Missing the required parameter 'cloud_instance_id' when calling PCloudVolumesApi.pcloud_cloudinstances_volumes_get"
      end
      # verify the required parameter 'volume_id' is set
      if @api_client.config.client_side_validation && volume_id.nil?
        fail ArgumentError, "Missing the required parameter 'volume_id' when calling PCloudVolumesApi.pcloud_cloudinstances_volumes_get"
      end
      # resource path
      local_var_path = '/pcloud/v1/cloud-instances/{cloud_instance_id}/volumes/{volume_id}'.sub('{cloud_instance_id}', CGI.escape(cloud_instance_id.to_s)).sub('{volume_id}', CGI.escape(volume_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Volume'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"PCloudVolumesApi.pcloud_cloudinstances_volumes_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PCloudVolumesApi#pcloud_cloudinstances_volumes_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List all volumes for this cloud instance
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :replication_enabled true or false, limits a volumes list to replication or non replication enabled volumes
    # @option opts [String] :affinity A pvmInstance (id or name), limits a volumes list response to only volumes that have affinity to the pvmInstance
    # @option opts [Boolean] :auxiliary true or false, limits a volume list to auxiliary or non auxiliary volumes
    # @return [Volumes]
    def pcloud_cloudinstances_volumes_getall(cloud_instance_id, opts = {})
      data, _status_code, _headers = pcloud_cloudinstances_volumes_getall_with_http_info(cloud_instance_id, opts)
      data
    end

    # List all volumes for this cloud instance
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :replication_enabled true or false, limits a volumes list to replication or non replication enabled volumes
    # @option opts [String] :affinity A pvmInstance (id or name), limits a volumes list response to only volumes that have affinity to the pvmInstance
    # @option opts [Boolean] :auxiliary true or false, limits a volume list to auxiliary or non auxiliary volumes
    # @return [Array<(Volumes, Integer, Hash)>] Volumes data, response status code and response headers
    def pcloud_cloudinstances_volumes_getall_with_http_info(cloud_instance_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PCloudVolumesApi.pcloud_cloudinstances_volumes_getall ...'
      end
      # verify the required parameter 'cloud_instance_id' is set
      if @api_client.config.client_side_validation && cloud_instance_id.nil?
        fail ArgumentError, "Missing the required parameter 'cloud_instance_id' when calling PCloudVolumesApi.pcloud_cloudinstances_volumes_getall"
      end
      # resource path
      local_var_path = '/pcloud/v1/cloud-instances/{cloud_instance_id}/volumes'.sub('{cloud_instance_id}', CGI.escape(cloud_instance_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'replicationEnabled'] = opts[:'replication_enabled'] if !opts[:'replication_enabled'].nil?
      query_params[:'affinity'] = opts[:'affinity'] if !opts[:'affinity'].nil?
      query_params[:'auxiliary'] = opts[:'auxiliary'] if !opts[:'auxiliary'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Volumes'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"PCloudVolumesApi.pcloud_cloudinstances_volumes_getall",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PCloudVolumesApi#pcloud_cloudinstances_volumes_getall\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a new data Volume
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance
    # @param body [CreateDataVolume] Parameters for the creation of a new data volume
    # @param [Hash] opts the optional parameters
    # @return [Volume]
    def pcloud_cloudinstances_volumes_post(cloud_instance_id, body, opts = {})
      data, _status_code, _headers = pcloud_cloudinstances_volumes_post_with_http_info(cloud_instance_id, body, opts)
      data
    end

    # Create a new data Volume
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance
    # @param body [CreateDataVolume] Parameters for the creation of a new data volume
    # @param [Hash] opts the optional parameters
    # @return [Array<(Volume, Integer, Hash)>] Volume data, response status code and response headers
    def pcloud_cloudinstances_volumes_post_with_http_info(cloud_instance_id, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PCloudVolumesApi.pcloud_cloudinstances_volumes_post ...'
      end
      # verify the required parameter 'cloud_instance_id' is set
      if @api_client.config.client_side_validation && cloud_instance_id.nil?
        fail ArgumentError, "Missing the required parameter 'cloud_instance_id' when calling PCloudVolumesApi.pcloud_cloudinstances_volumes_post"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling PCloudVolumesApi.pcloud_cloudinstances_volumes_post"
      end
      # resource path
      local_var_path = '/pcloud/v1/cloud-instances/{cloud_instance_id}/volumes'.sub('{cloud_instance_id}', CGI.escape(cloud_instance_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(body)

      # return_type
      return_type = opts[:debug_return_type] || 'Volume'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"PCloudVolumesApi.pcloud_cloudinstances_volumes_post",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PCloudVolumesApi#pcloud_cloudinstances_volumes_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a cloud instance volume
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance
    # @param volume_id [String] Volume ID
    # @param body [UpdateVolume] Parameters to update a cloud instance volume
    # @param [Hash] opts the optional parameters
    # @return [Volume]
    def pcloud_cloudinstances_volumes_put(cloud_instance_id, volume_id, body, opts = {})
      data, _status_code, _headers = pcloud_cloudinstances_volumes_put_with_http_info(cloud_instance_id, volume_id, body, opts)
      data
    end

    # Update a cloud instance volume
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance
    # @param volume_id [String] Volume ID
    # @param body [UpdateVolume] Parameters to update a cloud instance volume
    # @param [Hash] opts the optional parameters
    # @return [Array<(Volume, Integer, Hash)>] Volume data, response status code and response headers
    def pcloud_cloudinstances_volumes_put_with_http_info(cloud_instance_id, volume_id, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PCloudVolumesApi.pcloud_cloudinstances_volumes_put ...'
      end
      # verify the required parameter 'cloud_instance_id' is set
      if @api_client.config.client_side_validation && cloud_instance_id.nil?
        fail ArgumentError, "Missing the required parameter 'cloud_instance_id' when calling PCloudVolumesApi.pcloud_cloudinstances_volumes_put"
      end
      # verify the required parameter 'volume_id' is set
      if @api_client.config.client_side_validation && volume_id.nil?
        fail ArgumentError, "Missing the required parameter 'volume_id' when calling PCloudVolumesApi.pcloud_cloudinstances_volumes_put"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling PCloudVolumesApi.pcloud_cloudinstances_volumes_put"
      end
      # resource path
      local_var_path = '/pcloud/v1/cloud-instances/{cloud_instance_id}/volumes/{volume_id}'.sub('{cloud_instance_id}', CGI.escape(cloud_instance_id.to_s)).sub('{volume_id}', CGI.escape(volume_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(body)

      # return_type
      return_type = opts[:debug_return_type] || 'Volume'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"PCloudVolumesApi.pcloud_cloudinstances_volumes_put",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PCloudVolumesApi#pcloud_cloudinstances_volumes_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get remote copy relationship of a volume
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance
    # @param volume_id [String] Volume ID
    # @param [Hash] opts the optional parameters
    # @return [VolumeRemoteCopyRelationship]
    def pcloud_cloudinstances_volumes_remote_copy_relationship_get(cloud_instance_id, volume_id, opts = {})
      data, _status_code, _headers = pcloud_cloudinstances_volumes_remote_copy_relationship_get_with_http_info(cloud_instance_id, volume_id, opts)
      data
    end

    # Get remote copy relationship of a volume
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance
    # @param volume_id [String] Volume ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(VolumeRemoteCopyRelationship, Integer, Hash)>] VolumeRemoteCopyRelationship data, response status code and response headers
    def pcloud_cloudinstances_volumes_remote_copy_relationship_get_with_http_info(cloud_instance_id, volume_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PCloudVolumesApi.pcloud_cloudinstances_volumes_remote_copy_relationship_get ...'
      end
      # verify the required parameter 'cloud_instance_id' is set
      if @api_client.config.client_side_validation && cloud_instance_id.nil?
        fail ArgumentError, "Missing the required parameter 'cloud_instance_id' when calling PCloudVolumesApi.pcloud_cloudinstances_volumes_remote_copy_relationship_get"
      end
      # verify the required parameter 'volume_id' is set
      if @api_client.config.client_side_validation && volume_id.nil?
        fail ArgumentError, "Missing the required parameter 'volume_id' when calling PCloudVolumesApi.pcloud_cloudinstances_volumes_remote_copy_relationship_get"
      end
      # resource path
      local_var_path = '/pcloud/v1/cloud-instances/{cloud_instance_id}/volumes/{volume_id}/remote-copy'.sub('{cloud_instance_id}', CGI.escape(cloud_instance_id.to_s)).sub('{volume_id}', CGI.escape(volume_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'VolumeRemoteCopyRelationship'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"PCloudVolumesApi.pcloud_cloudinstances_volumes_remote_copy_relationship_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PCloudVolumesApi#pcloud_cloudinstances_volumes_remote_copy_relationship_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Detach a volume from a PVMInstance
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance
    # @param pvm_instance_id [String] PCloud PVM Instance ID
    # @param volume_id [String] Volume ID
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def pcloud_pvminstances_volumes_delete(cloud_instance_id, pvm_instance_id, volume_id, opts = {})
      data, _status_code, _headers = pcloud_pvminstances_volumes_delete_with_http_info(cloud_instance_id, pvm_instance_id, volume_id, opts)
      data
    end

    # Detach a volume from a PVMInstance
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance
    # @param pvm_instance_id [String] PCloud PVM Instance ID
    # @param volume_id [String] Volume ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def pcloud_pvminstances_volumes_delete_with_http_info(cloud_instance_id, pvm_instance_id, volume_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PCloudVolumesApi.pcloud_pvminstances_volumes_delete ...'
      end
      # verify the required parameter 'cloud_instance_id' is set
      if @api_client.config.client_side_validation && cloud_instance_id.nil?
        fail ArgumentError, "Missing the required parameter 'cloud_instance_id' when calling PCloudVolumesApi.pcloud_pvminstances_volumes_delete"
      end
      # verify the required parameter 'pvm_instance_id' is set
      if @api_client.config.client_side_validation && pvm_instance_id.nil?
        fail ArgumentError, "Missing the required parameter 'pvm_instance_id' when calling PCloudVolumesApi.pcloud_pvminstances_volumes_delete"
      end
      # verify the required parameter 'volume_id' is set
      if @api_client.config.client_side_validation && volume_id.nil?
        fail ArgumentError, "Missing the required parameter 'volume_id' when calling PCloudVolumesApi.pcloud_pvminstances_volumes_delete"
      end
      # resource path
      local_var_path = '/pcloud/v1/cloud-instances/{cloud_instance_id}/pvm-instances/{pvm_instance_id}/volumes/{volume_id}'.sub('{cloud_instance_id}', CGI.escape(cloud_instance_id.to_s)).sub('{pvm_instance_id}', CGI.escape(pvm_instance_id.to_s)).sub('{volume_id}', CGI.escape(volume_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Object'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"PCloudVolumesApi.pcloud_pvminstances_volumes_delete",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PCloudVolumesApi#pcloud_pvminstances_volumes_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Detailed info of a volume attached to a PVMInstance
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance
    # @param pvm_instance_id [String] PCloud PVM Instance ID
    # @param volume_id [String] Volume ID
    # @param [Hash] opts the optional parameters
    # @return [Volume]
    def pcloud_pvminstances_volumes_get(cloud_instance_id, pvm_instance_id, volume_id, opts = {})
      data, _status_code, _headers = pcloud_pvminstances_volumes_get_with_http_info(cloud_instance_id, pvm_instance_id, volume_id, opts)
      data
    end

    # Detailed info of a volume attached to a PVMInstance
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance
    # @param pvm_instance_id [String] PCloud PVM Instance ID
    # @param volume_id [String] Volume ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(Volume, Integer, Hash)>] Volume data, response status code and response headers
    def pcloud_pvminstances_volumes_get_with_http_info(cloud_instance_id, pvm_instance_id, volume_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PCloudVolumesApi.pcloud_pvminstances_volumes_get ...'
      end
      # verify the required parameter 'cloud_instance_id' is set
      if @api_client.config.client_side_validation && cloud_instance_id.nil?
        fail ArgumentError, "Missing the required parameter 'cloud_instance_id' when calling PCloudVolumesApi.pcloud_pvminstances_volumes_get"
      end
      # verify the required parameter 'pvm_instance_id' is set
      if @api_client.config.client_side_validation && pvm_instance_id.nil?
        fail ArgumentError, "Missing the required parameter 'pvm_instance_id' when calling PCloudVolumesApi.pcloud_pvminstances_volumes_get"
      end
      # verify the required parameter 'volume_id' is set
      if @api_client.config.client_side_validation && volume_id.nil?
        fail ArgumentError, "Missing the required parameter 'volume_id' when calling PCloudVolumesApi.pcloud_pvminstances_volumes_get"
      end
      # resource path
      local_var_path = '/pcloud/v1/cloud-instances/{cloud_instance_id}/pvm-instances/{pvm_instance_id}/volumes/{volume_id}'.sub('{cloud_instance_id}', CGI.escape(cloud_instance_id.to_s)).sub('{pvm_instance_id}', CGI.escape(pvm_instance_id.to_s)).sub('{volume_id}', CGI.escape(volume_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Volume'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"PCloudVolumesApi.pcloud_pvminstances_volumes_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PCloudVolumesApi#pcloud_pvminstances_volumes_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List all volumes attached to a PVM Instance
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance
    # @param pvm_instance_id [String] PCloud PVM Instance ID
    # @param [Hash] opts the optional parameters
    # @return [Volumes]
    def pcloud_pvminstances_volumes_getall(cloud_instance_id, pvm_instance_id, opts = {})
      data, _status_code, _headers = pcloud_pvminstances_volumes_getall_with_http_info(cloud_instance_id, pvm_instance_id, opts)
      data
    end

    # List all volumes attached to a PVM Instance
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance
    # @param pvm_instance_id [String] PCloud PVM Instance ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(Volumes, Integer, Hash)>] Volumes data, response status code and response headers
    def pcloud_pvminstances_volumes_getall_with_http_info(cloud_instance_id, pvm_instance_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PCloudVolumesApi.pcloud_pvminstances_volumes_getall ...'
      end
      # verify the required parameter 'cloud_instance_id' is set
      if @api_client.config.client_side_validation && cloud_instance_id.nil?
        fail ArgumentError, "Missing the required parameter 'cloud_instance_id' when calling PCloudVolumesApi.pcloud_pvminstances_volumes_getall"
      end
      # verify the required parameter 'pvm_instance_id' is set
      if @api_client.config.client_side_validation && pvm_instance_id.nil?
        fail ArgumentError, "Missing the required parameter 'pvm_instance_id' when calling PCloudVolumesApi.pcloud_pvminstances_volumes_getall"
      end
      # resource path
      local_var_path = '/pcloud/v1/cloud-instances/{cloud_instance_id}/pvm-instances/{pvm_instance_id}/volumes'.sub('{cloud_instance_id}', CGI.escape(cloud_instance_id.to_s)).sub('{pvm_instance_id}', CGI.escape(pvm_instance_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Volumes'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"PCloudVolumesApi.pcloud_pvminstances_volumes_getall",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PCloudVolumesApi#pcloud_pvminstances_volumes_getall\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Attach a volume to a PVMInstance
    # Attach a volume to a PVMInstance. >**Note**: Recommended for attaching data volumes. In the case of VMRM, it is recommended to use the 'Attach all volumes to a PVM instance' API for attaching the first boot volume.
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance
    # @param pvm_instance_id [String] PCloud PVM Instance ID
    # @param volume_id [String] Volume ID
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def pcloud_pvminstances_volumes_post(cloud_instance_id, pvm_instance_id, volume_id, opts = {})
      data, _status_code, _headers = pcloud_pvminstances_volumes_post_with_http_info(cloud_instance_id, pvm_instance_id, volume_id, opts)
      data
    end

    # Attach a volume to a PVMInstance
    # Attach a volume to a PVMInstance. &gt;**Note**: Recommended for attaching data volumes. In the case of VMRM, it is recommended to use the &#39;Attach all volumes to a PVM instance&#39; API for attaching the first boot volume.
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance
    # @param pvm_instance_id [String] PCloud PVM Instance ID
    # @param volume_id [String] Volume ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def pcloud_pvminstances_volumes_post_with_http_info(cloud_instance_id, pvm_instance_id, volume_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PCloudVolumesApi.pcloud_pvminstances_volumes_post ...'
      end
      # verify the required parameter 'cloud_instance_id' is set
      if @api_client.config.client_side_validation && cloud_instance_id.nil?
        fail ArgumentError, "Missing the required parameter 'cloud_instance_id' when calling PCloudVolumesApi.pcloud_pvminstances_volumes_post"
      end
      # verify the required parameter 'pvm_instance_id' is set
      if @api_client.config.client_side_validation && pvm_instance_id.nil?
        fail ArgumentError, "Missing the required parameter 'pvm_instance_id' when calling PCloudVolumesApi.pcloud_pvminstances_volumes_post"
      end
      # verify the required parameter 'volume_id' is set
      if @api_client.config.client_side_validation && volume_id.nil?
        fail ArgumentError, "Missing the required parameter 'volume_id' when calling PCloudVolumesApi.pcloud_pvminstances_volumes_post"
      end
      # resource path
      local_var_path = '/pcloud/v1/cloud-instances/{cloud_instance_id}/pvm-instances/{pvm_instance_id}/volumes/{volume_id}'.sub('{cloud_instance_id}', CGI.escape(cloud_instance_id.to_s)).sub('{pvm_instance_id}', CGI.escape(pvm_instance_id.to_s)).sub('{volume_id}', CGI.escape(volume_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Object'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"PCloudVolumesApi.pcloud_pvminstances_volumes_post",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PCloudVolumesApi#pcloud_pvminstances_volumes_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a volume attached to a PVMInstance
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance
    # @param pvm_instance_id [String] PCloud PVM Instance ID
    # @param volume_id [String] Volume ID
    # @param body [PVMInstanceVolumeUpdate] Parameters to update a volume attached to a PVMInstance
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def pcloud_pvminstances_volumes_put(cloud_instance_id, pvm_instance_id, volume_id, body, opts = {})
      data, _status_code, _headers = pcloud_pvminstances_volumes_put_with_http_info(cloud_instance_id, pvm_instance_id, volume_id, body, opts)
      data
    end

    # Update a volume attached to a PVMInstance
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance
    # @param pvm_instance_id [String] PCloud PVM Instance ID
    # @param volume_id [String] Volume ID
    # @param body [PVMInstanceVolumeUpdate] Parameters to update a volume attached to a PVMInstance
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def pcloud_pvminstances_volumes_put_with_http_info(cloud_instance_id, pvm_instance_id, volume_id, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PCloudVolumesApi.pcloud_pvminstances_volumes_put ...'
      end
      # verify the required parameter 'cloud_instance_id' is set
      if @api_client.config.client_side_validation && cloud_instance_id.nil?
        fail ArgumentError, "Missing the required parameter 'cloud_instance_id' when calling PCloudVolumesApi.pcloud_pvminstances_volumes_put"
      end
      # verify the required parameter 'pvm_instance_id' is set
      if @api_client.config.client_side_validation && pvm_instance_id.nil?
        fail ArgumentError, "Missing the required parameter 'pvm_instance_id' when calling PCloudVolumesApi.pcloud_pvminstances_volumes_put"
      end
      # verify the required parameter 'volume_id' is set
      if @api_client.config.client_side_validation && volume_id.nil?
        fail ArgumentError, "Missing the required parameter 'volume_id' when calling PCloudVolumesApi.pcloud_pvminstances_volumes_put"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling PCloudVolumesApi.pcloud_pvminstances_volumes_put"
      end
      # resource path
      local_var_path = '/pcloud/v1/cloud-instances/{cloud_instance_id}/pvm-instances/{pvm_instance_id}/volumes/{volume_id}'.sub('{cloud_instance_id}', CGI.escape(cloud_instance_id.to_s)).sub('{pvm_instance_id}', CGI.escape(pvm_instance_id.to_s)).sub('{volume_id}', CGI.escape(volume_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(body)

      # return_type
      return_type = opts[:debug_return_type] || 'Object'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"PCloudVolumesApi.pcloud_pvminstances_volumes_put",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PCloudVolumesApi#pcloud_pvminstances_volumes_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Set the PVMInstance volume as the boot volume
    # Set the PVMInstance volume as the boot volume. >**Note**: If a non-bootable volume is provided, it will be converted to a bootable volume and then attached.
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance
    # @param pvm_instance_id [String] PCloud PVM Instance ID
    # @param volume_id [String] Volume ID
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def pcloud_pvminstances_volumes_setboot_put(cloud_instance_id, pvm_instance_id, volume_id, opts = {})
      data, _status_code, _headers = pcloud_pvminstances_volumes_setboot_put_with_http_info(cloud_instance_id, pvm_instance_id, volume_id, opts)
      data
    end

    # Set the PVMInstance volume as the boot volume
    # Set the PVMInstance volume as the boot volume. &gt;**Note**: If a non-bootable volume is provided, it will be converted to a bootable volume and then attached.
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance
    # @param pvm_instance_id [String] PCloud PVM Instance ID
    # @param volume_id [String] Volume ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def pcloud_pvminstances_volumes_setboot_put_with_http_info(cloud_instance_id, pvm_instance_id, volume_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PCloudVolumesApi.pcloud_pvminstances_volumes_setboot_put ...'
      end
      # verify the required parameter 'cloud_instance_id' is set
      if @api_client.config.client_side_validation && cloud_instance_id.nil?
        fail ArgumentError, "Missing the required parameter 'cloud_instance_id' when calling PCloudVolumesApi.pcloud_pvminstances_volumes_setboot_put"
      end
      # verify the required parameter 'pvm_instance_id' is set
      if @api_client.config.client_side_validation && pvm_instance_id.nil?
        fail ArgumentError, "Missing the required parameter 'pvm_instance_id' when calling PCloudVolumesApi.pcloud_pvminstances_volumes_setboot_put"
      end
      # verify the required parameter 'volume_id' is set
      if @api_client.config.client_side_validation && volume_id.nil?
        fail ArgumentError, "Missing the required parameter 'volume_id' when calling PCloudVolumesApi.pcloud_pvminstances_volumes_setboot_put"
      end
      # resource path
      local_var_path = '/pcloud/v1/cloud-instances/{cloud_instance_id}/pvm-instances/{pvm_instance_id}/volumes/{volume_id}/setboot'.sub('{cloud_instance_id}', CGI.escape(cloud_instance_id.to_s)).sub('{pvm_instance_id}', CGI.escape(pvm_instance_id.to_s)).sub('{volume_id}', CGI.escape(volume_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Object'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"PCloudVolumesApi.pcloud_pvminstances_volumes_setboot_put",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PCloudVolumesApi#pcloud_pvminstances_volumes_setboot_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Detach multiple volumes from a PVMInstance
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance
    # @param pvm_instance_id [String] PCloud PVM Instance ID
    # @param body [VolumesDetach] Parameter to detach multiple volumes from a PVMInstance
    # @param [Hash] opts the optional parameters
    # @return [VolumesDetachmentResponse]
    def pcloud_v2_pvminstances_volumes_delete(cloud_instance_id, pvm_instance_id, body, opts = {})
      data, _status_code, _headers = pcloud_v2_pvminstances_volumes_delete_with_http_info(cloud_instance_id, pvm_instance_id, body, opts)
      data
    end

    # Detach multiple volumes from a PVMInstance
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance
    # @param pvm_instance_id [String] PCloud PVM Instance ID
    # @param body [VolumesDetach] Parameter to detach multiple volumes from a PVMInstance
    # @param [Hash] opts the optional parameters
    # @return [Array<(VolumesDetachmentResponse, Integer, Hash)>] VolumesDetachmentResponse data, response status code and response headers
    def pcloud_v2_pvminstances_volumes_delete_with_http_info(cloud_instance_id, pvm_instance_id, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PCloudVolumesApi.pcloud_v2_pvminstances_volumes_delete ...'
      end
      # verify the required parameter 'cloud_instance_id' is set
      if @api_client.config.client_side_validation && cloud_instance_id.nil?
        fail ArgumentError, "Missing the required parameter 'cloud_instance_id' when calling PCloudVolumesApi.pcloud_v2_pvminstances_volumes_delete"
      end
      # verify the required parameter 'pvm_instance_id' is set
      if @api_client.config.client_side_validation && pvm_instance_id.nil?
        fail ArgumentError, "Missing the required parameter 'pvm_instance_id' when calling PCloudVolumesApi.pcloud_v2_pvminstances_volumes_delete"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling PCloudVolumesApi.pcloud_v2_pvminstances_volumes_delete"
      end
      # resource path
      local_var_path = '/pcloud/v2/cloud-instances/{cloud_instance_id}/pvm-instances/{pvm_instance_id}/volumes'.sub('{cloud_instance_id}', CGI.escape(cloud_instance_id.to_s)).sub('{pvm_instance_id}', CGI.escape(pvm_instance_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(body)

      # return_type
      return_type = opts[:debug_return_type] || 'VolumesDetachmentResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"PCloudVolumesApi.pcloud_v2_pvminstances_volumes_delete",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PCloudVolumesApi#pcloud_v2_pvminstances_volumes_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Attach all volumes to a PVMInstance
    # Attach all volumes to a PVMInstance. >**Note**: In the case of VMRM, if a single volume ID is provided in the 'volumeIDs' field, that volume will be converted to a bootable volume and then attached.
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance
    # @param pvm_instance_id [String] PCloud PVM Instance ID
    # @param body [VolumesAttach] Parameter to attach volumes to a PVMInstance
    # @param [Hash] opts the optional parameters
    # @return [VolumesAttachmentResponse]
    def pcloud_v2_pvminstances_volumes_post(cloud_instance_id, pvm_instance_id, body, opts = {})
      data, _status_code, _headers = pcloud_v2_pvminstances_volumes_post_with_http_info(cloud_instance_id, pvm_instance_id, body, opts)
      data
    end

    # Attach all volumes to a PVMInstance
    # Attach all volumes to a PVMInstance. &gt;**Note**: In the case of VMRM, if a single volume ID is provided in the &#39;volumeIDs&#39; field, that volume will be converted to a bootable volume and then attached.
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance
    # @param pvm_instance_id [String] PCloud PVM Instance ID
    # @param body [VolumesAttach] Parameter to attach volumes to a PVMInstance
    # @param [Hash] opts the optional parameters
    # @return [Array<(VolumesAttachmentResponse, Integer, Hash)>] VolumesAttachmentResponse data, response status code and response headers
    def pcloud_v2_pvminstances_volumes_post_with_http_info(cloud_instance_id, pvm_instance_id, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PCloudVolumesApi.pcloud_v2_pvminstances_volumes_post ...'
      end
      # verify the required parameter 'cloud_instance_id' is set
      if @api_client.config.client_side_validation && cloud_instance_id.nil?
        fail ArgumentError, "Missing the required parameter 'cloud_instance_id' when calling PCloudVolumesApi.pcloud_v2_pvminstances_volumes_post"
      end
      # verify the required parameter 'pvm_instance_id' is set
      if @api_client.config.client_side_validation && pvm_instance_id.nil?
        fail ArgumentError, "Missing the required parameter 'pvm_instance_id' when calling PCloudVolumesApi.pcloud_v2_pvminstances_volumes_post"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling PCloudVolumesApi.pcloud_v2_pvminstances_volumes_post"
      end
      # resource path
      local_var_path = '/pcloud/v2/cloud-instances/{cloud_instance_id}/pvm-instances/{pvm_instance_id}/volumes'.sub('{cloud_instance_id}', CGI.escape(cloud_instance_id.to_s)).sub('{pvm_instance_id}', CGI.escape(pvm_instance_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(body)

      # return_type
      return_type = opts[:debug_return_type] || 'VolumesAttachmentResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"PCloudVolumesApi.pcloud_v2_pvminstances_volumes_post",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PCloudVolumesApi#pcloud_v2_pvminstances_volumes_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a volume clone for specified volumes
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance
    # @param body [VolumesCloneAsyncRequest] Parameters for the cloning of volumes
    # @param [Hash] opts the optional parameters
    # @return [CloneTaskReference]
    def pcloud_v2_volumes_clone_post(cloud_instance_id, body, opts = {})
      data, _status_code, _headers = pcloud_v2_volumes_clone_post_with_http_info(cloud_instance_id, body, opts)
      data
    end

    # Create a volume clone for specified volumes
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance
    # @param body [VolumesCloneAsyncRequest] Parameters for the cloning of volumes
    # @param [Hash] opts the optional parameters
    # @return [Array<(CloneTaskReference, Integer, Hash)>] CloneTaskReference data, response status code and response headers
    def pcloud_v2_volumes_clone_post_with_http_info(cloud_instance_id, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PCloudVolumesApi.pcloud_v2_volumes_clone_post ...'
      end
      # verify the required parameter 'cloud_instance_id' is set
      if @api_client.config.client_side_validation && cloud_instance_id.nil?
        fail ArgumentError, "Missing the required parameter 'cloud_instance_id' when calling PCloudVolumesApi.pcloud_v2_volumes_clone_post"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling PCloudVolumesApi.pcloud_v2_volumes_clone_post"
      end
      # resource path
      local_var_path = '/pcloud/v2/cloud-instances/{cloud_instance_id}/volumes/clone'.sub('{cloud_instance_id}', CGI.escape(cloud_instance_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(body)

      # return_type
      return_type = opts[:debug_return_type] || 'CloneTaskReference'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"PCloudVolumesApi.pcloud_v2_volumes_clone_post",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PCloudVolumesApi#pcloud_v2_volumes_clone_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the status of a volumes clone request for the specified clone task ID
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance
    # @param clone_task_id [String] Volumes Clone Task ID
    # @param [Hash] opts the optional parameters
    # @return [CloneTaskStatus]
    def pcloud_v2_volumes_clonetasks_get(cloud_instance_id, clone_task_id, opts = {})
      data, _status_code, _headers = pcloud_v2_volumes_clonetasks_get_with_http_info(cloud_instance_id, clone_task_id, opts)
      data
    end

    # Get the status of a volumes clone request for the specified clone task ID
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance
    # @param clone_task_id [String] Volumes Clone Task ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(CloneTaskStatus, Integer, Hash)>] CloneTaskStatus data, response status code and response headers
    def pcloud_v2_volumes_clonetasks_get_with_http_info(cloud_instance_id, clone_task_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PCloudVolumesApi.pcloud_v2_volumes_clonetasks_get ...'
      end
      # verify the required parameter 'cloud_instance_id' is set
      if @api_client.config.client_side_validation && cloud_instance_id.nil?
        fail ArgumentError, "Missing the required parameter 'cloud_instance_id' when calling PCloudVolumesApi.pcloud_v2_volumes_clonetasks_get"
      end
      # verify the required parameter 'clone_task_id' is set
      if @api_client.config.client_side_validation && clone_task_id.nil?
        fail ArgumentError, "Missing the required parameter 'clone_task_id' when calling PCloudVolumesApi.pcloud_v2_volumes_clonetasks_get"
      end
      # resource path
      local_var_path = '/pcloud/v2/cloud-instances/{cloud_instance_id}/volumes/clone-tasks/{clone_task_id}'.sub('{cloud_instance_id}', CGI.escape(cloud_instance_id.to_s)).sub('{clone_task_id}', CGI.escape(clone_task_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'percentComplete', 'status']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'CloneTaskStatus'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"PCloudVolumesApi.pcloud_v2_volumes_clonetasks_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PCloudVolumesApi#pcloud_v2_volumes_clonetasks_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete all volumes
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance
    # @param body [VolumesDelete] Parameters to delete volumes
    # @param [Hash] opts the optional parameters
    # @return [VolumesDeleteResponse]
    def pcloud_v2_volumes_delete(cloud_instance_id, body, opts = {})
      data, _status_code, _headers = pcloud_v2_volumes_delete_with_http_info(cloud_instance_id, body, opts)
      data
    end

    # Delete all volumes
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance
    # @param body [VolumesDelete] Parameters to delete volumes
    # @param [Hash] opts the optional parameters
    # @return [Array<(VolumesDeleteResponse, Integer, Hash)>] VolumesDeleteResponse data, response status code and response headers
    def pcloud_v2_volumes_delete_with_http_info(cloud_instance_id, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PCloudVolumesApi.pcloud_v2_volumes_delete ...'
      end
      # verify the required parameter 'cloud_instance_id' is set
      if @api_client.config.client_side_validation && cloud_instance_id.nil?
        fail ArgumentError, "Missing the required parameter 'cloud_instance_id' when calling PCloudVolumesApi.pcloud_v2_volumes_delete"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling PCloudVolumesApi.pcloud_v2_volumes_delete"
      end
      # resource path
      local_var_path = '/pcloud/v2/cloud-instances/{cloud_instance_id}/volumes'.sub('{cloud_instance_id}', CGI.escape(cloud_instance_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(body)

      # return_type
      return_type = opts[:debug_return_type] || 'VolumesDeleteResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"PCloudVolumesApi.pcloud_v2_volumes_delete",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PCloudVolumesApi#pcloud_v2_volumes_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create multiple data volumes from a single definition
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance
    # @param body [MultiVolumesCreate] Parameters for creating multiple volumes
    # @param [Hash] opts the optional parameters
    # @return [Volumes]
    def pcloud_v2_volumes_post(cloud_instance_id, body, opts = {})
      data, _status_code, _headers = pcloud_v2_volumes_post_with_http_info(cloud_instance_id, body, opts)
      data
    end

    # Create multiple data volumes from a single definition
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance
    # @param body [MultiVolumesCreate] Parameters for creating multiple volumes
    # @param [Hash] opts the optional parameters
    # @return [Array<(Volumes, Integer, Hash)>] Volumes data, response status code and response headers
    def pcloud_v2_volumes_post_with_http_info(cloud_instance_id, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PCloudVolumesApi.pcloud_v2_volumes_post ...'
      end
      # verify the required parameter 'cloud_instance_id' is set
      if @api_client.config.client_side_validation && cloud_instance_id.nil?
        fail ArgumentError, "Missing the required parameter 'cloud_instance_id' when calling PCloudVolumesApi.pcloud_v2_volumes_post"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling PCloudVolumesApi.pcloud_v2_volumes_post"
      end
      # resource path
      local_var_path = '/pcloud/v2/cloud-instances/{cloud_instance_id}/volumes'.sub('{cloud_instance_id}', CGI.escape(cloud_instance_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(body)

      # return_type
      return_type = opts[:debug_return_type] || 'Volumes'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"PCloudVolumesApi.pcloud_v2_volumes_post",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PCloudVolumesApi#pcloud_v2_volumes_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Cancel a volumes-clone request 
    # Initiates the cleanup action that performs the cleanup of the preparatory clones and snapshot volumes.
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance
    # @param volumes_clone_id [String] Volumes Clone ID
    # @param [Hash] opts the optional parameters
    # @option opts [VolumesCloneCancel] :body Parameters for cancelling a volumes-clone request
    # @return [VolumesClone]
    def pcloud_v2_volumesclone_cancel_post(cloud_instance_id, volumes_clone_id, opts = {})
      data, _status_code, _headers = pcloud_v2_volumesclone_cancel_post_with_http_info(cloud_instance_id, volumes_clone_id, opts)
      data
    end

    # Cancel a volumes-clone request 
    # Initiates the cleanup action that performs the cleanup of the preparatory clones and snapshot volumes.
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance
    # @param volumes_clone_id [String] Volumes Clone ID
    # @param [Hash] opts the optional parameters
    # @option opts [VolumesCloneCancel] :body Parameters for cancelling a volumes-clone request
    # @return [Array<(VolumesClone, Integer, Hash)>] VolumesClone data, response status code and response headers
    def pcloud_v2_volumesclone_cancel_post_with_http_info(cloud_instance_id, volumes_clone_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PCloudVolumesApi.pcloud_v2_volumesclone_cancel_post ...'
      end
      # verify the required parameter 'cloud_instance_id' is set
      if @api_client.config.client_side_validation && cloud_instance_id.nil?
        fail ArgumentError, "Missing the required parameter 'cloud_instance_id' when calling PCloudVolumesApi.pcloud_v2_volumesclone_cancel_post"
      end
      # verify the required parameter 'volumes_clone_id' is set
      if @api_client.config.client_side_validation && volumes_clone_id.nil?
        fail ArgumentError, "Missing the required parameter 'volumes_clone_id' when calling PCloudVolumesApi.pcloud_v2_volumesclone_cancel_post"
      end
      # resource path
      local_var_path = '/pcloud/v2/cloud-instances/{cloud_instance_id}/volumes-clone/{volumes_clone_id}/cancel'.sub('{cloud_instance_id}', CGI.escape(cloud_instance_id.to_s)).sub('{volumes_clone_id}', CGI.escape(volumes_clone_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'body'])

      # return_type
      return_type = opts[:debug_return_type] || 'VolumesClone'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"PCloudVolumesApi.pcloud_v2_volumesclone_cancel_post",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PCloudVolumesApi#pcloud_v2_volumesclone_cancel_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a volumes-clone request
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance
    # @param volumes_clone_id [String] Volumes Clone ID
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def pcloud_v2_volumesclone_delete(cloud_instance_id, volumes_clone_id, opts = {})
      data, _status_code, _headers = pcloud_v2_volumesclone_delete_with_http_info(cloud_instance_id, volumes_clone_id, opts)
      data
    end

    # Delete a volumes-clone request
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance
    # @param volumes_clone_id [String] Volumes Clone ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def pcloud_v2_volumesclone_delete_with_http_info(cloud_instance_id, volumes_clone_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PCloudVolumesApi.pcloud_v2_volumesclone_delete ...'
      end
      # verify the required parameter 'cloud_instance_id' is set
      if @api_client.config.client_side_validation && cloud_instance_id.nil?
        fail ArgumentError, "Missing the required parameter 'cloud_instance_id' when calling PCloudVolumesApi.pcloud_v2_volumesclone_delete"
      end
      # verify the required parameter 'volumes_clone_id' is set
      if @api_client.config.client_side_validation && volumes_clone_id.nil?
        fail ArgumentError, "Missing the required parameter 'volumes_clone_id' when calling PCloudVolumesApi.pcloud_v2_volumesclone_delete"
      end
      # resource path
      local_var_path = '/pcloud/v2/cloud-instances/{cloud_instance_id}/volumes-clone/{volumes_clone_id}'.sub('{cloud_instance_id}', CGI.escape(cloud_instance_id.to_s)).sub('{volumes_clone_id}', CGI.escape(volumes_clone_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Object'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"PCloudVolumesApi.pcloud_v2_volumesclone_delete",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PCloudVolumesApi#pcloud_v2_volumesclone_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Initiate the Execute action for a volumes-clone request 
    # Execute action creates the cloned volumes using the volume snapshots.
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance
    # @param volumes_clone_id [String] Volumes Clone ID
    # @param body [VolumesCloneExecute] Parameters for the cloning of volumes
    # @param [Hash] opts the optional parameters
    # @return [VolumesClone]
    def pcloud_v2_volumesclone_execute_post(cloud_instance_id, volumes_clone_id, body, opts = {})
      data, _status_code, _headers = pcloud_v2_volumesclone_execute_post_with_http_info(cloud_instance_id, volumes_clone_id, body, opts)
      data
    end

    # Initiate the Execute action for a volumes-clone request 
    # Execute action creates the cloned volumes using the volume snapshots.
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance
    # @param volumes_clone_id [String] Volumes Clone ID
    # @param body [VolumesCloneExecute] Parameters for the cloning of volumes
    # @param [Hash] opts the optional parameters
    # @return [Array<(VolumesClone, Integer, Hash)>] VolumesClone data, response status code and response headers
    def pcloud_v2_volumesclone_execute_post_with_http_info(cloud_instance_id, volumes_clone_id, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PCloudVolumesApi.pcloud_v2_volumesclone_execute_post ...'
      end
      # verify the required parameter 'cloud_instance_id' is set
      if @api_client.config.client_side_validation && cloud_instance_id.nil?
        fail ArgumentError, "Missing the required parameter 'cloud_instance_id' when calling PCloudVolumesApi.pcloud_v2_volumesclone_execute_post"
      end
      # verify the required parameter 'volumes_clone_id' is set
      if @api_client.config.client_side_validation && volumes_clone_id.nil?
        fail ArgumentError, "Missing the required parameter 'volumes_clone_id' when calling PCloudVolumesApi.pcloud_v2_volumesclone_execute_post"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling PCloudVolumesApi.pcloud_v2_volumesclone_execute_post"
      end
      # resource path
      local_var_path = '/pcloud/v2/cloud-instances/{cloud_instance_id}/volumes-clone/{volumes_clone_id}/execute'.sub('{cloud_instance_id}', CGI.escape(cloud_instance_id.to_s)).sub('{volumes_clone_id}', CGI.escape(volumes_clone_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(body)

      # return_type
      return_type = opts[:debug_return_type] || 'VolumesClone'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"PCloudVolumesApi.pcloud_v2_volumesclone_execute_post",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PCloudVolumesApi#pcloud_v2_volumesclone_execute_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the details for a volumes-clone request
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance
    # @param volumes_clone_id [String] Volumes Clone ID
    # @param [Hash] opts the optional parameters
    # @return [VolumesCloneDetail]
    def pcloud_v2_volumesclone_get(cloud_instance_id, volumes_clone_id, opts = {})
      data, _status_code, _headers = pcloud_v2_volumesclone_get_with_http_info(cloud_instance_id, volumes_clone_id, opts)
      data
    end

    # Get the details for a volumes-clone request
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance
    # @param volumes_clone_id [String] Volumes Clone ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(VolumesCloneDetail, Integer, Hash)>] VolumesCloneDetail data, response status code and response headers
    def pcloud_v2_volumesclone_get_with_http_info(cloud_instance_id, volumes_clone_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PCloudVolumesApi.pcloud_v2_volumesclone_get ...'
      end
      # verify the required parameter 'cloud_instance_id' is set
      if @api_client.config.client_side_validation && cloud_instance_id.nil?
        fail ArgumentError, "Missing the required parameter 'cloud_instance_id' when calling PCloudVolumesApi.pcloud_v2_volumesclone_get"
      end
      # verify the required parameter 'volumes_clone_id' is set
      if @api_client.config.client_side_validation && volumes_clone_id.nil?
        fail ArgumentError, "Missing the required parameter 'volumes_clone_id' when calling PCloudVolumesApi.pcloud_v2_volumesclone_get"
      end
      # resource path
      local_var_path = '/pcloud/v2/cloud-instances/{cloud_instance_id}/volumes-clone/{volumes_clone_id}'.sub('{cloud_instance_id}', CGI.escape(cloud_instance_id.to_s)).sub('{volumes_clone_id}', CGI.escape(volumes_clone_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'VolumesCloneDetail'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"PCloudVolumesApi.pcloud_v2_volumesclone_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PCloudVolumesApi#pcloud_v2_volumesclone_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the list of volumes-clone request for a cloud instance
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance
    # @param [Hash] opts the optional parameters
    # @option opts [String] :filter volumes-clone filter to limit list items:   prepare - includes status values (preparing, prepared)   start   - includes status values (starting, available)   execute - includes status values (executing, available-rollback)   cancel  - includes status values (cancelling)   completed - includes status values (completed)   failed - includes status values (failed)   cancelled - includes status values (cancelled)   finalized - included status values (completed, failed, cancelled) 
    # @return [VolumesClones]
    def pcloud_v2_volumesclone_getall(cloud_instance_id, opts = {})
      data, _status_code, _headers = pcloud_v2_volumesclone_getall_with_http_info(cloud_instance_id, opts)
      data
    end

    # Get the list of volumes-clone request for a cloud instance
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance
    # @param [Hash] opts the optional parameters
    # @option opts [String] :filter volumes-clone filter to limit list items:   prepare - includes status values (preparing, prepared)   start   - includes status values (starting, available)   execute - includes status values (executing, available-rollback)   cancel  - includes status values (cancelling)   completed - includes status values (completed)   failed - includes status values (failed)   cancelled - includes status values (cancelled)   finalized - included status values (completed, failed, cancelled) 
    # @return [Array<(VolumesClones, Integer, Hash)>] VolumesClones data, response status code and response headers
    def pcloud_v2_volumesclone_getall_with_http_info(cloud_instance_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PCloudVolumesApi.pcloud_v2_volumesclone_getall ...'
      end
      # verify the required parameter 'cloud_instance_id' is set
      if @api_client.config.client_side_validation && cloud_instance_id.nil?
        fail ArgumentError, "Missing the required parameter 'cloud_instance_id' when calling PCloudVolumesApi.pcloud_v2_volumesclone_getall"
      end
      allowable_values = ["prepare", "start", "execute", "cancel", "completed", "failed", "cancelled", "finalized"]
      if @api_client.config.client_side_validation && opts[:'filter'] && !allowable_values.include?(opts[:'filter'])
        fail ArgumentError, "invalid value for \"filter\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/pcloud/v2/cloud-instances/{cloud_instance_id}/volumes-clone'.sub('{cloud_instance_id}', CGI.escape(cloud_instance_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'filter'] = opts[:'filter'] if !opts[:'filter'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'VolumesClones'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"PCloudVolumesApi.pcloud_v2_volumesclone_getall",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PCloudVolumesApi#pcloud_v2_volumesclone_getall\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a new volumes clone request and initiates the Prepare action 
    # Requires a minimum of two volumes. Requires a minimum of one volume to be in the `in-use` state. Requires a unique volumes clone name. Prepare action does the preparatory work for creating the snapshot volumes. >**Note**: If there is an existing prepare, user cannot trigger another prepare for the same set of volumes. Prepare should be followed by start and execute. If existing prepare does not have to be used then it should be first cancelled before the next prepare operation. 
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance
    # @param body [VolumesCloneCreate] Parameters for preparing a set of volumes to be cloned
    # @param [Hash] opts the optional parameters
    # @return [VolumesClone]
    def pcloud_v2_volumesclone_post(cloud_instance_id, body, opts = {})
      data, _status_code, _headers = pcloud_v2_volumesclone_post_with_http_info(cloud_instance_id, body, opts)
      data
    end

    # Create a new volumes clone request and initiates the Prepare action 
    # Requires a minimum of two volumes. Requires a minimum of one volume to be in the &#x60;in-use&#x60; state. Requires a unique volumes clone name. Prepare action does the preparatory work for creating the snapshot volumes. &gt;**Note**: If there is an existing prepare, user cannot trigger another prepare for the same set of volumes. Prepare should be followed by start and execute. If existing prepare does not have to be used then it should be first cancelled before the next prepare operation. 
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance
    # @param body [VolumesCloneCreate] Parameters for preparing a set of volumes to be cloned
    # @param [Hash] opts the optional parameters
    # @return [Array<(VolumesClone, Integer, Hash)>] VolumesClone data, response status code and response headers
    def pcloud_v2_volumesclone_post_with_http_info(cloud_instance_id, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PCloudVolumesApi.pcloud_v2_volumesclone_post ...'
      end
      # verify the required parameter 'cloud_instance_id' is set
      if @api_client.config.client_side_validation && cloud_instance_id.nil?
        fail ArgumentError, "Missing the required parameter 'cloud_instance_id' when calling PCloudVolumesApi.pcloud_v2_volumesclone_post"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling PCloudVolumesApi.pcloud_v2_volumesclone_post"
      end
      # resource path
      local_var_path = '/pcloud/v2/cloud-instances/{cloud_instance_id}/volumes-clone'.sub('{cloud_instance_id}', CGI.escape(cloud_instance_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(body)

      # return_type
      return_type = opts[:debug_return_type] || 'VolumesClone'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"PCloudVolumesApi.pcloud_v2_volumesclone_post",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PCloudVolumesApi#pcloud_v2_volumesclone_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Initiate the Start action for a volumes-clone request 
    # Start action starts the consistency group to initiate the flash copy.
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance
    # @param volumes_clone_id [String] Volumes Clone ID
    # @param [Hash] opts the optional parameters
    # @return [VolumesClone]
    def pcloud_v2_volumesclone_start_post(cloud_instance_id, volumes_clone_id, opts = {})
      data, _status_code, _headers = pcloud_v2_volumesclone_start_post_with_http_info(cloud_instance_id, volumes_clone_id, opts)
      data
    end

    # Initiate the Start action for a volumes-clone request 
    # Start action starts the consistency group to initiate the flash copy.
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance
    # @param volumes_clone_id [String] Volumes Clone ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(VolumesClone, Integer, Hash)>] VolumesClone data, response status code and response headers
    def pcloud_v2_volumesclone_start_post_with_http_info(cloud_instance_id, volumes_clone_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PCloudVolumesApi.pcloud_v2_volumesclone_start_post ...'
      end
      # verify the required parameter 'cloud_instance_id' is set
      if @api_client.config.client_side_validation && cloud_instance_id.nil?
        fail ArgumentError, "Missing the required parameter 'cloud_instance_id' when calling PCloudVolumesApi.pcloud_v2_volumesclone_start_post"
      end
      # verify the required parameter 'volumes_clone_id' is set
      if @api_client.config.client_side_validation && volumes_clone_id.nil?
        fail ArgumentError, "Missing the required parameter 'volumes_clone_id' when calling PCloudVolumesApi.pcloud_v2_volumesclone_start_post"
      end
      # resource path
      local_var_path = '/pcloud/v2/cloud-instances/{cloud_instance_id}/volumes-clone/{volumes_clone_id}/start'.sub('{cloud_instance_id}', CGI.escape(cloud_instance_id.to_s)).sub('{volumes_clone_id}', CGI.escape(volumes_clone_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'VolumesClone'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"PCloudVolumesApi.pcloud_v2_volumesclone_start_post",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PCloudVolumesApi#pcloud_v2_volumesclone_start_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a volume clone for specified volumes
    # This API is deprecated, use v2 clone API to perform the volume clone.  >*Note*: Support for this API will be available till 31st March 2023. 
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance
    # @param body [VolumesCloneRequest] Parameters for the cloning of volumes
    # @param [Hash] opts the optional parameters
    # @return [VolumesCloneResponse]
    def pcloud_volumes_clone_post(cloud_instance_id, body, opts = {})
      data, _status_code, _headers = pcloud_volumes_clone_post_with_http_info(cloud_instance_id, body, opts)
      data
    end

    # Create a volume clone for specified volumes
    # This API is deprecated, use v2 clone API to perform the volume clone.  &gt;*Note*: Support for this API will be available till 31st March 2023. 
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance
    # @param body [VolumesCloneRequest] Parameters for the cloning of volumes
    # @param [Hash] opts the optional parameters
    # @return [Array<(VolumesCloneResponse, Integer, Hash)>] VolumesCloneResponse data, response status code and response headers
    def pcloud_volumes_clone_post_with_http_info(cloud_instance_id, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PCloudVolumesApi.pcloud_volumes_clone_post ...'
      end
      # verify the required parameter 'cloud_instance_id' is set
      if @api_client.config.client_side_validation && cloud_instance_id.nil?
        fail ArgumentError, "Missing the required parameter 'cloud_instance_id' when calling PCloudVolumesApi.pcloud_volumes_clone_post"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling PCloudVolumesApi.pcloud_volumes_clone_post"
      end
      # resource path
      local_var_path = '/pcloud/v1/cloud-instances/{cloud_instance_id}/volumes/clone'.sub('{cloud_instance_id}', CGI.escape(cloud_instance_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(body)

      # return_type
      return_type = opts[:debug_return_type] || 'VolumesCloneResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"PCloudVolumesApi.pcloud_volumes_clone_post",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PCloudVolumesApi#pcloud_volumes_clone_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
