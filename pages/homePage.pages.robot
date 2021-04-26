*** Settings ***
Documentation       Acesso a home page e busca por produto específico
Resource            ../components/homePage.components.robot


*** Keywords ***
Dado que estamos na Home Page do site fazendo uma busca por '${DESCRICAO}'
    Realiza busca '${DESCRICAO}'

Dado que estamos na Home Page do site fazendo uma busca por produto inexstente '${DESCRICAO_INEXISTENTE}'
    Click Element       ${LogoSite}
    Realiza busca '${DESCRICAO_INEXISTENTE}'


#### Keyword com o teste, utilizando apenas passagem de parametro para o campo descrição
Realiza busca '${NOME}'
    Wait Until Element Is Visible       ${LogoSite}         timeout=${TIME_TO_WAIT}
    Title Should Be                     ${TituloHomePage}
    Input Text                          ${CampoBusca}       ${NOME}
    Click Button                        ${BotaoBusca}
