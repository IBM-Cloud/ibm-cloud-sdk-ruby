module IBM
  module Cloud
    module SDK
      class PowerIaas < BaseService
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
        end

        def endpoint
          "https://#{region.sub(/-\d$/, '')}.power-iaas.cloud.ibm.com/pcloud/v1"
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
        # @param pvm_instance_id [String] the PVM instance ID
        # @return [Hash] PVM Instances
        def get_pvm_instance(instance_id)
          get("cloud-instances/#{guid}/pvm-instances/#{instance_id}")
        end

        def start_pvm_instance(instance_id)
          post(
            "cloud-instances/#{guid}/pvm-instances/#{instance_id}/action",
            {"action" => "start"}.to_json
          )
        end

        def stop_pvm_instance(instance_id)
          post(
            "cloud-instances/#{guid}/pvm-instances/#{instance_id}/action",
            {"action" => "stop"}.to_json
          )
        end

        def reboot_pvm_instance(instance_id)
          post(
            "cloud-instances/#{guid}/pvm-instances/#{instance_id}/action",
            {"action" => "reboot"}.to_json
          )
        end

        def create_pvm_instance(instance_hash)
          post("cloud-instances/#{guid}/pvm-instances", instance_hash.to_json)
        end

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
        # @param image_id [String] The ID of an Image
        # @return [Hash] Image
        def get_image(image_id)
          get("cloud-instances/#{guid}/images/#{image_id}")
        rescue
          nil
        end

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
        # @param volume_id [String] The ID of a volume
        # @return [Hash] Volume
        def get_volume(volume_id)
          get("cloud-instances/#{guid}/volumes/#{volume_id}")
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
        # @param network_id [String] the network ID
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
        # note: this mehod to be refactored under the common 
        # IBM::Cloud::SDK::PowerIaas.endpoint when the rest api become available.
        #
        # @return [Hash] StorageType
        def get_storage_types
          JSON.parse(RestClient.get("https://#{region.sub(/-\d$/, '')}.power-iaas.cloud.ibm.com/broker/v1/storage-types", headers))
        end

        def create_network(network_hash)
          post("cloud-instances/#{guid}/networks", network_hash.to_json)
        end

        def delete_network(network_id)
          delete("cloud-instances/#{guid}/networks/#{network_id}")
        end

        def get_network_ports(network_id)
          get("cloud-instances/#{guid}/networks/#{network_id}/ports")["ports"]
        end

        def get_ssh_keys
          get("tenants/#{tenant}")["sshKeys"]
        end

        def create_key_pair(name, sshkey)
          payload = {"name" => name, "sshkey" => sshkey}
          post("tenants/#{tenant}/sshkeys", payload.to_json)
        end

        def delete_key_pair(name)
          delete("tenants/#{tenant}/sshkeys/#{name}")
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
