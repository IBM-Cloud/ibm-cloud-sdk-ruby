require_relative 'logging'

module IBM
  module Cloud
    module SDK
      class PowerIaas < BaseService
        include Logging

        # Create an API Client object for the Power IaaS service
        #
        # @param region [String] the IBM Power Cloud instance region
        # @param guid [String] the IBM Power Cloud instance GUID
        # @param token [IAMtoken] the IBM Cloud IAM Token object
        # @param crn [String] the IBM Power Cloud instance CRN
        # @param tenant [String] the IBM Power Cloud account ID
        def initialize(region, guid, token, crn, tenant)
          @crn    = crn
          @guid   = guid
          @region = region
          @token  = token
          @tenant = tenant
          RestClient.log = logger
        end

        # Get the API service Endpoint URL
        #
        # @return [String] Endpoint URL
        def endpoint
          "https://#{region.sub(/-\d$/, '')}.power-iaas.cloud.ibm.com/pcloud/v1"
        end

        # Get Power Cloud Instance information
        #
        # @return [Hash] CloudInstance
        def get_pcloud_instance
          get("cloud-instances/#{guid}")
        end

        # Get all PVM instances in an IBM Power Cloud instance
        #
        # @return [Array<Hash>] all PVM Instances for this instance
        def get_pvm_instances
          pvm_instances = get("cloud-instances/#{guid}/pvm-instances")["pvmInstances"] || []

          pvm_instances.map do |pvm_instance|
            get_pvm_instance(pvm_instance["pvmInstanceID"])
          end
        end

        # Get an IBM Power Cloud PVM instance
        #
        # @param pvm_instance_id [String] PVM instance ID
        # @return [Hash] PVM Instances
        def get_pvm_instance(instance_id)
          get("cloud-instances/#{guid}/pvm-instances/#{instance_id}")
        end

        # Perform 'start' action on a PVMInstance
        #
        # @param pvm_instance_id [String] PVM instance ID
        def start_pvm_instance(instance_id)
          post(
            "cloud-instances/#{guid}/pvm-instances/#{instance_id}/action",
            {"action" => "start"}.to_json
          )
        end

        # Perform 'stop' action on a PVMInstance
        #
        # @param pvm_instance_id [String] PVM instance ID
        def stop_pvm_instance(instance_id)
          post(
            "cloud-instances/#{guid}/pvm-instances/#{instance_id}/action",
            {"action" => "stop"}.to_json
          )
        end

        # Perform 'immediate-shutdown' action on a PVMInstance
        #
        # @param pvm_instance_id [String] PVM instance ID
        def immediate_shutdown_pvm_instance(instance_id)
          post(
            "cloud-instances/#{guid}/pvm-instances/#{instance_id}/action",
            {"action" => "immediate-shutdown"}.to_json
          )
        end

        # Perform 'reboot' action on a PVMInstance
        #
        # This action has been deprecated and replaced by 'soft-reboot'
        # and 'hard-reboot'
        #
        # @param pvm_instance_id [String] PVM instance ID
        def reboot_pvm_instance(instance_id)
          post(
            "cloud-instances/#{guid}/pvm-instances/#{instance_id}/action",
            {"action" => "reboot"}.to_json
          )
        end

        # Perform 'soft-reboot' action on a PVMInstance
        #
        # @param pvm_instance_id [String] PVM instance ID
        def soft_reboot_pvm_instance(instance_id)
          post(
            "cloud-instances/#{guid}/pvm-instances/#{instance_id}/action",
            {"action" => "soft-reboot"}.to_json
          )
        end

        # Perform 'hard-reboot' action on a PVMInstance
        #
        # @param pvm_instance_id [String] PVM instance ID
        def hard_reboot_pvm_instance(instance_id)
          post(
            "cloud-instances/#{guid}/pvm-instances/#{instance_id}/action",
            {"action" => "hard-reboot"}.to_json
          )
        end

        # Perform 'reset-state' action on a PVMInstance
        #
        # @param pvm_instance_id [String] PVM instance ID
        def reset_state_pvm_instance(instance_id)
          post(
            "cloud-instances/#{guid}/pvm-instances/#{instance_id}/action",
            {"action" => "reset-state"}.to_json
          )
        end

        # Create a new PVM instance
        #
        # @param instance_hash [Hash] New instance attributes
        # @return [Hash] PVMInstance
        def create_pvm_instance(instance_hash)
          post("cloud-instances/#{guid}/pvm-instances", instance_hash.to_json)
        end

        # Delete a PVM instance
        #
        # @param pvm_instance_id [String] PVM instance ID
        def delete_pvm_instance(instance_id)
          delete("cloud-instances/#{guid}/pvm-instances/#{instance_id}")
        end

        # Get all images in an IBM Power Cloud instance
        #
        # @return [Array<Hash>] all Images for this instance
        def get_images
          images = get("cloud-instances/#{guid}/images")["images"] || []

          images.map do |image|
            get_image(image["imageID"])
          end.compact
        end

        # Get an IBM Power Cloud image
        #
        # @param image_id [String] Image ID
        # @return [Hash] Image
        def get_image(image_id)
          get("cloud-instances/#{guid}/images/#{image_id}")
        rescue
          nil
        end

        # Delete an image from a cloud instance
        #
        # @param image_id [String] Image ID
        def delete_image(image_id)
          delete("cloud-instances/#{guid}/images/#{image_id}")
        end

        # List all the volumes.
        #
        # @return [Array<Hash>] all volumes for this instance
        def get_volumes
          volumes = get("cloud-instances/#{guid}/volumes")["volumes"] || []

          volumes.map do |volume|
            get_volume(volume["volumeID"])
          end
        end

        # Get a specific volume
        #
        # @param volume_id [String] Image ID
        # @return [Hash] Volume
        def get_volume(volume_id)
          get("cloud-instances/#{guid}/volumes/#{volume_id}")
        end

        # Delete a volume
        #
        # @param volume_id [String] Volume ID
        def delete_volume(volume_id)
          delete("cloud-instances/#{guid}/volumes/#{volume_id}")
        end

        # Create a volume
        #
        # @param volume_hash [Hash] New volume attributes
        # @return [Hash] Volume
        def create_volume(volume_hash)
          post("cloud-instances/#{guid}/volumes", volume_hash.to_json)
        end

        # Attach a volume
        #
        # @param pvm_instance_id [String] PVM Instance ID
        # @param  volume_id [String] Volume ID
        def attach_volume(pvm_instance_id, volume_id)
          post("cloud-instances/#{guid}/pvm-instances/#{pvm_instance_id}/volumes/#{volume_id}", {})
        end

        # Detach a volume
        #
        # @param pvm_instance_id [String] PVM Instance ID
        # @param  volume_id [String] Volume ID
        def detach_volume(pvm_instance_id, volume_id)
          delete("cloud-instances/#{guid}/pvm-instances/#{pvm_instance_id}/volumes/#{volume_id}")
        end

        # Get all networks in an IBM Power Cloud instance
        #
        # @return [Array<Hash>] all networks for this IBM Power Cloud instance
        def get_networks
          networks = get("cloud-instances/#{guid}/networks")["networks"] || []
          networks.map do |network|
            get_network(network["networkID"])
          end
        end

        # Get an IBM Power Cloud network
        #
        # @param network_id [String] Network ID
        # @return [Hash] Network
        def get_network(network_id)
          get("cloud-instances/#{guid}/networks/#{network_id}")
        end

        # Get a available system pools list for IBM Power Cloud DC
        #
        # @return [Hash] SystemPool
        def get_system_pool
          get("cloud-instances/#{guid}/system-pools")
        end

        # Get a storage types list in IBM  Power Cloud.
        # note: this method to be refactored under the common
        # IBM::Cloud::SDK::PowerIaas.endpoint when the rest api become available.
        #
        # @return [Array<Hash>] StorageType
        def get_storage_types
          JSON.parse(RestClient.get("https://#{region.sub(/-\d$/, '')}.power-iaas.cloud.ibm.com/broker/v1/storage-types", headers))[region]
        end

        # Create a new network
        #
        # @param network_hash [Hash] New network attributes
        # @return [Hash] Network
        def create_network(network_hash)
          post("cloud-instances/#{guid}/networks", network_hash.to_json)
        end

        # Delete a network
        #
        # @param network_id [String] Network ID
        def delete_network(network_id)
          delete("cloud-instances/#{guid}/networks/#{network_id}")
        end

        # Get all ports for a network
        #
        # @param network_id [String] Network ID
        # @return [Array<Hash>] NetworkPort
        def get_network_ports(network_id)
          get("cloud-instances/#{guid}/networks/#{network_id}/ports")["ports"]
        end

        # List the tenant's SSH Keys
        #
        # @return [Array<Hash>] SSHKey
        def get_ssh_keys
          get("tenants/#{tenant}")["sshKeys"]
        end

        # Add a new SSH key to the tenant
        #
        # @param name [String] User defined name for the SSH key
        # @param sshkey [String] SSH RSA key
        # @return [Hash] SSHKey
        def create_key_pair(name, sshkey)
          payload = {"name" => name, "sshkey" => sshkey}
          post("tenants/#{tenant}/sshkeys", payload.to_json)
        end

        # Delete SSH key from the tenant
        #
        # @param sshkey_name [String] SSH Key name
        def delete_key_pair(name)
          delete("tenants/#{tenant}/sshkeys/#{name}")
        end

        # Get an SAP profile
        #
        # @param sap_profile_id [String] SAP Profile ID
        # @return [Hash] SAP profile
        def get_sap_profile(sap_profile_id)
          get("cloud-instances/#{guid}/sap/#{sap_profile_id}")
        end

        # Get list of all SAP profiles
        #
        # @return [Array<Hash>] all SAP profiles available to this instance
        def get_sap_profiles
          sap_profiles = get("cloud-instances/#{guid}/sap")["profiles"] || []

          sap_profiles.map do |sap_profile|
            get_sap_profile(sap_profile["profileID"])
          end
        end

        # Create a new SAP PVM Instance
        #
        # Create a new PVM instance using an SAP profile. The resultant PVM
        # instance is the standard 'PVMInstance' type and can be accessed via
        # the existing *_pvm_instance methods.
        #
        # @param sap_profile_id [String] SAP Profile ID
        # @return [Hash] SAP profile
        def create_sap_pvm_instance(instance_hash)
          post("cloud-instances/#{guid}/sap", instance_hash.to_json)
        end

        private

        attr_reader :crn, :guid, :region, :tenant, :token

        def headers
          {
            'Authorization' => token.authorization_header,
            'CRN'           => crn,
            'Content-Type'  => 'application/json'
          }
        end
      end
    end
  end
end
