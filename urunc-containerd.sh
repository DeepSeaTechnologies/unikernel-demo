sudo tee -a /etc/containerd/config.toml > /dev/null <<EOT
[plugins."io.containerd.grpc.v1.cri".containerd.runtimes.urunc]
    runtime_type = "io.containerd.urunc.v2"
    container_annotations = ["com.urunc.unikernel.*"]
    pod_annotations = ["com.urunc.unikernel.*"]
    snapshotter = "devmapper"

    [plugins."io.containerd.grpc.v1.cri".containerd.runtimes.urunc.options]
      SystemdCgroup = true
EOT
sudo systemctl restart containerd
