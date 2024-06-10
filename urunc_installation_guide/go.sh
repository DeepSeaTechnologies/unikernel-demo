wget -q https://go.dev/dl/go1.20.14.linux-$(dpkg --print-architecture).tar.gz
sudo rm -rf /usr/local/go
sudo tar -C /usr/local -xzf go1.20.14.linux-$(dpkg --print-architecture).tar.gz
sudo tee -a /etc/profile > /dev/null << 'EOT'
export PATH=$PATH:/usr/local/go/bin
EOT
rm -f go1.20.14.linux-$(dpkg --print-architecture).tar.gz
