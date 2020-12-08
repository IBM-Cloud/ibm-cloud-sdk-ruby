=begin
#Virtual Private Cloud API

#The IBM Cloud Virtual Private Cloud (VPC) API can be used to programmatically provision and manage infrastructure resources, including virtual server instances, subnets, volumes, and load balancers.

The version of the OpenAPI document: 2020-11-17

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.0-beta2

=end

require 'spec_helper'
require 'json'

# Unit tests for IbmCloudVpc::VPNGatewaysApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'VPNGatewaysApi' do
  before do
    # run before each test
    @api_instance = IbmCloudVpc::VPNGatewaysApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of VPNGatewaysApi' do
    it 'should create an instance of VPNGatewaysApi' do
      expect(@api_instance).to be_instance_of(IbmCloudVpc::VPNGatewaysApi)
    end
  end

  # unit tests for add_vpn_gateway_connection_local_cidr
  # Set a local CIDR on a VPN gateway connection
  # This request adds the specified CIDR to the specified VPN gateway connection. A request body is not required, and if supplied, is ignored. This request succeeds if the CIDR already exists on the specified VPN gateway connection.
  # @param version Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version.
  # @param generation The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;.
  # @param vpn_gateway_id The VPN gateway identifier
  # @param id The VPN gateway connection identifier
  # @param cidr_prefix The address prefix part of the CIDR
  # @param prefix_length The prefix length part of the CIDR
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'add_vpn_gateway_connection_local_cidr test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for add_vpn_gateway_connection_peer_cidr
  # Set a peer CIDR on a VPN gateway connection
  # This request adds the specified CIDR to the specified VPN gateway connection. A request body is not required, and if supplied, is ignored. This request succeeds if the CIDR already exists on the specified VPN gateway connection.
  # @param version Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version.
  # @param generation The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;.
  # @param vpn_gateway_id The VPN gateway identifier
  # @param id The VPN gateway connection identifier
  # @param cidr_prefix The address prefix part of the CIDR
  # @param prefix_length The prefix length part of the CIDR
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'add_vpn_gateway_connection_peer_cidr test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for check_vpn_gateway_connection_local_cidr
  # Check if the specified local CIDR exists on a VPN gateway connection
  # This request succeeds if a CIDR exists on the specified VPN gateway connection and fails otherwise.
  # @param version Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version.
  # @param generation The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;.
  # @param vpn_gateway_id The VPN gateway identifier
  # @param id The VPN gateway connection identifier
  # @param cidr_prefix The address prefix part of the CIDR
  # @param prefix_length The prefix length part of the CIDR
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'check_vpn_gateway_connection_local_cidr test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for check_vpn_gateway_connection_peer_cidr
  # Check if the specified peer CIDR exists on a VPN gateway connection
  # This request succeeds if a CIDR exists on the specified VPN gateway connection and fails otherwise.
  # @param version Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version.
  # @param generation The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;.
  # @param vpn_gateway_id The VPN gateway identifier
  # @param id The VPN gateway connection identifier
  # @param cidr_prefix The address prefix part of the CIDR
  # @param prefix_length The prefix length part of the CIDR
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'check_vpn_gateway_connection_peer_cidr test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_ike_policy
  # Create an IKE policy
  # This request creates a new IKE policy.
  # @param version Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version.
  # @param generation The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;.
  # @param ike_policy_prototype The IKE policy prototype object.
  # @param [Hash] opts the optional parameters
  # @return [IKEPolicy]
  describe 'create_ike_policy test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_ipsec_policy
  # Create an IPsec policy
  # This request creates a new IPsec policy.
  # @param version Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version.
  # @param generation The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;.
  # @param i_psec_policy_prototype The IPsec policy prototype object.
  # @param [Hash] opts the optional parameters
  # @return [IPsecPolicy]
  describe 'create_ipsec_policy test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_vpn_gateway
  # Create a VPN gateway
  # This request creates a new VPN gateway.
  # @param version Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version.
  # @param generation The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;.
  # @param vpn_gateway_prototype The VPN gateway prototype object.
  # @param [Hash] opts the optional parameters
  # @return [VPNGateway]
  describe 'create_vpn_gateway test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_vpn_gateway_connection
  # Create a VPN gateway connection
  # This request creates a new VPN gateway connection.
  # @param version Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version.
  # @param generation The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;.
  # @param vpn_gateway_id The VPN gateway identifier
  # @param vpn_gateway_connection_prototype The VPN gateway connection prototype object.
  # @param [Hash] opts the optional parameters
  # @return [VPNGatewayConnection]
  describe 'create_vpn_gateway_connection test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_ike_policy
  # Delete an IKE policy
  # This request deletes an IKE policy. This operation cannot be reversed.
  # @param version Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version.
  # @param generation The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;.
  # @param id The IKE policy identifier
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_ike_policy test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_ipsec_policy
  # Delete an IPsec policy
  # This request deletes an IPsec policy. This operation cannot be reversed.
  # @param version Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version.
  # @param generation The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;.
  # @param id The IPsec policy identifier
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_ipsec_policy test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_vpn_gateway
  # Delete a VPN gateway
  # This request deletes a VPN gateway. A VPN gateway with a &#x60;status&#x60; of &#x60;pending&#x60; cannot be deleted. This operation deletes all VPN gateway connections associated with this VPN gateway.  This operation cannot be reversed.
  # @param version Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version.
  # @param generation The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;.
  # @param id The VPN gateway identifier
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_vpn_gateway test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_vpn_gateway_connection
  # Delete a VPN gateway connection
  # This request deletes a VPN gateway connection. This operation cannot be reversed.
  # @param version Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version.
  # @param generation The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;.
  # @param vpn_gateway_id The VPN gateway identifier
  # @param id The VPN gateway connection identifier
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_vpn_gateway_connection test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_ike_policy
  # Retrieve the specified IKE policy
  # This request retrieves a single IKE policy specified by the identifier in the URL.
  # @param version Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version.
  # @param generation The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;.
  # @param id The IKE policy identifier
  # @param [Hash] opts the optional parameters
  # @return [IKEPolicy]
  describe 'get_ike_policy test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_ipsec_policy
  # Retrieve the specified IPsec policy
  # This request retrieves a single IPsec policy specified by the identifier in the URL.
  # @param version Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version.
  # @param generation The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;.
  # @param id The IPsec policy identifier
  # @param [Hash] opts the optional parameters
  # @return [IPsecPolicy]
  describe 'get_ipsec_policy test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_vpn_gateway
  # Retrieve the specified VPN gateway
  # This request retrieves a single VPN gateway specified by the identifier in the URL.
  # @param version Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version.
  # @param generation The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;.
  # @param id The VPN gateway identifier
  # @param [Hash] opts the optional parameters
  # @return [VPNGateway]
  describe 'get_vpn_gateway test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_vpn_gateway_connection
  # Retrieve the specified VPN gateway connection
  # This request retrieves a single VPN gateway connection specified by the identifier in the URL.
  # @param version Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version.
  # @param generation The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;.
  # @param vpn_gateway_id The VPN gateway identifier
  # @param id The VPN gateway connection identifier
  # @param [Hash] opts the optional parameters
  # @return [VPNGatewayConnection]
  describe 'get_vpn_gateway_connection test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_ike_policies
  # List all IKE policies
  # This request retrieves a paginated list of all IKE policies that belong to this account.
  # @param version Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version.
  # @param generation The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :start A server-supplied token determining what resource to start the page on
  # @option opts [Integer] :limit The number of resources to return on a page
  # @return [IKEPolicyCollection]
  describe 'list_ike_policies test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_ike_policy_connections
  # List all connections that use the specified IKE policy
  # This request lists all the connections that use the specified policy.
  # @param version Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version.
  # @param generation The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;.
  # @param id The IKE policy identifier
  # @param [Hash] opts the optional parameters
  # @return [VPNGatewayConnectionCollection]
  describe 'list_ike_policy_connections test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_ipsec_policies
  # List all IPsec policies
  # This request retrieves a paginated list of all IPsec policies that belong to this account.
  # @param version Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version.
  # @param generation The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :start A server-supplied token determining what resource to start the page on
  # @option opts [Integer] :limit The number of resources to return on a page
  # @return [IPsecPolicyCollection]
  describe 'list_ipsec_policies test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_ipsec_policy_connections
  # List all connections that use the specified IPsec policy
  # This request lists all the connections that use the specified policy.
  # @param version Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version.
  # @param generation The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;.
  # @param id The IPsec policy identifier
  # @param [Hash] opts the optional parameters
  # @return [VPNGatewayConnectionCollection]
  describe 'list_ipsec_policy_connections test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_vpn_gateway_connection_local_cidrs
  # List all local CIDRs for a VPN gateway connection
  # This request lists all local CIDRs for a VPN gateway connection specified by the identifier in the URL.
  # @param version Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version.
  # @param generation The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;.
  # @param vpn_gateway_id The VPN gateway identifier
  # @param id The VPN gateway connection identifier
  # @param [Hash] opts the optional parameters
  # @return [VPNGatewayConnectionLocalCIDRs]
  describe 'list_vpn_gateway_connection_local_cidrs test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_vpn_gateway_connection_peer_cidrs
  # List all peer CIDRs for a VPN gateway connection
  # This request lists all peer CIDRs for a VPN gateway connection specified by the identifier in the URL.
  # @param version Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version.
  # @param generation The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;.
  # @param vpn_gateway_id The VPN gateway identifier
  # @param id The VPN gateway connection identifier
  # @param [Hash] opts the optional parameters
  # @return [VPNGatewayConnectionPeerCIDRs]
  describe 'list_vpn_gateway_connection_peer_cidrs test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_vpn_gateway_connections
  # List all connections of a VPN gateway
  # This request lists all the connections of a particular VPN gateway.
  # @param version Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version.
  # @param generation The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;.
  # @param vpn_gateway_id The VPN gateway identifier
  # @param [Hash] opts the optional parameters
  # @option opts [String] :status Filters the collection to VPN gateway connections with the specified status
  # @return [VPNGatewayConnectionCollection]
  describe 'list_vpn_gateway_connections test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_vpn_gateways
  # List all VPN gateways
  # This request retrieves a paginated list of all VPN gateways that belong to this account.
  # @param version Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version.
  # @param generation The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :start A server-supplied token determining what resource to start the page on
  # @option opts [Integer] :limit The number of resources to return on a page
  # @option opts [String] :resource_group_id Filters the collection to resources within one of the resource groups identified in a comma-separated list of resource group identifiers
  # @option opts [VPNGatewayModeType] :mode Filters the collection to VPN gateways with the specified mode
  # @return [VPNGatewayCollection]
  describe 'list_vpn_gateways test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for remove_vpn_gateway_connection_local_cidr
  # Remove a local CIDR from a VPN gateway connection
  # This request removes a CIDR from a VPN gateway connection.
  # @param version Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version.
  # @param generation The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;.
  # @param vpn_gateway_id The VPN gateway identifier
  # @param id The VPN gateway connection identifier
  # @param cidr_prefix The address prefix part of the CIDR
  # @param prefix_length The prefix length part of the CIDR
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'remove_vpn_gateway_connection_local_cidr test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for remove_vpn_gateway_connection_peer_cidr
  # Remove a peer CIDR from a VPN gateway connection
  # This request removes a CIDR from a VPN gateway connection.
  # @param version Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version.
  # @param generation The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;.
  # @param vpn_gateway_id The VPN gateway identifier
  # @param id The VPN gateway connection identifier
  # @param cidr_prefix The address prefix part of the CIDR
  # @param prefix_length The prefix length part of the CIDR
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'remove_vpn_gateway_connection_peer_cidr test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_ike_policy
  # Update an IKE policy
  # This request updates the properties of an existing IKE policy.
  # @param version Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version.
  # @param generation The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;.
  # @param id The IKE policy identifier
  # @param ike_policy_patch The IKE policy patch.
  # @param [Hash] opts the optional parameters
  # @return [IKEPolicy]
  describe 'update_ike_policy test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_ipsec_policy
  # Update an IPsec policy
  # This request updates the properties of an existing IPsec policy.
  # @param version Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version.
  # @param generation The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;.
  # @param id The IPsec policy identifier
  # @param i_psec_policy_patch The IPsec policy patch.
  # @param [Hash] opts the optional parameters
  # @return [IPsecPolicy]
  describe 'update_ipsec_policy test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_vpn_gateway
  # Update a VPN gateway
  # This request updates the properties of an existing VPN gateway.
  # @param version Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version.
  # @param generation The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;.
  # @param id The VPN gateway identifier
  # @param vpn_gateway_patch The VPN gateway patch.
  # @param [Hash] opts the optional parameters
  # @return [VPNGateway]
  describe 'update_vpn_gateway test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_vpn_gateway_connection
  # Update a VPN gateway connection
  # This request updates the properties of an existing VPN gateway connection.
  # @param version Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version.
  # @param generation The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;.
  # @param vpn_gateway_id The VPN gateway identifier
  # @param id The VPN gateway connection identifier
  # @param vpn_gateway_connection_patch The VPN gateway connection patch.
  # @param [Hash] opts the optional parameters
  # @return [VPNGatewayConnection]
  describe 'update_vpn_gateway_connection test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
