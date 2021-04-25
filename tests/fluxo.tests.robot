*** Settings ***
Documentation       Suite para execução dos testes

Resource            ../pages/commons/hooks.pages.commons.robot
Resource            ../config/page_register.config.robot


*** Keywords ***
Cenário 1: Adicionar um produto no carrinho de compra com sucesso
    Dado que estamos na Home Page do site fazendo uma busca por '${DESCRICAO}'
    Valida o resultado da busca com sucesso 
    Valida a página do produto quanto ao preço da unidade e a descrição
    Quando Adiciona o item no carrinho de compra
    Então valida o carrinho de compra quanto aos seguintes dados: descrição, preço por unidade, preço do envio e preço total

Cenário 2: Busca por produto inexistente
    Dado que estamos na Home Page do site fazendo uma busca por produto inexstente '${DESCRICAO_INEXISTENTE}'
    Valida o resultado da busca com '${MSG_INEXISTENTE}'