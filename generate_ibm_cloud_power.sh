#!/bin/bash
set -euo pipefail

rake openapi:download_cli

curl -O https://cloud.ibm.com/apidocs/power-cloud.json

sed -i 's/CloudConnectionVPC/CloudConnectionVpc/g' power-cloud.json

yq \
  --inplace \
  '.paths["/v1/networks/{network_id}/network-interfaces/{network_interface_id}"].get.operationId = "v1.networks.network-interfaces.get"' \
  power-cloud.json \
  --output-format json

yq \
  --inplace \
  '.paths["/v1/volume-snapshots"].get.operationId = "v1.volume-snapshots.get"' \
  power-cloud.json \
  --output-format json

yq --inplace \
  'del(.components.securitySchemes.OauthSecurity)' \
  power-cloud.json \
  --output-format json

yq --inplace \
  '.components.schemas.SAPProfile.properties.type.enum = ["balanced","compute","memory","non-production","ultra-memory","small","sap-rise","sap-rise-app"]' \
  power-cloud.json \
  --output-format json

java -jar openapi-generator-cli validate \
    -i power-cloud.json

rm -rf gems/ibm_cloud_power/{lib,doc,spec}

java -jar openapi-generator-cli generate \
    --skip-validate-spec \
    -i ./power-cloud.json \
    -c gems/ibm_cloud_power/.openapi-config.json \
    -g ruby \
    -o ./gems/ibm_cloud_power

echo """
@@ -11,5 +11,5 @@
 =end

 module IbmCloudPower
-  VERSION = '1.0.0'
+  VERSION = '3.0.0'
 end
""" | patch gems/ibm_cloud_power/lib/ibm_cloud_power/version.rb

echo '''
@@ -178,7 +178,7 @@
         invalid_properties.push('invalid value for "name", the character length must be smaller than or equal to 128.')
       end

-      pattern = Regexp.new(/^[a-zA-Z0-9-_][a-zA-Z0-9-_]*$/)
+      pattern = Regexp.new(/^[a-zA-Z0-9\-_][a-zA-Z0-9\-_]*$/)
       if !@name.nil? && @name !~ pattern
         invalid_properties.push("invalid value for \"name\", must conform to the pattern #{pattern}.")
       end
@@ -196,7 +196,7 @@
       return false if !@mtu.nil? && @mtu > 9000
       return false if !@mtu.nil? && @mtu < 1450
       return false if !@name.nil? && @name.to_s.length > 128
-      return false if !@name.nil? && @name !~ Regexp.new(/^[a-zA-Z0-9-_][a-zA-Z0-9-_]*$/)
+      return false if !@name.nil? && @name !~ Regexp.new(/^[a-zA-Z0-9\-_][a-zA-Z0-9\-_]*$/)
       return false if @type.nil?
       type_validator = EnumAttributeValidator.new('String', ["vlan", "pub-vlan", "dhcp-vlan"])
       return false unless type_validator.valid?(@type)
@@ -224,7 +224,7 @@
         fail ArgumentError, 'invalid value for "name", the character length must be smaller than or equal to 128.'
       end

-      pattern = Regexp.new(/^[a-zA-Z0-9-_][a-zA-Z0-9-_]*$/)
+      pattern = Regexp.new(/^[a-zA-Z0-9\-_][a-zA-Z0-9\-_]*$/)
       if !name.nil? && name !~ pattern
         fail ArgumentError, "invalid value for \"name\", must conform to the pattern #{pattern}."
       end
''' | patch gems/ibm_cloud_power/lib/ibm_cloud_power/models/network_create.rb

echo """
@@ -141,7 +141,7 @@
       @scheme = 'http'
       @host = 'localhost'
       @base_path = ''
-      @server_index = 0
+      @server_index = nil
       @server_operation_index = {}
       @server_variables = {}
       @server_operation_variables = {}
""" | patch gems/ibm_cloud_power/lib/ibm_cloud_power/configuration.rb
