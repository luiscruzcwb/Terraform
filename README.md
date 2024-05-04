## Terraform
  Projetos e estudos sobre Terraform.
   
![enter image description here](https://community.ops.io/images/kPkJMHU_OVH3f2mMZFaaiSSFMeewKiPzFM7L_hhuzEs/rs:fill:1000:420/g:sm/mb:500000/ar:1/aHR0cHM6Ly9jb21t/dW5pdHkub3BzLmlv/L3JlbW90ZWltYWdl/cy91cGxvYWRzL2Fy/dGljbGVzL2xwajdq/ZHlvcGs1d2U3ZzJy/NG42LnBuZw)

#### Anotações  

O **Terraform** é uma ferramenta de infraestrutura como código que permite definir e gerenciar recursos de infraestrutura por meio de arquivos de configuração legíveis por humanos. O Terraform permite que você use um fluxo de trabalho consistente durante o ciclo de vida da infraestrutura, independentemente do provedor de recursos. A infraestrutura como fluxo de trabalho de código permite gerenciar declarativamente uma variedade de serviços e automatizar suas alterações neles, reduzindo o risco de erro humano por meio de operações manuais.

#### O fluxo de trabalho principal do Terraform tem três etapas:

1.  **Write / Escrever** - Crie a infraestrutura como código.
2.  **Plan / Planejar** - Visualize as alterações antes de aplicar.
3.  **Apply / Aplicar** – Provisionar infraestrutura reproduzível.

#### Syntax

1.  **Blocks**
2.  **Arguments** 
3.  **Identifiers**
4.  **Comments** (# // /* and */)
5.  **Expressions** (Types and Values)
6.  **References**
7.  **Source Addresses** (Hostname / Namespace / Type)
8.  **Variable** 

#### Principais comandos

 - **terraform -help**

 - **terraform init** / **-upgrade**: Inicializa um diretório de trabalho do Terraform, baixando os plugins necessários e preparando o ambiente para uso.
 - **terraform fmt**: Formata os arquivos de configuração do Terraform para seguir um estilo de formatação padrão.
 - **terraform validate**: Verifica a sintaxe e a semântica dos arquivos de configuração do Terraform.
 - **terraform plan** / **-out**: Gera um plano de execução que descreve as alterações que o Terraform planeja realizar.
 - **terraform apply** / **--auto-approve**: Aplica as alterações definidas nos arquivos de configuração do Terraform ao ambiente de destino.
 - **terraform apply -var="instance_type=t2.small"**: Exemplo de uso da opção "-var", para alterações via CLI.  
 - **terraform show**: Mostra uma representação humanamente legível do estado atual do ambiente gerenciado pelo Terraform.
 - **terraform console**: Permite a interação interativa com a configuração do Terraform.
 - **terraform state list:** Lista todos os recursos gerenciados pelo Terraform no estado atual.
 - **terraform destroy**: Destroi todos os recursos gerenciados pelo Terraform no ambiente especificado.
 - **terraform output**: Mostra os valores de saída definidos em seus arquivos de configuração do Terraform.
 - **terraform login**: [HCP Terraform](https://developer.hashicorp.com/terraform/tutorials/cloud-get-started/cloud-sign-up)
 - **terraform get**: Baixa e instala os módulos necessários para o projeto.
 - **terraform graph**: Gera uma representação visual do relacionamento entre os recursos de infraestrutura definidos nos arquivos de configuração do Terraform.
 - **terraform import**: Importa um recurso existente para o estado do Terraform.
 - **terraform refresh**: Atualiza o estado do Terraform para refletir o estado atual da infraestrutura real.
 - **terraform taint**: Marca um recurso gerenciado pelo Terraform como "sujos" (tainted), forçando-o a ser destruído e recriado na próxima execução do terraform apply.
 - **terraform untaint**: Remove a marca "sujos" (tainted) de um recurso, permitindo que ele seja gerenciado normalmente pelo Terraform.
 - **terraform workspace**: Gerencia workspaces (espaços de trabalho) do Terraform, permitindo a criação de ambientes isolados para testes, desenvolvimento ou produção.
 - **terraform version**: Exibe a versão atual do Terraform instalada no sistema.

#### AWS - Solução de problemas

Se **terraform validate** foi bem-sucedido e sua aplicação ainda falhou, você pode encontrar um destes erros comuns:

- Se você usar uma região diferente, também precisará alterar seu ami, já que os IDs de AMI são específicos da região. 

- Se você não tiver uma VPC padrão em sua conta da AWS na região correta, navegue até o AWS VPC Dashboard na web, crie uma nova VPC em sua região e associe uma sub-rede e um grupo de segurança a essa VPC. Em seguida, adicione os argumentos ID do grupo de segurança ( vpc_security_group_ids) e ID da sub-rede (subnet_id) ao seu aws_instance recurso e substitua os valores pelos do seu novo grupo de segurança e sub-rede.

#### GCP - Solução de problemas

O Terraform precisa se autenticar no Google Cloud para criar infraestrutura.

Em seu terminal, use a **gcloud CLI** para configurar suas credenciais padrão do aplicativo .

```sh 
gcloud auth application-default login
```

> Credentials saved to file: [/home/"username"/.config/gcloud/application_default_credentials.json]

#### Links

[Terraform CLI](https://developer.hashicorp.com/terraform/cli)

[Terraform Registry](https://registry.terraform.io/)

[Provider Requirements](https://developer.hashicorp.com/terraform/language/providers/requirements)

[The Core Terraform Workflow](https://developer.hashicorp.com/terraform/intro/v1.1.x/core-workflow)

[O que é HCP Terraform - introdução e inscrição](https://developer.hashicorp.com/terraform/tutorials/cloud-get-started/cloud-sign-up)
