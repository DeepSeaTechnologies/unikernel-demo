CNI_VERSION=$(curl -L -s -o /dev/null -w '%{url_effective}' "https://github.com/containernetworking/plugins/releases/latest" | grep -oP "v\d+\.\d+\.\d+" | sed 's/v//')
wget -q https://github.com/containernetworking/plugins/releases/download/v$CNI_VERSION/cni-plugins-linux-$(dpkg --print-architecture)-v$CNI_VERSION.tgz
sudo mkdir -p /opt/cni/bin
sudo tar Cxzvf /opt/cni/bin cni-plugins-linux-$(dpkg --print-architecture)-v$CNI_VERSION.tgz
sudo rm -f cni-plugins-linux-$(dpkg --print-architecture)-v$CNI_VERSION.tgz
