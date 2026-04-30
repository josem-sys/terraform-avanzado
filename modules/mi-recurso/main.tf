resource "aws_s3_bucket" "bucket_desde_modulo" {
 
  bucket = "bucket-tarea4-modulo"

  tags = {
    Origen = "ModuloTerraform"
  }
}
