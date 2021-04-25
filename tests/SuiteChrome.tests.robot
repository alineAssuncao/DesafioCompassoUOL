*** Settings ***
Resource            ./fluxo.tests.robot

Test Setup          Iniciando o teste '${Browser_C}'
Test Teardown       Finalizando o teste

*** Test Case ***
Execução dos cenários de testes no Chrome
    Cenário 1: Adicionar um produto no carrinho de compra com sucesso
    Cenário 2: Busca por produto inexistente