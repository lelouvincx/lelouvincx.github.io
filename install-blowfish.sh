#!/bin/bash
set -e

cd /home/lelouvincx/Repos/lelouvincx.github.io/

latest_tag=$(curl -s -H "Content-Type:application/json" -u lelouvincx:$GITHUB_ACCESS_TOKEN \
	"https://api.github.com/repos/nunocoracao/blowfish/releases/latest" |
	grep '"tag_name":' |
	sed -E 's/.*"([^"]+)".*/\1/')

echo "=== Latest version: $latest_tag. ==="

if [ -e "$latest_tag.zip" ]; then
	echo "=== Zip file exists. ==="
else
	echo "=== Downloading blowfish theme... ==="
	wget "https://github.com/nunocoracao/blowfish/archive/refs/tags/$latest_tag.zip"
fi

echo "=== Unzipping and moving to correct directory... ==="
unzip -q "$latest_tag.zip"
mkdir -p themes
latest_tag=$(echo "$latest_tag" | sed 's/^v//')
mv "blowfish-$latest_tag" "blowfish"
mv blowfish themes/

echo "=== Cleaning... ==="
rm "v$latest_tag.zip"
