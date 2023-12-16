#!/bin/bash
function get_openssl_version() {
  local std_version=$1
  local script_version=${2:-}
  script_version="$(printf '%02d' $script_version)"
  if [[ ! "$std_version" =~ 3.*.* ]]; then
    local generic_version=${std_version%?}
    local subpatch=${std_version: -1}
    local subpatch_number=$(($(printf '%d' \'$subpatch) - 97 + 1))
    subpatch_number="$(printf '%02d' $subpatch_number)"
    local normalized_version="${generic_version}${subpatch_number}${script_version}"
    echo $normalized_version
    return
  fi
  echo "${std_version}${script_version}"
}
