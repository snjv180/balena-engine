#!/bin/bash

set -x -o errexit

case "$(go env GOARCH)" in
	"arm")
		arch="armv$(go env GOARM)"
		;;
	"arm64")
		arch="aarch64"
		;;
	"386")
		arch="i386"
		;;
	"amd64")
		arch="x86_64"
		;;
esac

version=$(git describe --tags --always)

src="bundles/latest/binary-balena"
dst="balena-engine"
archive="balena-engine-$version-$arch.tar.gz"

tar czfv "$archive" "$src"
mv "$archive" "$dst/$archive"
