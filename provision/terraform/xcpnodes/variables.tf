
variable "common" {
  type = map(string)
  default = {
    os_type         = "ubuntu"
    clone           = "Ubuntu 20.04 Cloud-Init 71"
    search_domain   = ""  # Ensure this one is blank or coredns will not work properly
    nameserver      = "192.168.30.1"
    ceph_nameserver = "192.168.25.1"
    username        = "dfroberg"
    gw              = "192.168.30.1"
    ceph_gw         = "192.168.25.1"

  }
}
variable "dbs" {
  type = map(map(string))
  default = {
    postgres = {
      id          = 4009
      primary_ip  = "192.168.30.18"
      cidr        = "192.168.30.18/24"
      ceph_cidr   = "192.168.25.18/24"
      sockets     = 1
      cpulimit    = 4
      vcpus       = 4
      cores       = 8
      macaddr     = "68:b5:99:b3:da:fa"
      ceph_macaddr = "68:b5:99:b3:db:fa"
      memory      = 4*1024*1024*1024
      disk        = 10*1024*1024*1024
      disk_slot   = 0
      target_node = "xcp-ng-01"
      storage_pool     = "ld2"
      resource_pool_name = "High"
    },
  }
}
variable "masters" {
  type = map(map(string))
  default = {
    master01 = {
      id          = 4010
      cidr        = "192.168.30.50/24"
      ceph_cidr   = "192.168.25.50/24"
      sockets     = 1
      cpulimit    = 4
      vcpus       = 4
      cores       = 8
      macaddr     = "68:b5:99:b3:da:01"
      ceph_macaddr = "68:b5:99:b3:db:01"
      memory      = 6*1024*1024*1024
      disk        = 30*1024*1024*1024
      disk_slot   = 0
      target_node = "xcp-ng-01"
      storage_pool     = "ld2"
      resource_pool_name = "High"
    },
    master02 = {
      id          = 4011
      cidr        = "192.168.30.51/24"
      ceph_cidr   = "192.168.25.51/24"
      sockets     = 1
      cpulimit    = 4
      vcpus       = 4
      cores       = 8
      macaddr     = "68:b5:99:b3:da:02"
      ceph_macaddr = "68:b5:99:b3:db:02"
      memory      = 6*1024*1024*1024
      disk        = 30*1024*1024*1024
      disk_slot   = 0
      target_node = "xcp-ng-01"
      storage_pool     = "ld2"
      resource_pool_name = "High"
    },
    master03 = {
      id          = 4012
      cidr        = "192.168.30.52/24"
      ceph_cidr   = "192.168.25.52/24"
      sockets     = 1
      cpulimit    = 4
      vcpus       = 4
      cores       = 8
      macaddr     = "68:b5:99:b3:da:03"
      ceph_macaddr = "68:b5:99:b3:db:03"
      memory      = 6*1024*1024*1024
      disk        = 30*1024*1024*1024
      disk_slot   = 0
      target_node = "xcp-ng-01"
      storage_pool     = "ld2"
      resource_pool_name = "High"
    }
  }
}
variable "storage" {
  type = map(map(string))
  default = {
    storage01 = {
      id          = 4030
      cidr        = "192.168.30.53/24"
      ceph_cidr   = "192.168.25.53/24"
      sockets     = 1
      cpulimit    = 4
      vcpus       = 4
      cores       = 8
      macaddr     = "68:b5:99:b3:da:1a"
      ceph_macaddr = "68:b5:99:b3:db:1a"
      memory      = 6*1024*1024*1024
      disk        = 30*1024*1024*1024
      disk_slot   = 0
      storage_disk= 50*1024*1024*1024
      storage_disk_slot   = 1
      target_node = "xcp-ng-01"
      storage_pool     = "ld2"
      storage_pool_disk_storage = "ld2"
      resource_pool_name = "Normal"
    },
    storage02 = {
      id          = 4031
      cidr        = "192.168.30.54/24"
      ceph_cidr   = "192.168.25.54/24"
      sockets     = 1
      cpulimit    = 4
      vcpus       = 4
      cores       = 8
      macaddr     = "68:b5:99:b3:da:1b"
      ceph_macaddr = "68:b5:99:b3:db:1b"
      memory      = 6*1024*1024*1024
      disk        = 30*1024*1024*1024
      disk_slot   = 0
      storage_disk= 50*1024*1024*1024
      storage_disk_slot   = 1
      target_node = "xcp-ng-01"
      storage_pool     = "ld2"
      storage_pool_disk_storage = "ld2"
      resource_pool_name = "Normal"
    },
    storage03 = {
      id          = 4032
      cidr        = "192.168.30.55/24"
      ceph_cidr   = "192.168.25.55/24"
      sockets     = 1
      cpulimit    = 4
      vcpus       = 4
      cores       = 8
      macaddr     = "68:b5:99:b3:da:1c"
      ceph_macaddr = "68:b5:99:b3:db:1c"
      memory      = 6*1024*1024*1024
      disk        = 30*1024*1024*1024
      disk_slot   = 0
      storage_disk= 50*1024*1024*1024
      storage_disk_slot   = 1
      target_node = "xcp-ng-01"
      storage_pool     = "ld2"
      storage_pool_disk_storage = "ld2"
      resource_pool_name = "Normal"
    },
  }
}
variable "workers" {
  type = map(map(string))
  default = {
    worker01 = {
      id          = 4020
      cidr        = "192.168.30.56/24"
      ceph_cidr   = "192.168.25.56/24"
      sockets     = 4
      cpulimit    = 4
      vcpus       = 20
      cores       = 8
      macaddr     = "68:b5:99:b3:da:0a"
      ceph_macaddr = "68:b5:99:b3:db:0a"
      memory      = 16*1024*1024*1024
      disk        = 60*1024*1024*1024
      disk_slot   = 0
      target_node = "xcp-ng-01"
      storage_pool     = "ld2"
      resource_pool_name = "Normal"
    },
    worker02 = {
      id          = 4021
      cidr        = "192.168.30.57/24"
      ceph_cidr   = "192.168.25.57/24"
      sockets     = 4
      cpulimit    = 4
      vcpus       = 20
      cores       = 8
      macaddr     = "68:b5:99:b3:da:0b"
      ceph_macaddr = "68:b5:99:b3:db:0b"
      memory      = 16*1024*1024*1024
      disk        = 60*1024*1024*1024
      disk_slot   = 0
      target_node = "xcp-ng-01"
      storage_pool     = "ld2"
      resource_pool_name = "Normal"
    },
    worker03 = {
      id          = 4022
      cidr        = "192.168.30.58/24"
      ceph_cidr   = "192.168.25.58/24"
      sockets     = 4
      cpulimit    = 4
      vcpus       = 20
      cores       = 8
      macaddr     = "68:b5:99:b3:da:0c"
      ceph_macaddr = "68:b5:99:b3:db:0c"
      memory      = 16*1024*1024*1024
      disk        = 60*1024*1024*1024
      disk_slot   = 0
      target_node = "xcp-ng-01"
      storage_pool= "ld2"
      resource_pool_name = "Normal"
    },
  }
}

