#!/bin/bash
#
# Bitnami custom library

# Load Generic Libraries
. /liblog.sh

# Constants
BOLD='\033[1m'
DISABLE_WELCOME_MESSAGE="${DISABLE_WELCOME_MESSAGE:-}"

# Functions

########################
# Prints the welcome page
# Globals:
#   DISABLE_WELCOME_MESSAGE
#   BITNAMI_APP_NAME
# Arguments:
#   None
# Returns:
#   None
#########################
print_welcome_page() {
    if [ -z "$DISABLE_WELCOME_MESSAGE" ]; then
        if [ -n "$BITNAMI_APP_NAME" ]; then
            print_image_welcome_page
        fi
    fi
}

########################
# Prints the welcome page for a Bitnami Docker image
# Globals:
#   BITNAMI_APP_NAME
# Arguments:
#   None
# Returns:
#   None
#########################
print_image_welcome_page() {
    local github_url="https://github.com/bitnami/bitnami-docker-${BITNAMI_APP_NAME}"

    log ""
    log "${BOLD}Welcome to the Bitnami ${BITNAMI_APP_NAME} container${RESET}"
    log "Subscribe to project updates by watching ${BOLD}${github_url}${RESET}"
    log "Submit issues and feature requests at ${BOLD}${github_url}/issues${RESET}"
    log "Send us your feedback at ${BOLD}containers@bitnami.com${RESET}"
    log ""
}

