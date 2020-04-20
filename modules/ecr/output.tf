output "repository_url" {
  value = "${aws_ecr_repository.ecr.repository_url}"
}

output "repo_name" {
  value = "${aws_ecr_repository.ecr.name}"
}

output "repo_arn" {
  value = "${aws_ecr_repository.ecr.arn}"
}

output "repo_registry_id" {
  value = "${aws_ecr_repository.ecr.registry_id}"
}