*** Settings ***
Documentation       Componentes da página de busca
Resource            ../config/page_register.config.robot

*** Variable ***
${TituloSearch}                xpath=//*[@id="center_column"]/h1
${ValidaImagemProduto}         xpath://*[@id="center_column"]//*[@src="http://automationpractice.com/img/p/1/1-home_default.jpg"]
${ValidaDescricaoProduto}      xpath://*[@id="center_column"]//a[contains(text(),"${DESCRICAO}")]
${VisaoLista}                  xpath://*[@id="list"]//i[@class="icon-th-list"]
${BotaoMore}                   xpath://*[@id="center_column"]//a[@title="View"]

${ValidaProdutoInexistente}    xpath://*[@id="center_column"]//p[contains(text(),"${MSG_INEXISTENTE}")]