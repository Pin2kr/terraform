resource "local_file" "devOps" {
         filename = "/home/ubuntu/terraform_day01/terraform-local/devOps_file.txt"
         content = "I want to become a devops engineer who knows terraform"     

}



resource "random_string" "random-str" {
         length = 16
         special = true
         upper = true 
         lower = true 
         numeric = true 


}


output "random-str" {

value = random_string.random-str[*].result

}
