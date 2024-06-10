NERDCTL_VERSION=$(curl -L -s -o /dev/null -w '%{url_effective}' "https://github.com/containerd/nerdctl/releases/latest" | grep -oP "v\d+\.\d+\.\d+" | sed 's/v//')
wget -q https://github.com/containerd/nerdctl/releases/download/v$NERDCTL_VERSION/nerdctl-$NERDCTL_VERSION-linux-$(dpkg --print-architecture).tar.gz
sudo tar Cxzvf /usr/local/bin nerdctl-$NERDCTL_VERSION-linux-$(dpkg --print-architecture).tar.gz
sudo rm -f nerdctl-$NERDCTL_VERSION-linux-$(dpkg --print-architecture).tar.gz
