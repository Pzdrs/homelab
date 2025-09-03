## Expired client certificate (Talos)

1. Generate secrets bundle (if not already done)

    `--force` to overwrite existing secrets

    ```shell
    talosctl gen secrets --from-controlplane-config controlplane.yaml --force
    ```

2. Generate talosconfig from secrets bundle

    It wants a kube api server endpoint with scheme and everything so for example https://10.0.0.200:6443

    This command by default generates new machine configs and the talosconfig. We only want the talosconfig. Thus `-t talosconfig`

    ```shell
    talosctl gen config <cluster_name> <kube_endpoint> --from-secrets-bundle -t talosconfig
    ```

## Expired client certificate (k8s)

Needs a working access to the Talos API

1. Generate new kubeconfig

    ```shell
    talosctl kubeconfig -n <node_ip>
    ``` 