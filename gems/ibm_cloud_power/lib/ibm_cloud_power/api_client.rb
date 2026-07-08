=begin
#Power Cloud API

### Introduction  You can use the IBM® Power® Virtual Server to easily deploy and configure virtual servers that are running AIX, IBM i, or Linux (RHEL and SLES) workloads.  To learn about using Power Virtual Server, see: - [Getting started with IBM Power Virtual Servers](https://cloud.ibm.com/docs/power-iaas?topic=power-iaas-getting-started) - [IBM Power Virtual Server CLI Reference](https://cloud.ibm.com/docs/power-iaas-cli-plugin?topic=power-iaas-cli-plugin-power-iaas-cli-reference-v1)  ## Endpoint URLs  The Power Virtual Server service uses regional endpoints over both public and private network.  Automatically generated regional API endpoints (service URL) will default to IBM Cloud Regions which may cause your request to fail. You should always use the Power Virtual Server regions in the service URL.  The following table shows the IBM Cloud® regions and their corresponding Power Virtual Server region where the APIs are available: <!-- | Country       | Power Virtual Server region | Location | Public endpoint (service URL)               | | ------------- | ------------------------------------------ | -------- | ------------------------------------------- | | United States | Washington DC                              | us-south | `https://us-south.power-iaas.cloud.ibm.com` |  | Washington DC, USA | us-east | us-east | `https://us-east.power-iaas.cloud.ibm.com` | | S----------------l | b-----o | s-----o | `----------------------------------------` | | Toronto, Canada    | ca-tor  | tor     | `https://tor.power-iaas.cloud.ibm.com`     | | Montreal, Canada   | ca-mon  | mon     | `https://mon.power-iaas.cloud.ibm.com`     | | Frankfurt, Germany | eu-de   | eu-de   | `https://eu-de.power-iaas.cloud.ibm.com`   | | London, UK         | eu-gb   | lon     | `https://lon.power-iaas.cloud.ibm.com`     | | Sydney, Australia  | au-syd  | syd     | `https://syd.power-iaas.cloud.ibm.com`     | | Tokyo, Japan       | jp-tok  | tok     | `https://tok.power-iaas.cloud.ibm.com`     | | Osaka, Japan       | jp-osa  | osa     | `https://osa.power-iaas.cloud.ibm.com`     |   -->  | Country          | Power Virtual Server region | Location                   | Public end-point (service URL)            | | ---------------- | ------------------------------------------ | -------------------------- | ----------------------------------------- | | Australia        | Sydney                                     | syd04 \\n syd05             | https://syd.power-iaas.cloud.ibm.com      | | Brazil           | Sao Paulo                                  | sao01 \\n sao04             | https://sao.power-iaas.cloud.ibm.com      | | Canada           | Montreal                                   | mon01                      | https://mon.power-iaas.cloud.ibm.com      | |                  | Toronto                                    | tor01                      | https://tor.power-iaas.cloud.ibm.com      | | Germany          | Frankfurt                                  | eu-de-1 \\n eu-de-2         | https://eu-de.power-iaas.cloud.ibm.com    | | UK/Great Britain | London                                     | lon04 \\n lon06             | https://lon.power-iaas.cloud.ibm.com      | | India            | Chennai                                    | che01 \\n che02 \\n che03    | https://che.power-iaas.cloud.ibm.com      | |                  | Mumbai                                     | in-mum-1 \\n in-mum-2       | https://in-mum.power-iaas.cloud.ibm.com   | | Japan            | Tokyo                                      | tok04                      | https://tok.power-iaas.cloud.ibm.com      | |                  | Osaka                                      | osa21                      | https://osa.power-iaas.cloud.ibm.com      | | Spain            | Madrid                                     | mad02 \\n mad04             | https://mad.power-iaas.cloud.ibm.com      | | United States    | Washington DC                              | us-east \\n wdc06 \\n wdc07  | https://us-east.power-iaas.cloud.ibm.com  | |                  | Dallas                                     | dal10 \\n dal12 \\n us-south | https://us-south.power-iaas.cloud.ibm.com |  | Country          | Power Virtual Server region | Location                   | Private end-point (service URL)                   | | ---------------- | ------------------------------------------ | -------------------------- | ------------------------------------------------- | | Australia        | Sydney                                     | syd04 \\n syd05             | https://private.au-syd.power-iaas.cloud.ibm.com   | | Brazil           | Sao Paulo                                  | sao01 \\n sao04             | https://private.br-sao.power-iaas.cloud.ibm.com   | | Canada           | Montreal                                   | mon01                      | https://private.ca-mon.power-iaas.cloud.ibm.com   | |                  | Toronto                                    | tor01                      | https://private.ca-tor.power-iaas.cloud.ibm.com   | | Germany          | Frankfurt                                  | eu-de-1 \\n eu-de-2         | https://private.eu-de.power-iaas.cloud.ibm.com    | | UK/Great Britain | London                                     | lon04 \\n lon06             | https://private.eu-gb.power-iaas.cloud.ibm.com    | | India            | Chennai                                    | che01 \\n che02 \\n che03    | https://private.in-che.power-iaas.cloud.ibm.com   | |                  | Mumbai                                     | in-mum-1 \\n in-mum-2       | https://private.in-mum.power-iaas.cloud.ibm.com   | | Japan            | Tokyo                                      | tok04                      | https://private.jp-tok.power-iaas.cloud.ibm.com   | |                  | Osaka                                      | osa21                      | https://private.jp-osa.power-iaas.cloud.ibm.com   | | Spain            | Madrid                                     | mad02 \\n mad04             | https://private.eu-es.power-iaas.cloud.ibm.com    | | United States    | Washington DC                              | us-east \\n wdc06 \\n wdc07  | https://private.us-east.power-iaas.cloud.ibm.com  | |                  | Dallas                                     | dal10 \\n dal12 \\n us-south | https://private.us-south.power-iaas.cloud.ibm.com |  ## Curl service URL intro  To call the API, select the service URL that corresponds to the region of your choice and add a method path to form the complete request URL. For example, to list all the workspaces available in the `us-south` region, make a `GET` request to `https://us-south.iaas.cloud.ibm.com/v1/workspaces`.  Example request to call the `us-south` service URL:  ```codeblock curl -H \"Authorization: Bearer {token}\" -X {http_method} \"https://us-south.iaas.cloud.ibm.com/v1{path}\" ```  Replace `{token}`, `{http_method}`, and `{path}` in this example with the values for your particular request.  ## Authentication  The Power Virtual Server API uses Identity and Access Management ([IAM](https://cloud.ibm.com/docs/account?topic=account-iamoverview)) to authenticate requests. To call each API method, you must be assigned a role that includes the required IAM actions. Each method has an Authorization section that lists the required actions and, if applicable, the conditions under which each action is required. Check your access on the [IBM Cloud console](https://cloud.ibm.com/login) by navigating to **[Users](https://cloud.ibm.com/iam/users) > _User_ > Access**.  For more information about IAM actions and how they map to roles, see [Assigning access to account management services](https://cloud.ibm.com/docs/account?topic=account-account-services) and [Managing IAM access for Power Virtual Server](https://cloud.ibm.com/docs/power-iaas?topic=power-iaas-managing-resources-and-users).  Learn about obtaining an IAM token for an authenticated user or service ID in the [IAM Identity Services API](https://cloud.ibm.com/apidocs/iam-identity-token-api). If you first [create an API key](https://cloud.ibm.com/docs/account?topic=account-userapikey#create_user_key), you can [use it to generate an IAM token](https://cloud.ibm.com/docs/account?topic=account-iamtoken_from_apikey).  To use the API, add a valid IAM token to the HTTP `Authorization` request header. For example, `-H 'Authorization: Bearer {token}'`.  For specific APIs you must need to include your IBM Cloud IAM access token and the Power Virtual Server instance ID, also known as your **Cloud Resource Name** (CRN), in each request. The first part of your CRN contains your **Tenant ID** and the second part contains your **Cloud Instance ID**.  The following example shows a typical CRN:  ```text crn:v1:staging:public:power-iaas:us-east:a/abcdefghijklmnopqrstuvwxyzabcdef:121d5ee5-b87d-4a0e-86b8-aaff422135478::  Tenant ID {tenant_id} = abcdefghijklmnopqrstuvwxyzabcdef Cloud Instance ID {cloud_instance_id} = 121d5ee5-b87d-4a0e-86b8-aaff422135478 ```  You can retrieve an access token by first creating an API key, and then exchanging your API key for a IBM Cloud IAM token. For more information, see [Retrieving an access token programmatically](https://cloud.ibm.com/docs/services/key-protect?topic=key-protect-retrieve-access-token) and [Retrieving your instance ID](https://cloud.ibm.com/docs/services/key-protect?topic=key-protect-retrieve-instance-ID).  To retrieve your access token:  ```sh curl -X POST \\   \"https://iam.cloud.ibm.com/identity/token\" \\   --header 'Content-Type: application/x-www-form-urlencoded' \\   --header 'Accept: application/json' \\   --data-urlencode 'grant_type=urn:ibm:params:oauth:grant-type:apikey' \\   --data-urlencode 'apikey={api_key}' ```  To use the API, replace `{token}` with the token obtained above from IAM, replace `{http_method}` with an HTTP method such as `POST`, and replace `{url}` with a request URL such as `https://us-south.iaas.cloud.ibm.com/v1/workspaces/{workspace_id}`:  ```sh curl -H \"Authorization: Bearer {token}\" -X {http_method} \"{url}\"      -H \"CRN\" ```  ## Auditing  Monitor API activity within your account by using the IBM Cloud Activity Tracker service. Each time you make an API call, one or more events are generated that you can track and audit from within Activity Tracker. Specific auditing event types are listed for each individual method. For more information about Power Virtual Server activity tracking, see [Activity Tracker events](https://cloud.ibm.com/docs/power-iaas?topic=power-iaas-at-events).  ## Error handling  This API uses standard HTTP response codes to indicate whether a method completed successfully. A `200` response indicates success. A `400` type response indicates a failure, and a `500` type response indicates an internal system error.  | HTTP Error Code | Description                | Recovery                                                                                                                                                                                                                                                                                                                                                                | | --------------- | -------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | | `400`           | Bad Request                | The input parameters in the request body are either incomplete, malformed, or too large. Be sure to include all required parameters in your request.                                                                                                                                                                                                                    | | `401`           | Unauthorized               | You are not authorized to make this request. Log in to IBM Cloud and try submitting the request again. If this error persists, contact the account owner to check your permissions.                                                                                                                                                              | | `403`           | Forbidden                  | The supplied authentication is not authorized to perform the requested operation. Either you do not have valid access through IAM access policies or your request is denied. If this error persists, contact the account owner to check your permissions.                                                                                                               | | `404`           | Not Found                  | The requested resource could not be found but may be available in the future.                                                                                                                                                                                                                                                                                           | | `405`           | Method Not Allowed         | The requested resource does not support the request method.                                                                                                                                                                                                                                                                                                             | | `406`           | Not Acceptable             | The resource the client requested is not available in a format allowed by the `Accept` header supplied by the client.                                                                                                                                                                                                                                                   | | `408`           | Request Timeout            | The connection to the server timed out. Wait a few minutes, and try submitting the request again.                                                                                                                                                                                                                                                                       | | `409`           | Conflict                   | The request cannot be completed because of a conflict between the request and the current state of the resource.                                                                                                                                                                                                                                                        | | `412`           | Precondition Failed        | The client specified one or more preconditions in its headers, and the server cannot meet those preconditions.                                                                                                                                                                                                                                                          | | `426`           | Upgrade Required           | The server refuses to perform the request using the current protocol but might perform the request after the client upgrades to a different protocol.                                                                                                                                                                                                                   | | `500`           | Internal Server Error      | The request cannot be processed because the client encountered an unexpected condition on the server. Wait a few minutes and try submitting the request again. If this error persists, contact IBM Support.                                                                                                                                                             | | `501`           | Not Implemented            | The server either does not recognize the request method, or it lacks the ability to fulfill the request.                                                                                                                                                                                                                                                                | | `502`           | Bad Gateway                | The server was acting as a gateway or proxy and received an invalid response from the upstream server.                                                                                                                                                                                                                                                                  | | `503`           | Service Unavailable        | The server cannot process the request. Generally, this condition is temporary, such as when a server is overloaded or down for scheduled maintenance. This condition could also be due to an unplanned outage of a service that is needed to process the request. Wait a few minutes and try submitting the request again. If this error persists, contact IBM Support. | | `504`           | Gateway Timeout            | The server was acting as a gateway or proxy and did not receive a timely response from the upstream server.                                                                                                                                                                                                                                                             | | `505`           | HTTP Version Not Supported | The server does not support the HTTP protocol version that is used in the request.                                                                                                                                                                                                                                                                                      |  ## Release notes  Use the release notes to learn about the latest changes to the Power Virtual Server API.  <!-- ## 2025  -->  ### June 2026  Added the following APIs associated with vPMEM volumes: - [Update a vPMEM volume attached to this PVM Instance](https://cloud.ibm.com/docs/apis/power-cloud#pcloud-pvminstances-vpmem-volumes-put)  ### December 2025  Added the following APIs associated with vPMEM volumes: - [List all vPMEM volumes attached to this PVM Instance](https://cloud.ibm.com/apidocs/power-cloud#pcloud-pvminstances-vpmem-volumes-getall) - [Create a vPMEM volume to be attached to this PVM Instance](https://cloud.ibm.com/apidocs/power-cloud#pcloud-pvminstances-vpmem-volumes-post) - [Delete a vPMEM volume attached to this PVM Instance](https://cloud.ibm.com/apidocs/power-cloud#pcloud-pvminstances-vpmem-volumes-delete) - [Get information about a vPMEM volume](https://cloud.ibm.com/apidocs/power-cloud#pcloud-pvminstances-vpmem-volumes-get)  ### September 2025  Added the following APIs associated with network peers: - [Get the list of Network Peers for a workspace](https://cloud.ibm.com/apidocs/power-cloud#v1-networkpeers-getall) - [Create a new Network Peer](https://cloud.ibm.com/apidocs/power-cloud#v1-networkpeers-post) - [Get the list of Network Interfaces for a workspace](https://cloud.ibm.com/apidocs/power-cloud#v1-networkpeers-interfaces-getall) - [Delete a Network Peer from a workspace](https://cloud.ibm.com/apidocs/power-cloud#v1-networkpeers-id-delete) - [Get the details of a Network Peer](https://cloud.ibm.com/apidocs/power-cloud#v1-networkpeers-id-get) - [Update a Network Peer](https://cloud.ibm.com/apidocs/power-cloud#v1-networkpeers-id-put) - [Create a new Route Filter](https://cloud.ibm.com/apidocs/power-cloud#v1-networkpeers-routefilter-post) - [Delete a Route Filter from a Network Peer](https://cloud.ibm.com/apidocs/power-cloud#v1-networkpeers-routefilter-id-delete) - [Get the details of a Route Filter](https://cloud.ibm.com/apidocs/power-cloud#v1-networkpeers-routefilter-id-get)  ### July 2025  Added the following APIs associated with routes: - [Get all routes in the workspace](https://cloud.ibm.com/apidocs/power-cloud?loginMethod=federated#v1-routes-getall) - [Perform a route creation](https://cloud.ibm.com/apidocs/power-cloud?loginMethod=federated#v1-routes-post) - [Get the route report for a workspace](https://cloud.ibm.com/apidocs/power-cloud?loginMethod=federated#v1-routes-report-get) - [Delete a route](https://cloud.ibm.com/apidocs/power-cloud?loginMethod=federated#v1-routes-delete) - [Get a route's information](https://cloud.ibm.com/apidocs/power-cloud?loginMethod=federated#v1-routes-get) - [Update a route's information](https://cloud.ibm.com/apidocs/power-cloud?loginMethod=federated#v1-routes-put)  Added the following APIs associated with ssh keys: - [List SSH Keys](https://cloud.ibm.com/apidocs/power-cloud?loginMethod=federated#v1-sshkeys-getall) - [Add a new SSH key](https://cloud.ibm.com/apidocs/power-cloud?loginMethod=federated#v1-sshkeys-post) - [Delete ssh-key](https://cloud.ibm.com/apidocs/power-cloud?loginMethod=federated#v1-sshkeys-delete) - [Get ssh-key information](https://cloud.ibm.com/apidocs/power-cloud?loginMethod=federated#v1-sshkeys-get) - [Update the ssh key](https://cloud.ibm.com/apidocs/power-cloud?loginMethod=federated#v1-sshkeys-put)  Added an API to list the supported IBM i software tiers: [List supported software tiers (IBMi licensing)](https://cloud.ibm.com/apidocs/power-cloud?loginMethod=federated#pcloud-virtualserialnumber-softwaretiers-getall)  ### February 2025  Added the following APIs associated with network address groups: - [Get the list of Network Address Groups for a workspace](https://cloud.ibm.com/apidocs/power-cloud#v1-networkaddressgroups-get) - [Create a new Network Address Group](https://cloud.ibm.com/apidocs/power-cloud#v1-networkaddressgroups-post) - [Delete a Network Address Group from a workspace](https://cloud.ibm.com/apidocs/power-cloud#v1-networkaddressgroups-id-delete) - [Get the detail of a Network Address Group](https://cloud.ibm.com/apidocs/power-cloud#v1-networkaddressgroups-id-get) - [Update a Network Address Group](https://cloud.ibm.com/apidocs/power-cloud#v1-networkaddressgroups-id-put) - [Add a member to a Network Address Group](https://cloud.ibm.com/apidocs/power-cloud#v1-networkaddressgroups-members-post) - [Delete the member from a Network Address Group](https://cloud.ibm.com/apidocs/power-cloud#v1-networkaddressgroups-members-delete)  Added the following APIs associated with network security groups: - [Get the list of Network Security Groups for a workspace](https://cloud.ibm.com/apidocs/power-cloud#v1-networksecuritygroups-list) - [Create a new Network Security Group](https://cloud.ibm.com/apidocs/power-cloud#v1-networksecuritygroups-post) - [Perform a Network Security Groups action (enable, disable) on a workspace.](https://cloud.ibm.com/apidocs/power-cloud#v1-networksecuritygroups-action-post) - [Delete a Network Security Group from a workspace](https://cloud.ibm.com/apidocs/power-cloud#v1-networksecuritygroups-id-delete) - [Get the detail of a Network Security Group](https://cloud.ibm.com/apidocs/power-cloud#v1-networksecuritygroups-id-get) - [Clone a Network Security Group](https://cloud.ibm.com/apidocs/power-cloud#v1-networksecuritygroups-id-post) - [Update a Network Security Group](https://cloud.ibm.com/apidocs/power-cloud#v1-networksecuritygroups-id-put) - [Add a member to a Network Security Group](https://cloud.ibm.com/apidocs/power-cloud#v1-networksecuritygroups-members-post) - [Delete the member from a Network Security Group](https://cloud.ibm.com/apidocs/power-cloud#v1-networksecuritygroups-members-delete) - [Move a Network Security Group member to another Network Security Group](https://cloud.ibm.com/apidocs/power-cloud#v1-networksecuritygroups-move-member-post) - [Add a rule to a Network Security Group](https://cloud.ibm.com/apidocs/power-cloud#v1-networksecuritygroups-rules-post) - [Delete the rule from a Network Security Group](https://cloud.ibm.com/apidocs/power-cloud#v1-networksecuritygroups-rules-delete)  ### December 2023  The following APIs are availavle: - [Get all Datacenters information and capabilities](https://cloud.ibm.com/apidocs/power-cloud#v1-datacenters-getall) - [Get a Datacenter's information and capabilities](https://cloud.ibm.com/apidocs/power-cloud#v1-datacenters-get) - [Get all Workspaces information and capabilities for a tenant](https://cloud.ibm.com/apidocs/power-cloud#v1-workspaces-getall) - [Get a Workspace's information and capabilities](https://cloud.ibm.com/apidocs/power-cloud#v1-workspaces-get)  ### November 2023  - New API [List all supported storage tiers for this cloud instance](https://cloud.ibm.com/apidocs/power-cloud#pcloud-cloudinstances-storagetiers-getall) is available.  ### September 2023  - Added parameters `availableCapacity`, `maxAllocationSize`, `replicationEnabled`, `storageHost` in the [Storage capacity for a storage pool in a region (GET)](https://cloud.ibm.com/apidocs/power-cloud#pcloud-storagecapacity-pools-get).  ### December 2022  - You can now get new error messages for undefined response codes for new service endpoint response codes.  ### September 2022  - Added the following APIs associated with shared processor pool:     - [Get the list of Shared Processor Pools for a cloud instance](https://cloud.ibm.com/apidocs/power-cloud#pcloud-sharedprocessorpools-getall)     - [Create a new Shared Processor Pool](https://cloud.ibm.com/apidocs/power-cloud#pcloud-sharedprocessorpools-post)     - [Get the detail of a Shared Processor Pool for a cloud instance](https://cloud.ibm.com/apidocs/power-cloud#pcloud-sharedprocessorpools-get)     - [Update a Shared Processor Pool for a cloud instance](https://cloud.ibm.com/apidocs/power-cloud#pcloud-sharedprocessorpools-put)     - [Delete a Shared Processor Pool from a cloud instance](https://cloud.ibm.com/apidocs/power-cloud#pcloud-sharedprocessorpools-delete)  - Added the following APIs associated with global recovery service:     - Disaster recovery         - [Get the disaster recovery site details for the current location](https://cloud.ibm.com/apidocs/power-cloud#pcloud-locations-disasterrecovery-get)         - [Get all disaster recovery locations supported by Power Virtual Server](https://cloud.ibm.com/apidocs/power-cloud#pcloud-locations-disasterrecovery-getall)     - Volume         - [Perform an action on a Volume](https://cloud.ibm.com/apidocs/power-cloud#pcloud-cloudinstances-volumes-action-post)         - [Get a list of flashcopy mappings of a given volume](https://cloud.ibm.com/apidocs/power-cloud#pcloud-cloudinstances-volumes-flashcopymappings-ge)         - [Get remote copy relationship of a volume](https://cloud.ibm.com/apidocs/power-cloud#pcloud-cloudinstances-volumes-remotecopyrelationsh)     - Volume onboarding         - [List all volume onboardings for this cloud instance](https://cloud.ibm.com/apidocs/power-cloud#pcloud-volume-onboarding-getall)         - [Onboard auxiliary volumes to target site](https://cloud.ibm.com/apidocs/power-cloud#pcloud-volume-onboarding-post)         - [Get the information of volume onboarding operation](https://cloud.ibm.com/apidocs/power-cloud#pcloud-volume-onboarding-get)     - Volume groups         - [Get all volume groups](https://cloud.ibm.com/apidocs/power-cloud#pcloud-volumegroups-getall)         - [Create a new volume group](https://cloud.ibm.com/apidocs/power-cloud#pcloud-volumegroups-post)         - [Get all volume groups with details](https://cloud.ibm.com/apidocs/power-cloud#pcloud-volumegroups-getalldetails)         - [Get volume Group](https://cloud.ibm.com/apidocs/power-cloud#pcloud-volumegroups-get)         - [updates the volume group](https://cloud.ibm.com/apidocs/power-cloud#pcloud-volumegroups-put)         - [Delete a cloud instance volume group](https://cloud.ibm.com/apidocs/power-cloud#pcloud-volumegroups-delete)         - [Perform an action (start stop reset ) on a volume group](https://cloud.ibm.com/apidocs/power-cloud#pcloud-volumegroups-action-post)         - [Get volume Group details](https://cloud.ibm.com/apidocs/power-cloud#pcloud-volumegroups-getdetails)         - [Get remote copy relationships of the volume belonging to volume group](https://cloud.ibm.com/apidocs/power-cloud#pcloud-volumegroups-remotecopyrelationships-get)         - [Get storage details of volume group](https://cloud.ibm.com/apidocs/power-cloud#pcloud-volumegroups-storagedetails-get)  ### October 2021  - Added the following APIs associated with VPN connections:     - [Get VPN connections](https://cloud.ibm.com/apidocs/power-cloud#pcloud-vpnconnections-getall)     - [Add IKE policy](https://cloud.ibm.com/apidocs/power-cloud#pcloud-ikepolicies-post)     - [Add IPsec policy](https://cloud.ibm.com/apidocs/power-cloud#pcloud-ipsecpolicies-post)  ### September 2021  - Added the following APIs associated with Image Capture, Image Import, and Image Export:     - [Capture a PVM instance and create a deployable image](https://cloud.ibm.com/apidocs/power-cloud#pcloud-v2-pvminstances-capture-post)     - [Add image export job to the jobs queue](https://cloud.ibm.com/apidocs/power-cloud#pcloud-v2-images-export-post)     - [Create a new image from available images in COS](https://cloud.ibm.com/apidocs/power-cloud#pcloud-v1-cloudinstances-cosimages-post)     - [List up to the last 5 jobs initiated by the cloud instance](https://cloud.ibm.com/apidocs/power-cloud#pcloud-cloudinstances-jobs-getall)  - Added the following APIs associated with storage volumes:     - [Create multiple data volumes from a single definition](https://cloud.ibm.com/apidocs/power-cloud#pcloud-v2-volumes-post)  - Added the following APIs associated with private endpoint:     - [Endpoint URL](https://cloud.ibm.com/apidocs/power-cloud#endpoint)  ### June 2021  - Added the following APIs associated with placement groups:     - [Create a server placement group](https://cloud.ibm.com/apidocs/power-cloud#pcloud-placementgroups-post)     - [Get all server placement groups](https://cloud.ibm.com/apidocs/power-cloud#pcloud-placementgroups-getall)     - [Get server placement group details](https://cloud.ibm.com/apidocs/power-cloud#pcloud-placementgroups-get)     - [Delete server placement group](https://cloud.ibm.com/apidocs/power-cloud#pcloud-placementgroups-delete)     - [Add server to placement group](https://cloud.ibm.com/apidocs/power-cloud#pcloud-placementgroups-members-post)     - [Remove server from placement group](https://cloud.ibm.com/apidocs/power-cloud#pcloud-placementgroups-members-delete)  ### May 2021  - Added the following APIs associated with Cloud connections:     - [Create a new Cloud connection](https://cloud.ibm.com/apidocs/power-cloud#pcloud-cloudconnections-post)     - [Get all Cloud connections in a specific cloud instance](https://cloud.ibm.com/apidocs/power-cloud#pcloud-cloudconnections-getall)     - [Get a Cloud connection's state or information](https://cloud.ibm.com/apidocs/power-cloud#pcloud-cloudconnections-get)     - [Update a Cloud connection](https://cloud.ibm.com/apidocs/power-cloud#pcloud-cloudconnections-put)     - [Delete a Cloud connection](https://cloud.ibm.com/apidocs/power-cloud#pcloud-cloudconnections-delete)     - [Get information about a Cloud connections attached network](https://cloud.ibm.com/apidocs/power-cloud#pcloud-cloudconnections-networks-get)     - [Add a network to the Cloud connection](https://cloud.ibm.com/apidocs/power-cloud#pcloud-cloudconnections-networks-put)     - [Delete a network from a Cloud connection](https://cloud.ibm.com/apidocs/power-cloud#pcloud-cloudconnections-networks-delete)  ### February 2021  - Added the following APIs associated with volume clone requests:     - [Create a new volumes clone request and initiate the Prepare action](https://cloud.ibm.com/apidocs/power-cloud#pcloud-v2-volumesclone-post)     - [Get the list of volumes-clone request for a cloud instance](https://cloud.ibm.com/apidocs/power-cloud#pcloud-v2-volumesclone-getall)     - [Get the details for a volumes-clone request](https://cloud.ibm.com/apidocs/power-cloud#pcloud-v2-volumesclone-get)     - [Delete a volumes-clone request](https://cloud.ibm.com/apidocs/power-cloud#pcloud-v2-volumesclone-delete)     - [Initiate the Start action for a volume-clone request](https://cloud.ibm.com/apidocs/power-cloud#pcloud-v2-volumesclone-start-post)     - [Initiate the Execute action for a volumes-clone request](https://cloud.ibm.com/apidocs/power-cloud#pcloud-v2-volumesclone-execute-post)     - [Cancel a volume-clone request and initiate the Cleanup action](https://cloud.ibm.com/apidocs/power-cloud#pcloud-v2-volumesclone-cancel-post) - Added the following APIs for requests related to storage capacity:     - [Get storage capacity for all available storage types in a region](https://cloud.ibm.com/apidocs/power-cloud#pcloud-storagecapacity-types-getall)     - [Get storage capacity for a storage type in a region](https://cloud.ibm.com/apidocs/power-cloud#pcloud-storagecapacity-types-get)     - [Get storage capacity for all available storage pools in a region](https://cloud.ibm.com/apidocs/power-cloud#pcloud-storagecapacity-pools-getall)     - [Get storage capacity for a storage pool in a region](https://cloud.ibm.com/apidocs/power-cloud#pcloud-storagecapacity-pools-get)

The version of the OpenAPI document: 2.5.0
Contact: ismirlia@us.ibm.com
Generated by: https://openapi-generator.tech
Generator version: 7.23.0

=end

require 'date'
require 'json'
require 'logger'
require 'tempfile'
require 'time'
require 'typhoeus'


module IbmCloudPower
  class ApiClient
    # The Configuration object holding settings to be used in the API client.
    attr_accessor :config

    # Defines the headers to be used in HTTP requests of all API calls by default.
    #
    # @return [Hash]
    attr_accessor :default_headers

    # Initializes the ApiClient
    # @option config [Configuration] Configuration for initializing the object, default to Configuration.default
    def initialize(config = Configuration.default)
      @config = config
      @user_agent = "OpenAPI-Generator/#{VERSION}/ruby"
      @default_headers = {
        'Content-Type' => 'application/json',
        'User-Agent' => @user_agent
      }
    end

    def self.default
      @@default ||= ApiClient.new
    end

    # Call an API with given options.
    #
    # @return [Array<(Object, Integer, Hash)>] an array of 3 elements:
    #   the data deserialized from response body (may be a Tempfile or nil), response status code and response headers.
    def call_api(http_method, path, opts = {})
      request = build_request(http_method, path, opts)
      tempfile = nil
      (download_file(request) { tempfile = _1 }) if opts[:return_type] == 'File'
      response = request.run

      if @config.debugging
        @config.logger.debug "HTTP response body ~BEGIN~\n#{response.body}\n~END~\n"
      end

      unless response.success?
        if response.timed_out?
          fail ApiError.new('Connection timed out')
        elsif response.code == 0
          # Errors from libcurl will be made visible here
          fail ApiError.new(:code => 0,
                            :message => response.return_message)
        else
          fail ApiError.new(:code => response.code,
                            :response_headers => response.headers,
                            :response_body => response.body),
               response.status_message
        end
      end

      if opts[:return_type] == 'File'
        data = tempfile
      elsif opts[:return_type]
        data = deserialize(response, opts[:return_type])
      else
        data = nil
      end
      return data, response.code, response.headers
    end

    # Builds the HTTP request
    #
    # @param [String] http_method HTTP method/verb (e.g. POST)
    # @param [String] path URL path (e.g. /account/new)
    # @option opts [Hash] :header_params Header parameters
    # @option opts [Hash] :query_params Query parameters
    # @option opts [Hash] :form_params Query parameters
    # @option opts [Object] :body HTTP body (JSON/XML)
    # @return [Typhoeus::Request] A Typhoeus Request
    def build_request(http_method, path, opts = {})
      url = build_request_url(path, opts)
      http_method = http_method.to_sym.downcase

      header_params = @default_headers.merge(opts[:header_params] || {})
      query_params = opts[:query_params] || {}
      form_params = opts[:form_params] || {}
      follow_location = opts[:follow_location] || true


      # set ssl_verifyhosts option based on @config.verify_ssl_host (true/false)
      _verify_ssl_host = @config.verify_ssl_host ? 2 : 0

      req_opts = {
        :method => http_method,
        :headers => header_params,
        :params => query_params,
        :params_encoding => @config.params_encoding,
        :timeout => @config.timeout,
        :ssl_verifypeer => @config.verify_ssl,
        :ssl_verifyhost => _verify_ssl_host,
        :sslcert => @config.cert_file,
        :sslkey => @config.key_file,
        :verbose => @config.debugging,
        :followlocation => follow_location
      }

      # set custom cert, if provided
      req_opts[:cainfo] = @config.ssl_ca_cert if @config.ssl_ca_cert

      if [:post, :patch, :put, :delete].include?(http_method)
        req_body = build_request_body(header_params, form_params, opts[:body])
        req_opts.update :body => req_body
        if @config.debugging
          @config.logger.debug "HTTP request body param ~BEGIN~\n#{req_body}\n~END~\n"
        end
      end

      Typhoeus::Request.new(url, req_opts)
    end

    # Builds the HTTP request body
    #
    # @param [Hash] header_params Header parameters
    # @param [Hash] form_params Query parameters
    # @param [Object] body HTTP body (JSON/XML)
    # @return [String] HTTP body data in the form of string
    def build_request_body(header_params, form_params, body)
      # http form
      if header_params['Content-Type'] == 'application/x-www-form-urlencoded' ||
          header_params['Content-Type'] == 'multipart/form-data'
        data = {}
        form_params.each do |key, value|
          case value
          when ::File, ::Array, nil
            # let typhoeus handle File, Array and nil parameters
            data[key] = value
          else
            data[key] = value.to_s
          end
        end
      elsif body
        data = body.is_a?(String) ? body : body.to_json
      else
        data = nil
      end
      data
    end

    # Save response body into a file in (the defined) temporary folder, using the filename
    # from the "Content-Disposition" header if provided, otherwise a random filename.
    # The response body is written to the file in chunks in order to handle files which
    # size is larger than maximum Ruby String or even larger than the maximum memory a Ruby
    # process can use.
    #
    # @see Configuration#temp_folder_path
    #
    # @return [Tempfile] the tempfile generated
    def download_file(request)
      tempfile = nil
      encoding = nil
      request.on_headers do |response|
        content_disposition = response.headers['Content-Disposition']
        if content_disposition && content_disposition =~ /filename=/i
          filename = content_disposition[/filename=['"]?([^'"\s]+)['"]?/, 1]
          prefix = sanitize_filename(filename)
        else
          prefix = 'download-'
        end
        prefix = prefix + '-' unless prefix.end_with?('-')
        encoding = response.body.encoding
        tempfile = Tempfile.open(prefix, @config.temp_folder_path, encoding: encoding)
      end
      request.on_body do |chunk|
        chunk.force_encoding(encoding)
        tempfile.write(chunk)
      end
      request.on_complete do
        if !tempfile
          fail ApiError.new("Failed to create the tempfile based on the HTTP response from the server: #{request.inspect}")
        end
        tempfile.close
        @config.logger.info "Temp file written to #{tempfile.path}, please copy the file to a proper folder "\
                            "with e.g. `FileUtils.cp(tempfile.path, '/new/file/path')` otherwise the temp file "\
                            "will be deleted automatically with GC. It's also recommended to delete the temp file "\
                            "explicitly with `tempfile.delete`"
        yield tempfile if block_given?
      end
    end

    # Check if the given MIME is a JSON MIME.
    # JSON MIME examples:
    #   application/json
    #   application/json; charset=UTF8
    #   APPLICATION/JSON
    #   */*
    # @param [String] mime MIME
    # @return [Boolean] True if the MIME is application/json
    def json_mime?(mime)
      (mime == '*/*') || !(mime =~ /^Application\/.*json(?!p)(;.*)?/i).nil?
    end

    # Deserialize the response to the given return type.
    #
    # @param [Response] response HTTP response
    # @param [String] return_type some examples: "User", "Array<User>", "Hash<String, Integer>"
    def deserialize(response, return_type)
      body = response.body
      return nil if body.nil? || body.empty?

      # return response body directly for String return type
      return body.to_s if return_type == 'String'

      # ensuring a default content type
      content_type = response.headers['Content-Type'] || 'application/json'

      fail "Content-Type is not supported: #{content_type}" unless json_mime?(content_type)

      begin
        data = JSON.parse("[#{body}]", :symbolize_names => true)[0]
      rescue JSON::ParserError => e
        if %w(String Date Time).include?(return_type)
          data = body
        else
          raise e
        end
      end

      convert_to_type data, return_type
    end

    # Convert data to the given return type.
    # @param [Object] data Data to be converted
    # @param [String] return_type Return type
    # @return [Mixed] Data in a particular type
    def convert_to_type(data, return_type)
      return nil if data.nil?
      case return_type
      when 'String'
        data.to_s
      when 'Integer'
        data.to_i
      when 'Float'
        data.to_f
      when 'Boolean'
        data == true
      when 'Time'
        # parse date time (expecting ISO 8601 format)
        Time.parse data
      when 'Date'
        # parse date time (expecting ISO 8601 format)
        Date.parse data
      when 'Object'
        # generic object (usually a Hash), return directly
        data
      when /\AArray<(.+)>\z/
        # e.g. Array<Pet>
        sub_type = $1
        data.map { |item| convert_to_type(item, sub_type) }
      when /\AHash\<String, (.+)\>\z/
        # e.g. Hash<String, Integer>
        sub_type = $1
        {}.tap do |hash|
          data.each { |k, v| hash[k] = convert_to_type(v, sub_type) }
        end
      else
        # models (e.g. Pet) or oneOf/anyOf
        klass = IbmCloudPower.const_get(return_type)
        if klass.respond_to?(:openapi_one_of) || klass.respond_to?(:openapi_any_of)
          klass.build(data)
        else
          klass.build_from_hash(data)
        end
      end
    end

    # Sanitize filename by removing path.
    # e.g. ../../sun.gif becomes sun.gif
    #
    # @param [String] filename the filename to be sanitized
    # @return [String] the sanitized filename
    def sanitize_filename(filename)
      filename.split(/[\/\\]/).last
    end

    def build_request_url(path, opts = {})
      # Add leading and trailing slashes to path
      path = "/#{path}".gsub(/\/+/, '/')
      @config.base_url(opts[:operation]) + path
    end

    # Update header and query params based on authentication settings.
    #
    # @param [Hash] header_params Header parameters
    # @param [Hash] query_params Query parameters
    # @param [String] auth_names Authentication scheme name
    def update_params_for_auth!(header_params, query_params, auth_names)
      Array(auth_names).each do |auth_name|
        auth_setting = @config.auth_settings[auth_name]
        next unless auth_setting
        case auth_setting[:in]
        when 'header' then header_params[auth_setting[:key]] = auth_setting[:value]
        when 'query'  then query_params[auth_setting[:key]] = auth_setting[:value]
        else fail ArgumentError, 'Authentication token must be in `query` or `header`'
        end
      end
    end

    # Sets user agent in HTTP header
    #
    # @param [String] user_agent User agent (e.g. openapi-generator/ruby/1.0.0)
    def user_agent=(user_agent)
      @user_agent = user_agent
      @default_headers['User-Agent'] = @user_agent
    end

    # Return Accept header based on an array of accepts provided.
    # @param [Array] accepts array for Accept
    # @return [String] the Accept header (e.g. application/json)
    def select_header_accept(accepts)
      return nil if accepts.nil? || accepts.empty?
      # use JSON when present, otherwise use all of the provided
      json_accept = accepts.find { |s| json_mime?(s) }
      json_accept || accepts.join(',')
    end

    # Return Content-Type header based on an array of content types provided.
    # @param [Array] content_types array for Content-Type
    # @return [String] the Content-Type header  (e.g. application/json)
    def select_header_content_type(content_types)
      # return nil by default
      return if content_types.nil? || content_types.empty?
      # use JSON when present, otherwise use the first one
      json_content_type = content_types.find { |s| json_mime?(s) }
      json_content_type || content_types.first
    end

    # Convert object (array, hash, object, etc) to JSON string.
    # @param [Object] model object to be converted into JSON string
    # @return [String] JSON string representation of the object
    def object_to_http_body(model)
      return model if model.nil? || model.is_a?(String)
      local_body = nil
      if model.is_a?(Array)
        local_body = model.map { |m| object_to_hash(m) }
      else
        local_body = object_to_hash(model)
      end
      local_body.to_json
    end

    # Convert object(non-array) to hash.
    # @param [Object] obj object to be converted into JSON string
    # @return [String] JSON string representation of the object
    def object_to_hash(obj)
      if obj.respond_to?(:to_hash)
        obj.to_hash
      else
        obj
      end
    end

    # Build parameter value according to the given collection format.
    # @param [String] collection_format one of :csv, :ssv, :tsv, :pipes and :multi
    def build_collection_param(param, collection_format)
      case collection_format
      when :csv
        param.join(',')
      when :ssv
        param.join(' ')
      when :tsv
        param.join("\t")
      when :pipes
        param.join('|')
      when :multi
        # return the array directly as typhoeus will handle it as expected
        param
      else
        fail "unknown collection format: #{collection_format.inspect}"
      end
    end
  end
end
