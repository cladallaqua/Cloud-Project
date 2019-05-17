# Building Ecommerce with Magento _
Group: Clarisse Dallaqua and Ana Beatriz_

### **ANSIBLE PART**

*Step by Step:*_
- Create a *playbooks/* directory_
- Ansible file *instalacao.yml*, this file contain all the steps that it was found in a cookbook to build and download the magento with composer, it was used task to run._
- The command used to execute instalacao.yml is :_ 
```
ansible-playbook instalacao.yml
```
The hosts file is now at _/etc/ansible/hosts_ 

### **TERRAFORM PART**

**Terraform file:**  _main.tf_ _variables.tf_
- create _variables.tfvars_, and put the name of your variables inside:
```
scw_token="x"

organization="x"
```
- Run 

```terraform init``` 

then ```terraform plan -var-file="variables.tfvars"```

then ```terraform apply -var-file="variables.tfvars"```

### **PACKER PART**

