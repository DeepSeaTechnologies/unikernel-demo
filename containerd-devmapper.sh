sudo sed -i '/\[plugins\."io\.containerd\.snapshotter\.v1\.devmapper"\]/,/^$/d' /etc/containerd/config.toml
sudo tee -a /etc/containerd/config.toml > /dev/null <<'EOT'

# Customizations for urunc

[plugins."io.containerd.snapshotter.v1.devmapper"]
  pool_name = "containerd-pool"
  root_path = "/var/lib/containerd/io.containerd.snapshotter.v1.devmapper"
  base_image_size = "10GB"
  discard_blocks = true
  fs_type = "ext2"
EOT
sudo systemctl restart containerd
