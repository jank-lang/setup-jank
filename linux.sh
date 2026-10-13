#!/bin/sh

set -eux

apt install -y sudo curl gnupg lsb-release
curl -s "https://ppa.jank-lang.org/KEY.gpg" | gpg --dearmor | tee /etc/apt/trusted.gpg.d/jank.gpg >/dev/null
echo "deb [signed-by=/etc/apt/trusted.gpg.d/jank.gpg] https://ppa.jank-lang.org $(lsb_release -cs) main" | tee /etc/apt/sources.list.d/jank.list >/dev/null
apt update
apt install -y jank