/*Copyright © 2018, Oracle and/or its affiliates. All rights reserved.

The Universal Permissive License (UPL), Version 1.0*/


variable "tenancy_ocid" {}

variable "region" {}

variable "compartment_ocid" {}

variable "AD" {
    description = "Availability domain number"
    type        = "list"
    default     = ["1"]
}


#variable AD = ["\"${substr(var.availability_domain,-1,1)}\"","\"${substr(var.availability_domain1,-1,1)}\""]


    

#variable "user_ocid" {}

#variable "fingerprint" {}

#variable "private_key_path" {}

variable "ssh_public_key" {
    description = "SSH public key for instances"
}

variable "ssh_private_key" {
    description = "SSH private key for instances"
}  
/*
variable "bastion_ssh_public_key" {
    description = "SSH public key for bastion instance"
}

variable "bastion_ssh_private_key" {
    description = "SSH private key for bastion_instance"
}  
*/
variable "InstanceOS" {
    description = "Operating system for compute instances"
    default = "Oracle Linux" 
}

variable "linux_os_version" {
    description = "Operating system version for compute instances except NAT"
    default = "7"
}

# VCN variables
variable "vcn_cidr" {
    description = "CIDR for Virtual Cloud Network (VCN)"
}
variable "vcn_dns_label" {
    description = "DNS label for Virtual Cloud Network (VCN)"
}

# Bastion host variables
variable "bastion_instance_shape" {
    description = "Instance shape of bastion host"
    default = "VM.Standard2.1"
}

# Application Server variables
variable "ebs_env_prefix" {
}

variable "ebs_app_instance_count" {
    description = "Application Server count"
}

variable "ebs_app_instance_shape" {
    description = "Application Instance shape"
}

variable "ebs_app_instance_listen_port" {
    description = "Application instance listen port"
}

variable "ebs_shared_filesystem_mount_path" {
    description = "Mountpoint for primary application servers"
}

variable "ebs_shared_filesystem_size_limit_in_gb" {
    description = "Mountpoint for primary application servers"
    default = "500"
}

variable "ebs_app_boot_volume_size_in_gb" {
    description = "Boot volume size of application servers"
}

variable "ebs_app_block_volume_size_in_gb" {
    description = "Block volume size of application servers"
}

variable "ebs_app_block_volume_vpus_per_gb" {
    description = "Block volume VPUs"
}


variable "ebs_app_block_volume_mount_path" {
    description = "Block Volume Mountpoint for primary application servers"
}

variable "timezone" {
    description = "Set timezone for servers"
}

# Database variables

variable "ebs_database_required" {
    description = "DB Edition"
    default = "true"
}

variable "db_edition" {
    description = "DB Edition"
    default = "ENTERPRISE_EDITION_EXTREME_PERFORMANCE"
}

variable "db_instance_shape" {
    description = "DB Instance shape"
    default = "VM.Standard2.2"
}

variable "db_node_count" {
    description = "Number of DB Nodes"
    default = "2"
}

variable "db_size_in_gb" {
    description = "Size of database in GB"
    default = "256"
}

variable "db_license_model" {
    description = "Database License model"
    default = "LICENSE_INCLUDED"
}

variable "db_admin_password" {
    description = "Database Admin password"
    default = "beStrong_#1"
}

variable "db_name" {
    description = "Database Name"
    default = "EBSCDB"
}

variable "db_characterset" {
    description = "Database Characterset"
    default = "AL32UTF8"
}

variable "db_nls_characterset" {
    description = "Database National Characterset"
    default = "AL16UTF16"
}

variable "db_version" {
    description = "Database version"
    default = "12.1.0.2"  
}

variable "db_pdb_name" {
    description = "Pluggable database Name" 
    default = "EBSDB"   
}
/*
variable db_admin_password_encrypted {
    description = "Whether private Load balancer"
}
*/

/*
variable use_vault_encrypted_password {
    description = "Whether private Load balancer"
    default = "false"
}

variable vault_crypto_endpoint {
    description = "Whether private Load balancer"
    default = "https://bbpivt7caaeuk-crypto.kms.us-ashburn-1.oraclecloud.com"
}

variable vault_key_id {
    description = "Whether private Load balancer"
    default = "ocid1.key.oc1.iad.bbpivt7caaeuk.abuwcljt55oxfgu7hyamnkfw2qok74v7dmgd3bovddhke5ckahloyffzf7ua"
}
*/
variable "database_autobackup_recovery_window" {
    description = "Database License model"
    default = "30"
}

variable "database_autobackup_enabled" {
    description = "Enable database Autobackup"
    default = true
}

variable load_balancer_shape {
    description = "Load Balancer shape"
}

variable load_balancer_private {
    description = "Whether private Load balancer"
    default = true
}

variable load_balancer_hostname {
    description = "Load Balancer hostname"
}

variable load_balancer_listen_port {
    description = "Load balancer listen port"
}

variable "timeout" {
  description = "Timeout setting for resource creation"
  default     = "10m"
}

variable "compute_instance_user" {
  description = "Login user for application instance"
  default = "opc"
}

variable "bastion_user" {
  description = "Login user for bastion host"
  default = "opc"
}


variable "image_id" {
  type = "map"

  default = {
    // See https://docs.cloud.oracle.com/iaas/images/
    // Oracle-provided image "Oracle-Linux-7.7-2019.11.12-0"
    // https://docs.cloud.oracle.com/iaas/images/image/501c6e22-4dc6-4e99-b045-cae47aae343f/

    ap-melbourne-1-ol7	    =   "ocid1.image.oc1.ap-melbourne-1.aaaaaaaakh4vq4fswqw7ftjiix7qbdzdrvhyq44upcgm66nbfcefg6miwosa"
    ap-mumbai-1-ol7	        =   "ocid1.image.oc1.ap-mumbai-1.aaaaaaaa6rvxc6vju5grxdydrbhzou7ayukiljhog75o222rxsunoi3p6zxq"
    ap-osaka-1-ol7	        =   "ocid1.image.oc1.ap-osaka-1.aaaaaaaa23apvyouh3fuiw7aqjo574zsmgdwtetato6uxgu7tct7y4uaqila"
    ap-seoul-1-ol7	        =   "ocid1.image.oc1.ap-seoul-1.aaaaaaaautl44ij44xudvnu3boasvuvucowuz4avdigc2csahzqmtb37sfwa"
    ap-sydney-1-ol7	        =   "ocid1.image.oc1.ap-sydney-1.aaaaaaaaalaybaovkxlwr3etmvyavmec6uftnluicausjety3fmbr5geapcq"
    ap-tokyo-1-ol7	        =   "ocid1.image.oc1.ap-tokyo-1.aaaaaaaa3i5j5ackcuimnjh7ns3xjwedwq7r6ejgu7eikwaqd6m3sqbjgrqq"
    ca-montreal-1-ol7       =   "ocid1.image.oc1.ca-montreal-1.aaaaaaaaqswshvu66v5u236nb5kyvtdyrnjjciyeu4smx6xzgr33dcdn3zzq"
    ca-toronto-1-ol7	    =   "ocid1.image.oc1.ca-toronto-1.aaaaaaaa6onp4oo4n2plt7pxbdskjsuoinny6ust237mn5oeofp3pi474xza"
    eu-amsterdam-1-ol7	    =   "ocid1.image.oc1.eu-amsterdam-1.aaaaaaaashhgpi4jrjvogh2ditlujvspzujci2giy7ju5bndneh4hlcrfjwa"
    eu-frankfurt-1-ol7	    =   "ocid1.image.oc1.eu-frankfurt-1.aaaaaaaadvi77prh3vjijhwe5xbd6kjg3n5ndxjcpod6om6qaiqeu3csof7a"
    eu-zurich-1-ol7	        =   "ocid1.image.oc1.eu-zurich-1.aaaaaaaa4ltjbbkhdrcrnefzwts43ryjvka7clmubvndhcie633d4gyezflq"
    me-jeddah-1-ol7	        =   "ocid1.image.oc1.me-jeddah-1.aaaaaaaabs62ebfqfdjnvk25jxhkvss3bluwjay24mfvmqqtduz4ctbvjcva"
    sa-saopaulo-1-ol7	    =   "ocid1.image.oc1.sa-saopaulo-1.aaaaaaaaq6usivsg6wduije3aptwfoxvqfqfrpxq34isfssjmy676p2dduda"
    uk-gov-london-1-ol7	    =   "ocid1.image.oc4.uk-gov-london-1.aaaaaaaazjplti3mj44tdkpvcugi5dbjfdz6eqh3tobc3wsrdg5wprxom3sa"
    uk-london-1-ol7	        =   "ocid1.image.oc1.uk-london-1.aaaaaaaaw5gvriwzjhzt2tnylrfnpanz5ndztyrv3zpwhlzxdbkqsjfkwxaq"
    us-ashburn-1-ol7	    =   "ocid1.image.oc1.iad.aaaaaaaa6tp7lhyrcokdtf7vrbmxyp2pctgg4uxvt4jz4vc47qoc2ec4anha"
    us-langley-1-ol7	    =   "ocid1.image.oc2.us-langley-1.aaaaaaaanpy5qap45zeroc7u5unxcn6cbkea5bymx4ubbqmk4psqqe27moeq"
    us-luke-1-ol7	        =   "ocid1.image.oc2.us-luke-1.aaaaaaaahy2n6lnu4lwmllfqphpj32uk6vyo5x2pbv2n4zfzttqjmjb54lbq"
    us-phoenix-1-ol7	    =   "ocid1.image.oc1.phx.aaaaaaaa6hooptnlbfwr5lwemqjbu3uqidntrlhnt45yihfj222zahe7p3wq"


    ap-melbourne-1-ol6	    =   "ocid1.image.oc1.ap-melbourne-1.aaaaaaaapcihwzpsxkirrbdcx26unblbwhkk4towpisljf6vimajzbti6znq"
    ap-mumbai-1-ol6	        =   "ocid1.image.oc1.ap-mumbai-1.aaaaaaaaj5z3kn5c4643cib4b3aapy6gwvdr6bqnatnwlqruinfhaddvtvma"
    ap-osaka-1-ol6	        =   "ocid1.image.oc1.ap-osaka-1.aaaaaaaauj3jtwydvkglgv5s7joj6s7rm3fy5vbqa6pptedjkbbzq6ncfica"
    ap-seoul-1-ol6	        =   "ocid1.image.oc1.ap-seoul-1.aaaaaaaagmudhy442ikm7egis6ad26asbaptjxvmvzchghpqcjszn5qh6yva"
    ap-sydney-1-ol6	        =   "ocid1.image.oc1.ap-sydney-1.aaaaaaaakxxwg52ac2ch7xuxklwizaqeoxgviwnkgcgvahjfuaitvxoqidqq"
    ap-tokyo-1-ol6	        =   "ocid1.image.oc1.ap-tokyo-1.aaaaaaaab4g7wltk4f6ufpcfkzo7j243ntza2qfh2x27a2lttgkqwfadxhna"
    ca-montreal-1-ol6       =   "ocid1.image.oc1.ca-montreal-1.aaaaaaaa26rhjotfuyb3zanx5exn6c4rqmlvzfokvif5howhj3wjvgkmlx2a"
    ca-toronto-1-ol6	    =   "ocid1.image.oc1.ca-toronto-1.aaaaaaaaiho3imwi356aeblt4o5asckrxftkgdu2dgxn5e2ywwkb3sk3ubsa"
    eu-amsterdam-1-ol6	    =   "ocid1.image.oc1.eu-amsterdam-1.aaaaaaaa372dv4wfixhjtkxaz254n4z3zu2exbauxcer7umn6readtqqbb3q"
    eu-frankfurt-1-ol6	    =   "ocid1.image.oc1.eu-frankfurt-1.aaaaaaaazwpp63qrhntpz3cz2sb4rmxcss4naaiihhrshezbmnj2lufhvjzq"
    eu-zurich-1-ol6	        =   "ocid1.image.oc1.eu-zurich-1.aaaaaaaafiwmzjvbb7af4okvfgujjitkxhmt5sjm45rfjacy7p7lc7d6z2aa"
    me-jeddah-1-ol6	        =   "ocid1.image.oc1.me-jeddah-1.aaaaaaaaszhpaie4dn5zw5ddixuprt4ynui6aiw2hupfsjetggqvolfq6rha"
    sa-saopaulo-1-ol6	    =   "ocid1.image.oc1.sa-saopaulo-1.aaaaaaaa54oteq6w2nnlmmsctyv27n3ibpvvyo4vgaytx3yomd45j7dh4pvq"
    uk-gov-london-1-ol6	    =   "ocid1.image.oc4.uk-gov-london-1.aaaaaaaa464matikmirksgav5tpwy4l7z33355i3qxyhwwbcsyexxvljckua"
    uk-london-1-ol6	        =   "ocid1.image.oc1.uk-london-1.aaaaaaaadcytr5adrh6spe5qq4gdkiits6ufwrjtmxxfu6442xofijki6aba"
    us-ashburn-1-ol6	    =   "ocid1.image.oc1.iad.aaaaaaaaml6fqfepg3klyfzfvqo3k335obf2ox2pqbkihslf3juy6dunijha"
    us-langley-1-ol6	    =   "ocid1.image.oc2.us-langley-1.aaaaaaaaj6mqmjtpr2twjazlutuialj6wrweh6o2pmargczndjjenazpyyaq"
    us-luke-1-ol6	        =   "ocid1.image.oc2.us-luke-1.aaaaaaaabbpruwgi3csjqugbowf5yglidhhwwx2p4n2qlk3nlvjhjqx2wgaq"
    us-phoenix-1-ol6	    =   "ocid1.image.oc1.phx.aaaaaaaah5vvx57lqbe2sqhlz7x3g3s5kqpoqn5ge2tvjmxwnmslsjvnfosq"

 
 
 
  }
}
