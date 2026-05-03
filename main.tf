terraform {
  required_version = "1.0.0" 

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.0.0" 
    }
  }
}

provider "aws" {
  region     = "us-east-1"
  access_key = "test"
  secret_key = "test"
  
  # Se saltan las verificaciones de seguridad por no tratarse de AWS real.
  skip_credentials_validation = true
  skip_metadata_api_check     = true
  skip_requesting_account_id  = true
  s3_use_path_style           = true

  # Redirige S3 al puerto 4566.
  endpoints {
    s3 = "http://localhost:4566"
  }
}

# Se borra Creación del bucket S3 y se sustituye por Llamar al modulo
  module "bucket_desplegado" {
    source = "./modules/mi-recurso"
}

# Output para saber el nombr del bucket
output "bucket_name" {
  value       = module.bucket_desplegado
  description = "El nombre del bucket desplegado desde el módulo"
}
