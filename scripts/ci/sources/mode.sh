#!/usr/bin/env bash
source ./scripts/ci/sources/tunnel.sh

is_lint() {
  [[ "${MODE}" = lint ]]
}

is_aot() {
  [[ "${MODE}" = aot ]]
}

is_closure_compiler() {
  [[ "${MODE}" = closure-compiler ]]
}

is_unit() {
  [[ "${MODE}" =~ ^.*_(optional|required)$ ]]
}

is_e2e() {
  [[ "${MODE}" = e2e ]]
}

is_payload() {
  [[ "${MODE}" = payload ]]
}

is_prerender() {
  [[ "$MODE" = prerender ]]
}
