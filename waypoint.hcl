project = "irvnet-py-proj"

app "irvnet-py" {
  labels = {
    "service" = "py-svc",
    "env"     = "dev"
  }


  build {

    use "pack" {}

    registry {
      use "docker" {
        image = "irvnet/hello-python"
        tag   = "v001"
      }
    }
  }



  deploy { 
    use "docker" {
        service_port = 5000
    }
  }


#  deploy {
#    use "kubernetes" {
#      probe_path = "/"
#    }
#  }

#release {
#    use "kubernetes" {
#      namespace = "default"
#      probe_path = "/"
#      service_port = 5000
#    }
#  }

}
