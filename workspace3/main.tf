resource "random_id" "whatever" {
  keepers = {
    uuid = uuid()
  }

  byte_length = 10
}

output "random" {
  value = "workspace 3: ${random_id.whatever.hex}"
}
