
resource "proxmox_vm_qemu" "talos-control-0" {
  name        = "talos-control-0"
  target_node = "pve"
  onboot      = true
  memory      = 1024 * 4 
  cores       = 2
  scsihw      = "virtio-scsi-single"

  disks {
    ide {
      ide2 {
        cdrom {
          iso = "local:iso/talos1.7.6-with-guest-agent.iso"
        }
      }
    }
    scsi {
      scsi0 {
        disk {
          size       = "20G"
          storage    = "vm-data"
          emulatessd = true
        }
      }
    }
  }

  network {
    bridge = "vmbr0"
    model  = "virtio"
  }
}

resource "proxmox_vm_qemu" "talos-worker-0" {
  name        = "talos-worker-0"
  target_node = "pve"
  onboot      = true
  memory      = 1024 * 8
  cores       = 2
  scsihw      = "virtio-scsi-single"

  disks {
    ide {
      ide2 {
        cdrom {
          iso = "local:iso/talos1.7.6-with-guest-agent.iso"
        }
      }
    }
    scsi {
      scsi0 {
        disk {
          size       = "20G"
          storage    = "vm-data"
          emulatessd = true
        }
      }
    }
  }

  network {
    bridge = "vmbr0"
    model  = "virtio"
  }
}
