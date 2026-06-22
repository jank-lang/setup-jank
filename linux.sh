#!/bin/sh

set -eux

apt install -y curl gnupg
curl -s "https://ppa.jank-lang.org/KEY.gpg" | gpg --dearmor | tee /etc/apt/trusted.gpg.d/jank.gpg >/dev/null
curl -s -o /etc/apt/sources.list.d/jank.list "https://ppa.jank-lang.org/jank.list"
apt update
apt install -y jank