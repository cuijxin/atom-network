set -o errexit
set -o nounset
set -o pipefail

HACK_DIR=$(dirname "${BASH_SOURCE[0]}")
REPO_ROOT="${HACK_DIR}/.."

"${REPO_ROOT}/vendor/k8s.io/code-generator/generate-groups.sh" all \
  github.com/cuijxin/atom-network/pkg/client \
  github.com/cuijxin/atom-network/pkg/apis \
  "samplecrd:v1" \
  --go-header-file "${HACK_DIR}/boilerplate.go.txt"
