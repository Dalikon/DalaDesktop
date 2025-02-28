#! /usr/bin/env bash
# Stop unpredictible behavior
set -o errexit # Exit on most errors
set -o nounset # Disallow expansion of unset variables
set -o pipefail # Use last non-zero exit code in a pipeline

# Define constants
readonly PROJECTS_DIR=DalaDesktop
readonly PLAYBOOK_REPO="https://github.com/Dalikon/DalaDesktop"
readonly PLAYBOOK=setup.yml

function main() {
  # Install Git and Ansible
  sudo dnf install -y git ansible
  # Clone the Ansible playbook and run it cd "${HOME}"
  mkdir -p "${PROJECTS_DIR}"
  ansible-pull -U "${PLAYBOOK_REPO}" -i localhost, "${PLAYBOOK}" --ask-become-pass
}

# Run the script
main "$@"
