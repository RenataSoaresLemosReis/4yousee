*** Settings ***
Library   Selenium2Library

*** Variables ***
${URL}        https://qa3.4yousee.com.br/admin/index.php?ac=logout
${BROWSER}    chrome

*** keywords ***
### Setup e Teardown
Abrir navegador
   Open Browser   ${URL}   ${Browser}

Fechar navegador
   Close Browser

###Passo-a-Passo
Acessar a página Conteúdo do site
   Wait Until Element is Visible   //*[@id="nav-horizontal"]/div/div[2]/div[1]/img  15
   Title Should Be                 4YouSee Digital Signage
   Input Text                      //*[@id="nav-horizontal"]/div/div[2]/form/fieldset/div[1]/input   renataslr
   Input Text                      //*[@id="nav-horizontal"]/div/div[2]/form/fieldset/div[2]/input   kbXR8w6kw97L5N
   Click Element                   //*[@id="nav-horizontal"]/div/div[2]/form/fieldset/input
   Click Element                   xpath=/html/body/div[6]/div[3]/div/button[2]

Clicar no botão "+ Adicionar"
   Click Element                   //*[@id="add-content-link"] 

Preencher o campo nome
   Input Text                      //*[@id="descricaoIns"]     Teste 1

Preencher a duração de exibição
   Click Element                   //*[@id="aba-1"]/div/div/div[2]/div/label/input
   Click Element                   //*[@id="tempoRealMin"]/option[2]

#Selecionar o arquivo a ser exibido
   #Click Element                    //*[@id="aba-1"]/div/div/div[3]/div/button
   #SLEEP                            5
   # Press Keys                       None        C:\Users\renat\OneDrive\Documentos\RoboWeek-Wallpaper
  
Selecionar a categoria
   Click Element                    //*[@id="open-category-dialog-button"]
   Wait Until Element Is Visible    //*[@id="categories-dialog"]/div/div[1]/div/div[3]/dynatree/ul/li[1]/span/span[2]      15
   Click Element                    xpath=//*[@id="categories-dialog"]/div/div[1]/div/div[3]/dynatree/ul/li[1]/span/span[2]
   Click Element                    //*[@id="categories-dialog"]/div/div[3]/button[1]

Clicar em "Avançar"
   Click Element                    //*[@id="tabs"]/div[3]/tabs-nav-bar/div/button[2]

Preencher as datas de validade
   Click Element                    //*[@id="content-schedule-container"]/table/tbody/tr[3]/td/div/div/div[2]
   Click Element                    //*[@id="ui-datepicker-div"]/div/a[2]
   Click Element                    //*[@id="ui-datepicker-div"]/table/tbody/tr[2]/td[2]
   Click Element                    //*[@id="content-schedule-container"]/table/tbody/tr[3]/td/div/div/div[5]
   Click Element                    //*[@id="ui-datepicker-div"]/div/a[2]
   Click Element                    //*[@id="ui-datepicker-div"]/table/tbody/tr[2]/td[6]

Preencher as horas iniciais e finais
   Click Element                    //*[@id="content-schedule-container"]/table/tbody/tr[6]/td[1]/div
   Input Text                       //*[@id="content-schedule-container"]/table/tbody/tr[6]/td[1]/div/input       05:00
   Click Element                    //*[@id="content-schedule-container"]/table/tbody/tr[6]/td[2]/div
   Input Text                       //*[@id="content-schedule-container"]/table/tbody/tr[6]/td[2]/div/input       17:00

Selecionar os dias da semana
   Click Element                    //*[@id="content-schedule-container"]/table/tbody/tr[6]/td[5]/button

Clicar em "Adicionar"
   Click Element                    //*[@id="tabs"]/div[3]/input[2]

Preencher o campo "ID/Nome" com o dado "Teste 2"
   Click Element                    //*[@id="content-id-name"]
   Input Element                    //*[@id="for"]/div/div[1]/div[2]       Teste 2

Clicar em "Pesquisar"
   Click Element                    //*[@id="for"]/div/div[1]/div[2]/span/button[1]

Clicar no botão "Limpar Dados"
   Click Element                    //*[@id="for"]/div/div[1]/div[2]/span/button[2]

Preencher o campo "ID/Nome" com o dado "Teste 1"
   Click Element                    //*[@id="content-id-name"]
   Input Element                    //*[@id="for"]/div/div[1]/div[2]       Teste 1

Clicar no botão "Pesquisar"
   Click Element                    //*[@id="for"]/div/div[1]/div[2]/span/button[1]

Clicar no botão "Alterar" do conteúdo "Teste 1" listado no site
   Click Element                    //*[@id="managerContent"]/table/tbody/tr/td[2]/table[2]/tbody/tr[3]/td/div/table/tbody/tr[2]/td[5]/ul/li[1]

Alterar a duração para 1:30
   Click Element                    //*[@id="tempoRealIns"]
   Click Element                    //*[@id="tempoRealIns"]/option[31]

Clicar em "Alterar"
   Click Element                    //*[@id="tabs"]/div[3]/input[1]

Clicar no botão "Excluir" do conteúdo "Teste 1" listado no site
   Click Element                    //*[@id="managerContent"]/table/tbody/tr/td[2]/table[2]/tbody/tr[3]/td/div[2]/table/tbody/tr[2]/td[5]/ul/li[2]/a

#Clicar em "OK" na mensagem de confirmação





###Conferências
Conferir se o Conteúdo recém cadastrado foi listado no site
   Wait Until Element Is Visible    //*[@id="managerContent"]/table/tbody/tr/td[2]/table[2]/tbody/tr[3]/td/div[1]
   Wait Until Element Is Visible    //*[@id="managerContent"]/table/tbody/tr/td[2]/table[2]/tbody/tr[3]/td/div[2]  
   Wait Until Element Is Visible    //*[@id="managerContent"]/table/tbody/tr/td[2]/table[2]/tbody/tr[3]/td/div[3] 

Conferir mensagem "Nenhum registro encontrado"
   Wait Until Element Is Visible    //*[@id="managerContent"]/table/tbody/tr/td[2]/table[2]/tbody/tr[3]/td/div

Conferir se o conteúdo pesquisado foi listado no site
   Wait Until Element Is Visible    //*[@id="managerContent"]/table/tbody/tr/td[2]/table[2]/tbody/tr[3]/td/div

Conferir a mensagem "Registro alterado com sucesso"
   Wait Until Element Is Visible    //*[@id="managerContent"]/table/tbody/tr/td[2]/table[2]/tbody/tr[3]/td/div[1]

#Conferir a mensagem "Registro excluído com sucesso."
#   Wait Until Element Is Visible    //*[@id="managerContent"]/table/tbody/tr/td[2]/table[2]/tbody/tr[3]/td/div[1]

