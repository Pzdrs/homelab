resource "proxmox_vm_qemu" "docker" {
    name                   = "docker"
    tags                   = "debain"
    agent                  = 1
    
    automatic_reboot       = false
    define_connection_info = false
    full_clone             = false
    onboot                 = true
    scsihw                 = "virtio-scsi-single"

    cores                  = 4
    memory                 = 20*1024 

    disks {
        virtio {
            virtio0 {
                disk {
                    iothread             = true
                    replicate            = true
                    size                 = "160G"
                    storage              = "vm-data"
                }
            }
        }
    }

    network {
        bridge    = "vmbr0"
        firewall  = true
        model     = "virtio"
    }
}