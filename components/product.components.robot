*** Settings ***
Documentation       Componentes da página do produto
Resource            ../config/page_register.config.robot

*** Variable ***
${ValidaPreco}                 xpath://*[@id="our_price_display"][contains(text(),"${PRECO_UNIDADE}")]
${ValidaDescricao}             xpath://*[@id="center_column"]//h1[contains(text(),"${DESCRICAO}")]
${BotaoAdicionar}              css:button[name=Submit]