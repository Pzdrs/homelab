resource "proxmox_vm_qemu" "scale01" {
  name  = "truenas-scale"
  tags  = "debian"
  agent = 1
  desc  = "scsi1: /dev/disk/by-id/ata-Verbatim_Vi560_S3_493632454831240,backup=0,size=500107608K\nscsi2: /dev/disk/by-id/ata-ST4000VN006-3CW104_ZW604DQ6,backup=0,size=3907018584K\nscsi3: /dev/disk/by-id/ata-ST4000VN006-3CW104_ZW603QDR,backup=0,size=3907018584K\nscsi4: /dev/disk/by-id/ata-ST4000VN006-3CW104_ZW603R26,backup=0,size=3907018584K"

  automatic_reboot       = false
  define_connection_info = false
  full_clone             = false
  onboot                 = true
  scsihw                 = "virtio-scsi-single"

  cores  = 6
  memory = 16384

  disks {
    scsi {
      scsi0 {
        disk {
          iothread  = true
          replicate = true
          size      = "60G"
          storage   = "vm-data"
        }
      }
      scsi1 {
        passthrough {
          backup     = true
          emulatessd = true
          file       = "/dev/disk/by-id/ata-Verbatim_Vi560_S3_493632454831240"
        }
      }
      scsi2 {
        passthrough {
          backup = false
          file   = "/dev/disk/by-id/ata-ST4000VN006-3CW104_ZW604DQ6"
        }
      }
      scsi3 {
        passthrough {
          backup = false
          file   = "/dev/disk/by-id/ata-ST4000VN006-3CW104_ZW603QDR"

        }
      }
      scsi4 {
        passthrough {
          backup = false
          file   = "/dev/disk/by-id/ata-ST4000VN006-3CW104_ZW603R26"
        }
      }
    }
  }

  network {
    bridge   = "vmbr0"
    firewall = true
    model    = "virtio"
  }
}
