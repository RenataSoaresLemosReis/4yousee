*** Settings ***
Resource         resources/Resource.robot
Test Setup       Abrir navegador
Test Teardown    Fechar navegador


### SETUP roda keyword antes de uma suite ou antes de um Teste
### TEARDOWN roda keyword depois de uma suite ou depois de um teste

*** Test Case ***

Caso de Teste 01: Adicionar Conteúdo
   Acessar a página Conteúdo do site
   Clicar no botão "+ Adicionar"
   Preencher o campo nome
   Preencher a duração de exibição
   Selecionar o arquivo a ser exibido
   Selecionar a categoria
   Clicar em "Avançar"
   Preencher as datas de validade
   Preencher as horas iniciais e finais
   Selecionar os dias da semana
   Clicar em "Adicionar"
   Conferir se o Conteúdo recém cadastrado foi listado no site

#Caso de Teste 02: Listar conteúdo não cadasatrado
#   Acessar a página Conteúdo do site
#   Preencher o campo "ID/Nome" com o dado "Teste 2"
    Clicar em "Pesquisar"
    Conferir mensagem "Nenhum registro encontrado"

#Caso de Teste 03: Listar conteúdo cadastrado
#   Acessar a página Conteúdo do site
#   Clicar no botão "Limpar Dados"
    Preencher o campo "ID/Nome" com o dado "Teste 1"
    Clicar no botão "Pesquisar"
    Conferir se o conteúdo pesquisado foi listado no site

#Caso de Teste 04: Edição de conteúdo
#    Acessar a página home do site
     Clicar no botão "Alterar" do conteúdo "Teste 1" listado no site
     Alterar a duração para 1:30
     Clicar em "Alterar"
     Conferir a mensagem "Registro alterado com sucesso"

#Caso de Teste 05: Remover Produtos
#   Acessar a página Conteúdo do site
    Clicar no botão "Excluir" do conteúdo "Teste 1" listado no site
    Clicar em "OK" na mensagem de confirmação
    Conferir a mensagem "Registro excluído com sucesso."

