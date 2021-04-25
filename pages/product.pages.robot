*** Settings ***
Documentation       Validaçã do produto e adição no carrinhop de compra
Resource            ../components/product.components.robot

*** Keywords ***
Valida a página do produto quanto ao preço da unidade e a descrição
    Wait Until Element Is Visible       ${BotaoAdicionar}         timeout=${TIME_TO_WAIT}
    Page Should Contain Element         ${ValidaPreco}
    Page Should Contain Element         ${ValidaDescricao}
    Capture Page Screenshot
    Click Element                       ${BotaoAdicionar}