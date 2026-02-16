#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"

rm -rf out
mkdir out
protoc \
	--proto_path=example=example \
	--proto_path=google=google \
	--proto_path=protoc-gen-openapiv2=protoc-gen-openapiv2 \
	--openapiv2_opt=disable_default_errors=true \
	--openapiv2_opt=allow_delete_body=true \
	--openapiv2_out=out \
	example/v1/proto.proto
