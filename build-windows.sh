#!/bin/bash

# Build script for Windows binaries
# This script builds both 32-bit and 64-bit Windows executables

set -e

echo "Building Windows binaries for decrypt-dbvis..."

# Create output directory
mkdir -p dist

# Build Windows 64-bit
echo "Building Windows 64-bit..."
GOOS=windows GOARCH=amd64 go build -o dist/decrypt-dbvis-windows-amd64.exe ./src/cmd/decrypt-dbvis

# Build Windows 32-bit
echo "Building Windows 32-bit..."
GOOS=windows GOARCH=386 go build -o dist/decrypt-dbvis-windows-386.exe ./src/cmd/decrypt-dbvis

echo "Build complete!"
echo "Binaries created:"
echo "  - dist/decrypt-dbvis-windows-amd64.exe (64-bit)"
echo "  - dist/decrypt-dbvis-windows-386.exe (32-bit)" 