output "vpc_id" {
  description = "The ID of the windows instance"
  value       = aws_vpc.maincli
}

output "jon_linux_id" {
  description = "The ID of the linux EC2 instance"
  value       = aws_instance.jon_linux_box_cli.id
}

output "jon_windows_id" {
  description = "The ID of the windows instance"
  value       = aws_instance.jon_windows_box_cli.id
}