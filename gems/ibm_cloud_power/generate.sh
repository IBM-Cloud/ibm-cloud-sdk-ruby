#!/bin/bash
set -euo pipefail
curl -O https://cloud.ibm.com/apidocs/power-cloud.json

echo '''
--- power-cloud.json
+++ power-cloud.json
@@ -30934,7 +30934,7 @@
         }
       },
       "get": {
-        "operationId": "v1.networks.network-interfaces.delete",
+        "operationId": "v1.networks.network-interfaces.get",
         "responses": {
           "200": {
             "description": "OK",
@@ -32055,7 +32055,7 @@
     "/v1/volume-snapshots": {
       "get": {
         "description": "View the usage of volume snapshots on the workspace. The volume snapshots may take time sync because the data is cached.",
-        "operationId": "v1.volume-snapshots.getall",
+        "operationId": "v1.volume-snapshots.get",
         "responses": {
           "200": {
             "description": "OK",
@@ -39309,7 +39309,8 @@
               "non-production",
               "ultra-memory",
               "small",
-              "SAP Rise Optimized"
+              "sap-rise",
+              "sap-rise-app"
             ],
             "type": "string"
           },
@@ -42512,4 +42513,4 @@
       }
     }
   }
-}
\ No newline at end of file
+}
''' | patch power-cloud.json

# Install with `npm install --prefix ./ @openapitools/openapi-generator-cli`
./node_modules/.bin/openapi-generator-cli validate \
    -i power-cloud.json

./node_modules/.bin/openapi-generator-cli generate \
    --skip-validate-spec \
    -i ./power-cloud.json \
    -c .openapi-config.json \
    -g ruby \
    -o ./

echo """
@@ -11,5 +11,5 @@
 =end

 module IbmCloudPower
-  VERSION = '1.0.0'
+  VERSION = '3.0.0'
 end
""" | patch lib/ibm_cloud_power/version.rb

echo """
@@ -244,13 +244,6 @@
     # Returns Auth Settings hash for api client.
     def auth_settings
       {
-        'OauthSecurity' =>
-          {
-            type: 'oauth2',
-            in: 'header',
-            key: 'Authorization',
-            value: \"Bearer #{access_token_with_refresh}\"
-          },
       }
     end
""" | patch lib/ibm_cloud_power/configuration.rb

echo '''
@@ -185,7 +185,7 @@
         invalid_properties.push('invalid value for "name", the character length must be smaller than or equal to 128.')
       end

-      pattern = Regexp.new(/^[a-zA-Z0-9-_][a-zA-Z0-9-_]*$/)
+      pattern = Regexp.new(/^[a-zA-Z0-9\-_][a-zA-Z0-9\-_]*$/)
       if !@name.nil? && @name !~ pattern
         invalid_properties.push("invalid value for \"name\", must conform to the pattern #{pattern}.")
       end
@@ -204,7 +204,7 @@
       return false if !@mtu.nil? && @mtu > 9000
       return false if !@mtu.nil? && @mtu < 1450
       return false if !@name.nil? && @name.to_s.length > 128
-      return false if !@name.nil? && @name !~ Regexp.new(/^[a-zA-Z0-9-_][a-zA-Z0-9-_]*$/)
+      return false if !@name.nil? && @name !~ Regexp.new(/^[a-zA-Z0-9\-_][a-zA-Z0-9\-_]*$/)
       return false if @type.nil?
       type_validator = EnumAttributeValidator.new('String', ["vlan", "pub-vlan", "dhcp-vlan"])
       return false unless type_validator.valid?(@type)
@@ -240,7 +240,7 @@
         fail ArgumentError, 'invalid value for "name", the character length must be smaller than or equal to 128.'
       end

-      pattern = Regexp.new(/^[a-zA-Z0-9-_][a-zA-Z0-9-_]*$/)
+      pattern = Regexp.new(/^[a-zA-Z0-9\-_][a-zA-Z0-9\-_]*$/)
       if name !~ pattern
         fail ArgumentError, "invalid value for \"name\", must conform to the pattern #{pattern}."
       end
''' | patch lib/ibm_cloud_power/models/network_create.rb
