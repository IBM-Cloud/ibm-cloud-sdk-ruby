#!/bin/bash
set -euo pipefail

# Pre-generation patch script for power-cloud OpenAPI spec
# This script modifies the OpenAPI spec before code generation

# Available environment variables:
# - SPEC_FILE: Path to the OpenAPI spec JSON file
# - SPEC_NAME: Base name of the spec (without .json)
# - GEM_DIR: Path to the gem directory
# - OPENAPI_CLI_JAR: Path to openapi-generator JAR

echo "Applying pre-generation patches to ${SPEC_NAME}..."

# Fix CloudConnectionVPC casing
sed -i 's/CloudConnectionVPC/CloudConnectionVpc/g' "${SPEC_FILE}"

# Fix network-interfaces operation ID
yq '.paths["/v1/networks/{network_id}/network-interfaces/{network_interface_id}"].get.operationId = "v1.networks.network-interfaces.get"' \
  "${SPEC_FILE}" > "${SPEC_FILE}.tmp" && mv "${SPEC_FILE}.tmp" "${SPEC_FILE}"

# Fix volume-snapshots operation ID
yq '.paths["/v1/volume-snapshots"].get.operationId = "v1.volume-snapshots.get"' \
  "${SPEC_FILE}" > "${SPEC_FILE}.tmp" && mv "${SPEC_FILE}.tmp" "${SPEC_FILE}"

# Remove OauthSecurity scheme
yq 'del(.components.securitySchemes.OauthSecurity)' \
  "${SPEC_FILE}" > "${SPEC_FILE}.tmp" && mv "${SPEC_FILE}.tmp" "${SPEC_FILE}"

# Fix SAPProfile type enum
yq '.components.schemas.SAPProfile.properties.type.enum = ["balanced","compute","memory","non-production","ultra-memory","small","sap-rise","sap-rise-app"]' \
  "${SPEC_FILE}" > "${SPEC_FILE}.tmp" && mv "${SPEC_FILE}.tmp" "${SPEC_FILE}"

# Fix regex pattern in NetworkCreate schema to properly escape hyphen
yq '.components.schemas.NetworkCreate.properties.name.pattern = "^[a-zA-Z0-9\\-_][a-zA-Z0-9\\-_]*$"' \
  "${SPEC_FILE}" > "${SPEC_FILE}.tmp" && mv "${SPEC_FILE}.tmp" "${SPEC_FILE}"

# Fix regex pattern in WorkspaceSSHKey schemas to properly escape hyphen
yq '.components.schemas.CreateWorkspaceSSHKey.properties.name.pattern = "^[a-zA-Z0-9\\-_][a-zA-Z0-9\\-_]*$"' \
  "${SPEC_FILE}" > "${SPEC_FILE}.tmp" && mv "${SPEC_FILE}.tmp" "${SPEC_FILE}"
yq '.components.schemas.UpdateWorkspaceSSHKey.properties.name.pattern = "^[a-zA-Z0-9\\-_][a-zA-Z0-9\\-_]*$"' \
  "${SPEC_FILE}" > "${SPEC_FILE}.tmp" && mv "${SPEC_FILE}.tmp" "${SPEC_FILE}"
yq '.components.schemas.WorkspaceSSHKey.properties.name.pattern = "^[a-zA-Z0-9\\-_][a-zA-Z0-9\\-_]*$"' \
  "${SPEC_FILE}" > "${SPEC_FILE}.tmp" && mv "${SPEC_FILE}.tmp" "${SPEC_FILE}"

# Fix regex pattern in VPMemVolumeCreate schema to properly escape hyphen
yq '.components.schemas.VPMemVolumeCreate.properties.name.pattern = "^[a-zA-Z0-9\\-_][a-zA-Z0-9\\-_]*$"' \
  "${SPEC_FILE}" > "${SPEC_FILE}.tmp" && mv "${SPEC_FILE}.tmp" "${SPEC_FILE}"

echo "Pre-generation patches applied successfully to ${SPEC_NAME}"
