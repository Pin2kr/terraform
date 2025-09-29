resource "local_file" "devops" {
       filename = var.file_list[0]
       content = var.file_contents["content1"]

}


resource "local_file" "devops-var" {
      filename = var.file_list[1]
      content = var.file_contents["content2"]

}


output "devops_variable_output" {
       value = var.devops_engineer

}

output "ec2_info" {
  value = var.aws_ec2_object

}
