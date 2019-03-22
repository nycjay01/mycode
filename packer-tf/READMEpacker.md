build a instance from a packer image
*You will need packer and terraform installed

1- after packer is installed (verify with packer --version) 
2- validate packer.json file
    packer validate packertest.json

3- build the image 
   packer build \
   -var 'aws_access_key=YOUR ACCESS KEY' \
   -var 'aws_secret_key=YOUR SECRET KEY' \
   packertest.json

4- after image completes run the packer.tf add the ami number created from the step above and add it to the packer.tf file (should be ami-00000000000000000) after modifying the packer.tf file run the tf apply:
   terraform init (in the directory you have your tf files in *requires terraform installed)
   terraform plan  (incase you want to see the plan)
   terraform apply
   yes (type yes to deploy no do abort)
