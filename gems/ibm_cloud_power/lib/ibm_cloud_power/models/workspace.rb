=begin
#Power Cloud API

### Introduction  You can use the IBM® Power® Virtual Server to easily deploy and configure virtual servers that are running AIX, IBM i, or Linux (RHEL and SLES) workloads.  To learn about using Power Virtual Server, see: - [Getting started with IBM Power Virtual Servers](https://cloud.ibm.com/docs/power-iaas?topic=power-iaas-getting-started) - [IBM Power Virtual Server CLI Reference](https://cloud.ibm.com/docs/power-iaas-cli-plugin?topic=power-iaas-cli-plugin-power-iaas-cli-reference-v1)  ## Endpoint URLs  The Power Virtual Server service uses regional endpoints over both public and private network.  Automatically generated regional API endpoints (service URL) will default to IBM Cloud Regions which may cause your request to fail. You should always use the Power Virtual Server regions in the service URL.  The following table shows the IBM Cloud® regions and their corresponding Power Virtual Server region where the APIs are available: <!-- | Country       | Power Virtual Server region | Location | Public endpoint (service URL)               | | ------------- | ------------------------------------------ | -------- | ------------------------------------------- | | United States | Washington DC                              | us-south | `https://us-south.power-iaas.cloud.ibm.com` |  | Washington DC, USA | us-east | us-east | `https://us-east.power-iaas.cloud.ibm.com` | | S----------------l | b-----o | s-----o | `----------------------------------------` | | Toronto, Canada    | ca-tor  | tor     | `https://tor.power-iaas.cloud.ibm.com`     | | Montreal, Canada   | ca-mon  | mon     | `https://mon.power-iaas.cloud.ibm.com`     | | Frankfurt, Germany | eu-de   | eu-de   | `https://eu-de.power-iaas.cloud.ibm.com`   | | London, UK         | eu-gb   | lon     | `https://lon.power-iaas.cloud.ibm.com`     | | Sydney, Australia  | au-syd  | syd     | `https://syd.power-iaas.cloud.ibm.com`     | | Tokyo, Japan       | jp-tok  | tok     | `https://tok.power-iaas.cloud.ibm.com`     | | Osaka, Japan       | jp-osa  | osa     | `https://osa.power-iaas.cloud.ibm.com`     |   -->  | Country          | Power Virtual Server region | Location                   | Public end-point (service URL)            | | ---------------- | ------------------------------------------ | -------------------------- | ----------------------------------------- | | Australia        | Sydney                                     | syd04 \\n syd05             | https://syd.power-iaas.cloud.ibm.com      | | Brazil           | Sao Paulo                                  | sao01 \\n sao04             | https://sao.power-iaas.cloud.ibm.com      | | Canada           | Montreal                                   | mon01                      | https://mon.power-iaas.cloud.ibm.com      | |                  | Toronto                                    | tor01                      | https://tor.power-iaas.cloud.ibm.com      | | Germany          | Frankfurt                                  | eu-de-1 \\n eu-de-2         | https://eu-de.power-iaas.cloud.ibm.com    | | UK/Great Britain | London                                     | lon04 \\n lon06             | https://lon.power-iaas.cloud.ibm.com      | | India            | Chennai                                    | che01 \\n che02 \\n che03    | https://che.power-iaas.cloud.ibm.com      | |                  | Mumbai                                     | in-mum-1 \\n in-mum-2       | https://in-mum.power-iaas.cloud.ibm.com   | | Japan            | Tokyo                                      | tok04                      | https://tok.power-iaas.cloud.ibm.com      | |                  | Osaka                                      | osa21                      | https://osa.power-iaas.cloud.ibm.com      | | Spain            | Madrid                                     | mad02 \\n mad04             | https://mad.power-iaas.cloud.ibm.com      | | United States    | Washington DC                              | us-east \\n wdc06 \\n wdc07  | https://us-east.power-iaas.cloud.ibm.com  | |                  | Dallas                                     | dal10 \\n dal12 \\n us-south | https://us-south.power-iaas.cloud.ibm.com |  | Country          | Power Virtual Server region | Location                   | Private end-point (service URL)                   | | ---------------- | ------------------------------------------ | -------------------------- | ------------------------------------------------- | | Australia        | Sydney                                     | syd04 \\n syd05             | https://private.au-syd.power-iaas.cloud.ibm.com   | | Brazil           | Sao Paulo                                  | sao01 \\n sao04             | https://private.br-sao.power-iaas.cloud.ibm.com   | | Canada           | Montreal                                   | mon01                      | https://private.ca-mon.power-iaas.cloud.ibm.com   | |                  | Toronto                                    | tor01                      | https://private.ca-tor.power-iaas.cloud.ibm.com   | | Germany          | Frankfurt                                  | eu-de-1 \\n eu-de-2         | https://private.eu-de.power-iaas.cloud.ibm.com    | | UK/Great Britain | London                                     | lon04 \\n lon06             | https://private.eu-gb.power-iaas.cloud.ibm.com    | | India            | Chennai                                    | che01 \\n che02 \\n che03    | https://private.in-che.power-iaas.cloud.ibm.com   | |                  | Mumbai                                     | in-mum-1 \\n in-mum-2       | https://private.in-mum.power-iaas.cloud.ibm.com   | | Japan            | Tokyo                                      | tok04                      | https://private.jp-tok.power-iaas.cloud.ibm.com   | |                  | Osaka                                      | osa21                      | https://private.jp-osa.power-iaas.cloud.ibm.com   | | Spain            | Madrid                                     | mad02 \\n mad04             | https://private.eu-es.power-iaas.cloud.ibm.com    | | United States    | Washington DC                              | us-east \\n wdc06 \\n wdc07  | https://private.us-east.power-iaas.cloud.ibm.com  | |                  | Dallas                                     | dal10 \\n dal12 \\n us-south | https://private.us-south.power-iaas.cloud.ibm.com |  ## Curl service URL intro  To call the API, select the service URL that corresponds to the region of your choice and add a method path to form the complete request URL. For example, to list all the workspaces available in the `us-south` region, make a `GET` request to `https://us-south.iaas.cloud.ibm.com/v1/workspaces`.  Example request to call the `us-south` service URL:  ```codeblock curl -H \"Authorization: Bearer {token}\" -X {http_method} \"https://us-south.iaas.cloud.ibm.com/v1{path}\" ```  Replace `{token}`, `{http_method}`, and `{path}` in this example with the values for your particular request.  ## Authentication  The Power Virtual Server API uses Identity and Access Management ([IAM](https://cloud.ibm.com/docs/account?topic=account-iamoverview)) to authenticate requests. To call each API method, you must be assigned a role that includes the required IAM actions. Each method has an Authorization section that lists the required actions and, if applicable, the conditions under which each action is required. Check your access on the [IBM Cloud console](https://cloud.ibm.com/login) by navigating to **[Users](https://cloud.ibm.com/iam/users) > _User_ > Access**.  For more information about IAM actions and how they map to roles, see [Assigning access to account management services](https://cloud.ibm.com/docs/account?topic=account-account-services) and [Managing IAM access for Power Virtual Server](https://cloud.ibm.com/docs/power-iaas?topic=power-iaas-managing-resources-and-users).  Learn about obtaining an IAM token for an authenticated user or service ID in the [IAM Identity Services API](https://cloud.ibm.com/apidocs/iam-identity-token-api). If you first [create an API key](https://cloud.ibm.com/docs/account?topic=account-userapikey#create_user_key), you can [use it to generate an IAM token](https://cloud.ibm.com/docs/account?topic=account-iamtoken_from_apikey).  To use the API, add a valid IAM token to the HTTP `Authorization` request header. For example, `-H 'Authorization: Bearer {token}'`.  For specific APIs you must need to include your IBM Cloud IAM access token and the Power Virtual Server instance ID, also known as your **Cloud Resource Name** (CRN), in each request. The first part of your CRN contains your **Tenant ID** and the second part contains your **Cloud Instance ID**.  The following example shows a typical CRN:  ```text crn:v1:staging:public:power-iaas:us-east:a/abcdefghijklmnopqrstuvwxyzabcdef:121d5ee5-b87d-4a0e-86b8-aaff422135478::  Tenant ID {tenant_id} = abcdefghijklmnopqrstuvwxyzabcdef Cloud Instance ID {cloud_instance_id} = 121d5ee5-b87d-4a0e-86b8-aaff422135478 ```  You can retrieve an access token by first creating an API key, and then exchanging your API key for a IBM Cloud IAM token. For more information, see [Retrieving an access token programmatically](https://cloud.ibm.com/docs/services/key-protect?topic=key-protect-retrieve-access-token) and [Retrieving your instance ID](https://cloud.ibm.com/docs/services/key-protect?topic=key-protect-retrieve-instance-ID).  To retrieve your access token:  ```sh curl -X POST \\   \"https://iam.cloud.ibm.com/identity/token\" \\   --header 'Content-Type: application/x-www-form-urlencoded' \\   --header 'Accept: application/json' \\   --data-urlencode 'grant_type=urn:ibm:params:oauth:grant-type:apikey' \\   --data-urlencode 'apikey={api_key}' ```  To use the API, replace `{token}` with the token obtained above from IAM, replace `{http_method}` with an HTTP method such as `POST`, and replace `{url}` with a request URL such as `https://us-south.iaas.cloud.ibm.com/v1/workspaces/{workspace_id}`:  ```sh curl -H \"Authorization: Bearer {token}\" -X {http_method} \"{url}\"      -H \"CRN\" ```  ## Auditing  Monitor API activity within your account by using the IBM Cloud Activity Tracker service. Each time you make an API call, one or more events are generated that you can track and audit from within Activity Tracker. Specific auditing event types are listed for each individual method. For more information about Power Virtual Server activity tracking, see [Activity Tracker events](https://cloud.ibm.com/docs/power-iaas?topic=power-iaas-at-events).  ## Error handling  This API uses standard HTTP response codes to indicate whether a method completed successfully. A `200` response indicates success. A `400` type response indicates a failure, and a `500` type response indicates an internal system error.  | HTTP Error Code | Description                | Recovery                                                                                                                                                                                                                                                                                                                                                                | | --------------- | -------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | | `400`           | Bad Request                | The input parameters in the request body are either incomplete, malformed, or too large. Be sure to include all required parameters in your request.                                                                                                                                                                                                                    | | `401`           | Unauthorized               | You are not authorized to make this request. Log in to IBM Cloud and try submitting the request again. If this error persists, contact the account owner to check your permissions.                                                                                                                                                              | | `403`           | Forbidden                  | The supplied authentication is not authorized to perform the requested operation. Either you do not have valid access through IAM access policies or your request is denied. If this error persists, contact the account owner to check your permissions.                                                                                                               | | `404`           | Not Found                  | The requested resource could not be found but may be available in the future.                                                                                                                                                                                                                                                                                           | | `405`           | Method Not Allowed         | The requested resource does not support the request method.                                                                                                                                                                                                                                                                                                             | | `406`           | Not Acceptable             | The resource the client requested is not available in a format allowed by the `Accept` header supplied by the client.                                                                                                                                                                                                                                                   | | `408`           | Request Timeout            | The connection to the server timed out. Wait a few minutes, and try submitting the request again.                                                                                                                                                                                                                                                                       | | `409`           | Conflict                   | The request cannot be completed because of a conflict between the request and the current state of the resource.                                                                                                                                                                                                                                                        | | `412`           | Precondition Failed        | The client specified one or more preconditions in its headers, and the server cannot meet those preconditions.                                                                                                                                                                                                                                                          | | `426`           | Upgrade Required           | The server refuses to perform the request using the current protocol but might perform the request after the client upgrades to a different protocol.                                                                                                                                                                                                                   | | `500`           | Internal Server Error      | The request cannot be processed because the client encountered an unexpected condition on the server. Wait a few minutes and try submitting the request again. If this error persists, contact IBM Support.                                                                                                                                                             | | `501`           | Not Implemented            | The server either does not recognize the request method, or it lacks the ability to fulfill the request.                                                                                                                                                                                                                                                                | | `502`           | Bad Gateway                | The server was acting as a gateway or proxy and received an invalid response from the upstream server.                                                                                                                                                                                                                                                                  | | `503`           | Service Unavailable        | The server cannot process the request. Generally, this condition is temporary, such as when a server is overloaded or down for scheduled maintenance. This condition could also be due to an unplanned outage of a service that is needed to process the request. Wait a few minutes and try submitting the request again. If this error persists, contact IBM Support. | | `504`           | Gateway Timeout            | The server was acting as a gateway or proxy and did not receive a timely response from the upstream server.                                                                                                                                                                                                                                                             | | `505`           | HTTP Version Not Supported | The server does not support the HTTP protocol version that is used in the request.                                                                                                                                                                                                                                                                                      |  ## Release notes  Use the release notes to learn about the latest changes to the Power Virtual Server API.  <!-- ## 2025  -->  ### June 2026  Added the following APIs associated with vPMEM volumes: - [Update a vPMEM volume attached to this PVM Instance](https://cloud.ibm.com/docs/apis/power-cloud#pcloud-pvminstances-vpmem-volumes-put)  ### December 2025  Added the following APIs associated with vPMEM volumes: - [List all vPMEM volumes attached to this PVM Instance](https://cloud.ibm.com/apidocs/power-cloud#pcloud-pvminstances-vpmem-volumes-getall) - [Create a vPMEM volume to be attached to this PVM Instance](https://cloud.ibm.com/apidocs/power-cloud#pcloud-pvminstances-vpmem-volumes-post) - [Delete a vPMEM volume attached to this PVM Instance](https://cloud.ibm.com/apidocs/power-cloud#pcloud-pvminstances-vpmem-volumes-delete) - [Get information about a vPMEM volume](https://cloud.ibm.com/apidocs/power-cloud#pcloud-pvminstances-vpmem-volumes-get)  ### September 2025  Added the following APIs associated with network peers: - [Get the list of Network Peers for a workspace](https://cloud.ibm.com/apidocs/power-cloud#v1-networkpeers-getall) - [Create a new Network Peer](https://cloud.ibm.com/apidocs/power-cloud#v1-networkpeers-post) - [Get the list of Network Interfaces for a workspace](https://cloud.ibm.com/apidocs/power-cloud#v1-networkpeers-interfaces-getall) - [Delete a Network Peer from a workspace](https://cloud.ibm.com/apidocs/power-cloud#v1-networkpeers-id-delete) - [Get the details of a Network Peer](https://cloud.ibm.com/apidocs/power-cloud#v1-networkpeers-id-get) - [Update a Network Peer](https://cloud.ibm.com/apidocs/power-cloud#v1-networkpeers-id-put) - [Create a new Route Filter](https://cloud.ibm.com/apidocs/power-cloud#v1-networkpeers-routefilter-post) - [Delete a Route Filter from a Network Peer](https://cloud.ibm.com/apidocs/power-cloud#v1-networkpeers-routefilter-id-delete) - [Get the details of a Route Filter](https://cloud.ibm.com/apidocs/power-cloud#v1-networkpeers-routefilter-id-get)  ### July 2025  Added the following APIs associated with routes: - [Get all routes in the workspace](https://cloud.ibm.com/apidocs/power-cloud?loginMethod=federated#v1-routes-getall) - [Perform a route creation](https://cloud.ibm.com/apidocs/power-cloud?loginMethod=federated#v1-routes-post) - [Get the route report for a workspace](https://cloud.ibm.com/apidocs/power-cloud?loginMethod=federated#v1-routes-report-get) - [Delete a route](https://cloud.ibm.com/apidocs/power-cloud?loginMethod=federated#v1-routes-delete) - [Get a route's information](https://cloud.ibm.com/apidocs/power-cloud?loginMethod=federated#v1-routes-get) - [Update a route's information](https://cloud.ibm.com/apidocs/power-cloud?loginMethod=federated#v1-routes-put)  Added the following APIs associated with ssh keys: - [List SSH Keys](https://cloud.ibm.com/apidocs/power-cloud?loginMethod=federated#v1-sshkeys-getall) - [Add a new SSH key](https://cloud.ibm.com/apidocs/power-cloud?loginMethod=federated#v1-sshkeys-post) - [Delete ssh-key](https://cloud.ibm.com/apidocs/power-cloud?loginMethod=federated#v1-sshkeys-delete) - [Get ssh-key information](https://cloud.ibm.com/apidocs/power-cloud?loginMethod=federated#v1-sshkeys-get) - [Update the ssh key](https://cloud.ibm.com/apidocs/power-cloud?loginMethod=federated#v1-sshkeys-put)  Added an API to list the supported IBM i software tiers: [List supported software tiers (IBMi licensing)](https://cloud.ibm.com/apidocs/power-cloud?loginMethod=federated#pcloud-virtualserialnumber-softwaretiers-getall)  ### February 2025  Added the following APIs associated with network address groups: - [Get the list of Network Address Groups for a workspace](https://cloud.ibm.com/apidocs/power-cloud#v1-networkaddressgroups-get) - [Create a new Network Address Group](https://cloud.ibm.com/apidocs/power-cloud#v1-networkaddressgroups-post) - [Delete a Network Address Group from a workspace](https://cloud.ibm.com/apidocs/power-cloud#v1-networkaddressgroups-id-delete) - [Get the detail of a Network Address Group](https://cloud.ibm.com/apidocs/power-cloud#v1-networkaddressgroups-id-get) - [Update a Network Address Group](https://cloud.ibm.com/apidocs/power-cloud#v1-networkaddressgroups-id-put) - [Add a member to a Network Address Group](https://cloud.ibm.com/apidocs/power-cloud#v1-networkaddressgroups-members-post) - [Delete the member from a Network Address Group](https://cloud.ibm.com/apidocs/power-cloud#v1-networkaddressgroups-members-delete)  Added the following APIs associated with network security groups: - [Get the list of Network Security Groups for a workspace](https://cloud.ibm.com/apidocs/power-cloud#v1-networksecuritygroups-list) - [Create a new Network Security Group](https://cloud.ibm.com/apidocs/power-cloud#v1-networksecuritygroups-post) - [Perform a Network Security Groups action (enable, disable) on a workspace.](https://cloud.ibm.com/apidocs/power-cloud#v1-networksecuritygroups-action-post) - [Delete a Network Security Group from a workspace](https://cloud.ibm.com/apidocs/power-cloud#v1-networksecuritygroups-id-delete) - [Get the detail of a Network Security Group](https://cloud.ibm.com/apidocs/power-cloud#v1-networksecuritygroups-id-get) - [Clone a Network Security Group](https://cloud.ibm.com/apidocs/power-cloud#v1-networksecuritygroups-id-post) - [Update a Network Security Group](https://cloud.ibm.com/apidocs/power-cloud#v1-networksecuritygroups-id-put) - [Add a member to a Network Security Group](https://cloud.ibm.com/apidocs/power-cloud#v1-networksecuritygroups-members-post) - [Delete the member from a Network Security Group](https://cloud.ibm.com/apidocs/power-cloud#v1-networksecuritygroups-members-delete) - [Move a Network Security Group member to another Network Security Group](https://cloud.ibm.com/apidocs/power-cloud#v1-networksecuritygroups-move-member-post) - [Add a rule to a Network Security Group](https://cloud.ibm.com/apidocs/power-cloud#v1-networksecuritygroups-rules-post) - [Delete the rule from a Network Security Group](https://cloud.ibm.com/apidocs/power-cloud#v1-networksecuritygroups-rules-delete)  ### December 2023  The following APIs are availavle: - [Get all Datacenters information and capabilities](https://cloud.ibm.com/apidocs/power-cloud#v1-datacenters-getall) - [Get a Datacenter's information and capabilities](https://cloud.ibm.com/apidocs/power-cloud#v1-datacenters-get) - [Get all Workspaces information and capabilities for a tenant](https://cloud.ibm.com/apidocs/power-cloud#v1-workspaces-getall) - [Get a Workspace's information and capabilities](https://cloud.ibm.com/apidocs/power-cloud#v1-workspaces-get)  ### November 2023  - New API [List all supported storage tiers for this cloud instance](https://cloud.ibm.com/apidocs/power-cloud#pcloud-cloudinstances-storagetiers-getall) is available.  ### September 2023  - Added parameters `availableCapacity`, `maxAllocationSize`, `replicationEnabled`, `storageHost` in the [Storage capacity for a storage pool in a region (GET)](https://cloud.ibm.com/apidocs/power-cloud#pcloud-storagecapacity-pools-get).  ### December 2022  - You can now get new error messages for undefined response codes for new service endpoint response codes.  ### September 2022  - Added the following APIs associated with shared processor pool:     - [Get the list of Shared Processor Pools for a cloud instance](https://cloud.ibm.com/apidocs/power-cloud#pcloud-sharedprocessorpools-getall)     - [Create a new Shared Processor Pool](https://cloud.ibm.com/apidocs/power-cloud#pcloud-sharedprocessorpools-post)     - [Get the detail of a Shared Processor Pool for a cloud instance](https://cloud.ibm.com/apidocs/power-cloud#pcloud-sharedprocessorpools-get)     - [Update a Shared Processor Pool for a cloud instance](https://cloud.ibm.com/apidocs/power-cloud#pcloud-sharedprocessorpools-put)     - [Delete a Shared Processor Pool from a cloud instance](https://cloud.ibm.com/apidocs/power-cloud#pcloud-sharedprocessorpools-delete)  - Added the following APIs associated with global recovery service:     - Disaster recovery         - [Get the disaster recovery site details for the current location](https://cloud.ibm.com/apidocs/power-cloud#pcloud-locations-disasterrecovery-get)         - [Get all disaster recovery locations supported by Power Virtual Server](https://cloud.ibm.com/apidocs/power-cloud#pcloud-locations-disasterrecovery-getall)     - Volume         - [Perform an action on a Volume](https://cloud.ibm.com/apidocs/power-cloud#pcloud-cloudinstances-volumes-action-post)         - [Get a list of flashcopy mappings of a given volume](https://cloud.ibm.com/apidocs/power-cloud#pcloud-cloudinstances-volumes-flashcopymappings-ge)         - [Get remote copy relationship of a volume](https://cloud.ibm.com/apidocs/power-cloud#pcloud-cloudinstances-volumes-remotecopyrelationsh)     - Volume onboarding         - [List all volume onboardings for this cloud instance](https://cloud.ibm.com/apidocs/power-cloud#pcloud-volume-onboarding-getall)         - [Onboard auxiliary volumes to target site](https://cloud.ibm.com/apidocs/power-cloud#pcloud-volume-onboarding-post)         - [Get the information of volume onboarding operation](https://cloud.ibm.com/apidocs/power-cloud#pcloud-volume-onboarding-get)     - Volume groups         - [Get all volume groups](https://cloud.ibm.com/apidocs/power-cloud#pcloud-volumegroups-getall)         - [Create a new volume group](https://cloud.ibm.com/apidocs/power-cloud#pcloud-volumegroups-post)         - [Get all volume groups with details](https://cloud.ibm.com/apidocs/power-cloud#pcloud-volumegroups-getalldetails)         - [Get volume Group](https://cloud.ibm.com/apidocs/power-cloud#pcloud-volumegroups-get)         - [updates the volume group](https://cloud.ibm.com/apidocs/power-cloud#pcloud-volumegroups-put)         - [Delete a cloud instance volume group](https://cloud.ibm.com/apidocs/power-cloud#pcloud-volumegroups-delete)         - [Perform an action (start stop reset ) on a volume group](https://cloud.ibm.com/apidocs/power-cloud#pcloud-volumegroups-action-post)         - [Get volume Group details](https://cloud.ibm.com/apidocs/power-cloud#pcloud-volumegroups-getdetails)         - [Get remote copy relationships of the volume belonging to volume group](https://cloud.ibm.com/apidocs/power-cloud#pcloud-volumegroups-remotecopyrelationships-get)         - [Get storage details of volume group](https://cloud.ibm.com/apidocs/power-cloud#pcloud-volumegroups-storagedetails-get)  ### October 2021  - Added the following APIs associated with VPN connections:     - [Get VPN connections](https://cloud.ibm.com/apidocs/power-cloud#pcloud-vpnconnections-getall)     - [Add IKE policy](https://cloud.ibm.com/apidocs/power-cloud#pcloud-ikepolicies-post)     - [Add IPsec policy](https://cloud.ibm.com/apidocs/power-cloud#pcloud-ipsecpolicies-post)  ### September 2021  - Added the following APIs associated with Image Capture, Image Import, and Image Export:     - [Capture a PVM instance and create a deployable image](https://cloud.ibm.com/apidocs/power-cloud#pcloud-v2-pvminstances-capture-post)     - [Add image export job to the jobs queue](https://cloud.ibm.com/apidocs/power-cloud#pcloud-v2-images-export-post)     - [Create a new image from available images in COS](https://cloud.ibm.com/apidocs/power-cloud#pcloud-v1-cloudinstances-cosimages-post)     - [List up to the last 5 jobs initiated by the cloud instance](https://cloud.ibm.com/apidocs/power-cloud#pcloud-cloudinstances-jobs-getall)  - Added the following APIs associated with storage volumes:     - [Create multiple data volumes from a single definition](https://cloud.ibm.com/apidocs/power-cloud#pcloud-v2-volumes-post)  - Added the following APIs associated with private endpoint:     - [Endpoint URL](https://cloud.ibm.com/apidocs/power-cloud#endpoint)  ### June 2021  - Added the following APIs associated with placement groups:     - [Create a server placement group](https://cloud.ibm.com/apidocs/power-cloud#pcloud-placementgroups-post)     - [Get all server placement groups](https://cloud.ibm.com/apidocs/power-cloud#pcloud-placementgroups-getall)     - [Get server placement group details](https://cloud.ibm.com/apidocs/power-cloud#pcloud-placementgroups-get)     - [Delete server placement group](https://cloud.ibm.com/apidocs/power-cloud#pcloud-placementgroups-delete)     - [Add server to placement group](https://cloud.ibm.com/apidocs/power-cloud#pcloud-placementgroups-members-post)     - [Remove server from placement group](https://cloud.ibm.com/apidocs/power-cloud#pcloud-placementgroups-members-delete)  ### May 2021  - Added the following APIs associated with Cloud connections:     - [Create a new Cloud connection](https://cloud.ibm.com/apidocs/power-cloud#pcloud-cloudconnections-post)     - [Get all Cloud connections in a specific cloud instance](https://cloud.ibm.com/apidocs/power-cloud#pcloud-cloudconnections-getall)     - [Get a Cloud connection's state or information](https://cloud.ibm.com/apidocs/power-cloud#pcloud-cloudconnections-get)     - [Update a Cloud connection](https://cloud.ibm.com/apidocs/power-cloud#pcloud-cloudconnections-put)     - [Delete a Cloud connection](https://cloud.ibm.com/apidocs/power-cloud#pcloud-cloudconnections-delete)     - [Get information about a Cloud connections attached network](https://cloud.ibm.com/apidocs/power-cloud#pcloud-cloudconnections-networks-get)     - [Add a network to the Cloud connection](https://cloud.ibm.com/apidocs/power-cloud#pcloud-cloudconnections-networks-put)     - [Delete a network from a Cloud connection](https://cloud.ibm.com/apidocs/power-cloud#pcloud-cloudconnections-networks-delete)  ### February 2021  - Added the following APIs associated with volume clone requests:     - [Create a new volumes clone request and initiate the Prepare action](https://cloud.ibm.com/apidocs/power-cloud#pcloud-v2-volumesclone-post)     - [Get the list of volumes-clone request for a cloud instance](https://cloud.ibm.com/apidocs/power-cloud#pcloud-v2-volumesclone-getall)     - [Get the details for a volumes-clone request](https://cloud.ibm.com/apidocs/power-cloud#pcloud-v2-volumesclone-get)     - [Delete a volumes-clone request](https://cloud.ibm.com/apidocs/power-cloud#pcloud-v2-volumesclone-delete)     - [Initiate the Start action for a volume-clone request](https://cloud.ibm.com/apidocs/power-cloud#pcloud-v2-volumesclone-start-post)     - [Initiate the Execute action for a volumes-clone request](https://cloud.ibm.com/apidocs/power-cloud#pcloud-v2-volumesclone-execute-post)     - [Cancel a volume-clone request and initiate the Cleanup action](https://cloud.ibm.com/apidocs/power-cloud#pcloud-v2-volumesclone-cancel-post) - Added the following APIs for requests related to storage capacity:     - [Get storage capacity for all available storage types in a region](https://cloud.ibm.com/apidocs/power-cloud#pcloud-storagecapacity-types-getall)     - [Get storage capacity for a storage type in a region](https://cloud.ibm.com/apidocs/power-cloud#pcloud-storagecapacity-types-get)     - [Get storage capacity for all available storage pools in a region](https://cloud.ibm.com/apidocs/power-cloud#pcloud-storagecapacity-pools-getall)     - [Get storage capacity for a storage pool in a region](https://cloud.ibm.com/apidocs/power-cloud#pcloud-storagecapacity-pools-get)

The version of the OpenAPI document: 2.5.0
Contact: ismirlia@us.ibm.com
Generated by: https://openapi-generator.tech
Generator version: 7.23.0

=end

require 'date'
require 'time'

module IbmCloudPower
  class Workspace < ApiModelBase
    # Workspace Capabilities
    attr_accessor :capabilities

    # The Workspace information
    attr_accessor :details

    # Workspace ID
    attr_accessor :id

    # The Workspace location
    attr_accessor :location

    # The Workspace name
    attr_accessor :name

    # The Workspace status
    attr_accessor :status

    # The Workspace type
    attr_accessor :type

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'capabilities' => :'capabilities',
        :'details' => :'details',
        :'id' => :'id',
        :'location' => :'location',
        :'name' => :'name',
        :'status' => :'status',
        :'type' => :'type'
      }
    end

    # Returns attribute mapping this model knows about
    def self.acceptable_attribute_map
      attribute_map
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      acceptable_attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'capabilities' => :'Hash<String, Boolean>',
        :'details' => :'WorkspaceDetails',
        :'id' => :'String',
        :'location' => :'WorkspaceLocation',
        :'name' => :'String',
        :'status' => :'String',
        :'type' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `IbmCloudPower::Workspace` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `IbmCloudPower::Workspace`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'capabilities')
        if (value = attributes[:'capabilities']).is_a?(Hash)
          self.capabilities = value
        end
      else
        self.capabilities = nil
      end

      if attributes.key?(:'details')
        self.details = attributes[:'details']
      else
        self.details = nil
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      else
        self.id = nil
      end

      if attributes.key?(:'location')
        self.location = attributes[:'location']
      else
        self.location = nil
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      else
        self.name = nil
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      else
        self.status = nil
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      else
        self.type = nil
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @capabilities.nil?
        invalid_properties.push('invalid value for "capabilities", capabilities cannot be nil.')
      end

      if @details.nil?
        invalid_properties.push('invalid value for "details", details cannot be nil.')
      end

      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      if @location.nil?
        invalid_properties.push('invalid value for "location", location cannot be nil.')
      end

      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end

      if @status.nil?
        invalid_properties.push('invalid value for "status", status cannot be nil.')
      end

      if @type.nil?
        invalid_properties.push('invalid value for "type", type cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @capabilities.nil?
      return false if @details.nil?
      return false if @id.nil?
      return false if @location.nil?
      return false if @name.nil?
      return false if @status.nil?
      return false if @type.nil?
      type_validator = EnumAttributeValidator.new('String', ["off-premises", "on-premises"])
      return false unless type_validator.valid?(@type)
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] capabilities Value to be assigned
    def capabilities=(capabilities)
      if capabilities.nil?
        fail ArgumentError, 'capabilities cannot be nil'
      end

      @capabilities = capabilities
    end

    # Custom attribute writer method with validation
    # @param [Object] details Value to be assigned
    def details=(details)
      if details.nil?
        fail ArgumentError, 'details cannot be nil'
      end

      @details = details
    end

    # Custom attribute writer method with validation
    # @param [Object] id Value to be assigned
    def id=(id)
      if id.nil?
        fail ArgumentError, 'id cannot be nil'
      end

      @id = id
    end

    # Custom attribute writer method with validation
    # @param [Object] location Value to be assigned
    def location=(location)
      if location.nil?
        fail ArgumentError, 'location cannot be nil'
      end

      @location = location
    end

    # Custom attribute writer method with validation
    # @param [Object] name Value to be assigned
    def name=(name)
      if name.nil?
        fail ArgumentError, 'name cannot be nil'
      end

      @name = name
    end

    # Custom attribute writer method with validation
    # @param [Object] status Value to be assigned
    def status=(status)
      if status.nil?
        fail ArgumentError, 'status cannot be nil'
      end

      @status = status
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('String', ["off-premises", "on-premises"])
      unless validator.valid?(type)
        fail ArgumentError, "invalid value for \"type\", must be one of #{validator.allowable_values}."
      end
      @type = type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          capabilities == o.capabilities &&
          details == o.details &&
          id == o.id &&
          location == o.location &&
          name == o.name &&
          status == o.status &&
          type == o.type
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [capabilities, details, id, location, name, status, type].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      transformed_hash = {}
      openapi_types.each_pair do |key, type|
        if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = nil
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[attribute_map[key]].is_a?(Array)
            transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
          end
        elsif !attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
        end
      end
      new(transformed_hash)
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

  end

end
