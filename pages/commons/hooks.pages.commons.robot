*** Settings ***
Documentation       Setup e Teardown do projeto

Library         SeleniumLibrary
Resource        ../../config/config.robot


*** Keywords ***
Iniciando o teste '${BROWSER}'
    Open Browser                    ${URL_HOST}           ${BROWSER}         
    Maximize Browser Window
    Set Selenium Implicit Wait      ${TIME_TO_WAIT}
    Capture Page Screenshot
    
Finalizando o teste
    Capture Page Screenshot
    Close Browser
