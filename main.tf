module "jx" {
  source  = "jenkins-x/jx/google"
  version = "1.8.0"
  gcp_project = "jenkinsx-303521"
  cluster_name = "jenkinsx-project"
}

terraform{
  backend "gcs"{
    bucket= "jenkinx-project"
    prefix = "terraform/state"
  }
}

output "jx_requirements" {
  value = module.jx.jx_requirements
}
