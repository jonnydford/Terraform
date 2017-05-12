# This will create a vSphere folder, and name all servers vmx-clientname-app1
variable "clientname" {
	default = "Barclays"
	}
	
# VMU IP Address
variable "vmuip" {
	default = "10.2.30.2"
	}
	
# Your emea admin account
variable "user" {
	default = "your.name-admin"
	}
	
# Your emea admin pass
variable "pass" {
	default = "your.password"
	}
	
# Your uat admin account
variable "uatuser" {
	default = "uatname"
	}
	
# Your uat admin pass
variable "uatpass" {
	default = "uatpassword"
	}

###########				^			  ###########
###########			  /   \			  ###########
###########				|			  ###########
###########				|			  ###########
###########				|			  ###########
###########				|			  ###########
###########   		Edit up here	  ###########
########### Only edit above this line ########### 

variable "vsphere_vcenter" {}
variable "vsphere_user" {}
variable "vsphere_password" {}

# Key for Server 2012 R2
variable "serverkey" {
    default = "HDTRP-NRGTW-H48W8-J2WDC-3YGPJ"
    }
    
# Resource Pool
variable "resourcepool" {
	default = "/London/vSphere_Cluster/Development"
	}

# Datastore
variable "datastore" {
	default = "/London/LDNESXVOL_CLUSTER_NIMBLE"
	}

# Disk Template
variable "disktemplate" {
	default = "/London/_Templates/Windows Templates/VMT-WIN2012R2-DEV-TMPL"
	}
	
# EMEA Domain
variable "emeadomain" {
	default = "emea.akqa.local"
	}
	
# UAT Domain
variable "uatdomain" {
	default = "uat.uk.akqa"
	}