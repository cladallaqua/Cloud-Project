# Building Ecommerce with Magento 
Group: Clarisse Dallaqua and Ana Beatriz

### **ANSIBLE PART**

*Step by Step:*
- Create a *playbooks/* directory_
- Ansible file *instalacao.yml*, this file contain all the steps that it was found in a cookbook to build and download the magento with composer, it was used task to run. Basicallyy we need the apache2, nginx, php, mysql for be able to run the composer.
- The command used to execute instalacao.yml is : 
```
ansible-playbook instalacao.yml
```
The hosts file is now at _/etc/ansible/hosts 

### **TERRAFORM PART**

*Step by Step:*
**Terraform file:**  _main.tf_ _variables.tf_
- The file *main.tf* is responsable to 'build' our server.
- The file *variables.tf* is responsable to declare our variables
- Create _variables.tfvars_, and put the name of your variables inside:
```
tok="tok_value"

org="org_value"
```
- To run the main file we need to use 3 commands:

```terraform init``` 

 ```terraform plan -var-file="variables.tfvars"```

 ```terraform apply -var-file="variables.tfvars"```

- After we run:
 ```terraform destroy -var-file="variables.tfvars"```

### **PACKER PART**
*Step by Step:*
