# framedrop-sqs

Repositório responsável por gerenciar as filas (SQS) do projeto Framedrop.

## Visão geral

Este serviço centraliza a criação, configuração e integração das filas usadas pelos demais componentes do sistema.

## Pré-requisitos

- AWS CLI configurado
- Credenciais com acesso ao SQS
- Terraform instalado
- Bucket S3 para servir de backend do Terraform

## Uso

1. Configure as variáveis de ambiente necessárias.
2. Execute os comandos Terraform:
    - `terraform init`
    - `terraform plan`
    - `terraform apply --auto-approve`
3. Para destruir os recursos:
    - `terraform destroy`

## Repositórios relacionados:

- [framedrop-upload-api](https://github.com/daniel-dev-vs/framedrop-upload-api)
- [framedrop-infra](https://github.com/daniel-dev-vs/framedrop-infra)
- [frametrop-database](https://github.com/daniel-dev-vs/framedrop-database)
- [framedrop-apigateway](https://github.com/daniel-dev-vs/framedrop-apigateway)
