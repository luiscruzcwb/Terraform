## Terraform
  Projetos e estudos sobre Terraform. 
![enter image description here](https://community.ops.io/images/kPkJMHU_OVH3f2mMZFaaiSSFMeewKiPzFM7L_hhuzEs/rs:fill:1000:420/g:sm/mb:500000/ar:1/aHR0cHM6Ly9jb21t/dW5pdHkub3BzLmlv/L3JlbW90ZWltYWdl/cy91cGxvYWRzL2Fy/dGljbGVzL2xwajdq/ZHlvcGs1d2U3ZzJy/NG42LnBuZw)

#### Anotações  

O **Terraform** é uma ferramenta de infraestrutura como código que permite definir e gerenciar recursos de infraestrutura por meio de arquivos de configuração legíveis por humanos. O Terraform permite que você use um fluxo de trabalho consistente durante o ciclo de vida da infraestrutura, independentemente do provedor de recursos. A infraestrutura como fluxo de trabalho de código permite gerenciar declarativamente uma variedade de serviços e automatizar suas alterações neles, reduzindo o risco de erro humano por meio de operações manuais.

#### Principais comandos 

 - terraform init  
 - terraform fmt 
 - terraform validate 
 - terraform plan
 - terraform apply / --auto-approve
 - terraform show
 - terraform state list
 - terraform destroy
 - terraform output
 - terraform login [HCP Terraform](https://developer.hashicorp.com/terraform/tutorials/cloud-get-started/cloud-sign-up)


O fluxo de trabalho principal do Terraform tem três etapas:

1.  **Write** - Crie a infraestrutura como código.
2.  **Plan** - Visualize as alterações antes de aplicar.
3.  **Apply** – Provisionar infraestrutura reproduzível.

#### Links

[Provider Requirements](https://developer.hashicorp.com/terraform/language/providers/requirements)

#### Solução de problemas - AWS

Se **terraform validate** foi bem-sucedido e sua aplicação ainda falhou, você pode encontrar um destes erros comuns:

- Se você usar uma região diferente, também precisará alterar seu ami, já que os IDs de AMI são específicos da região. 

- Se você não tiver uma VPC padrão em sua conta da AWS na região correta, navegue até o AWS VPC Dashboard na web, crie uma nova VPC em sua região e associe uma sub-rede e um grupo de segurança a essa VPC. Em seguida, adicione os argumentos ID do grupo de segurança ( vpc_security_group_ids) e ID da sub-rede (subnet_id) ao seu aws_instance recurso e substitua os valores pelos do seu novo grupo de segurança e sub-rede.

#### Solução de problemas - GCP

