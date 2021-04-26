*** Settings ***
Documentation       Componentes da página do carrinho de compra
Resource            ../config/page_register.config.robot


*** Variable ***
${TituloCarrinho}               id:cart_title
${ValidaProduto}                xpath://*[@id="product_1_1_0_0"]//img[@src="http://automationpractice.com/img/p/1/1-small_default.jpg"]
${ValidaDescricaoCar}           xpath://*[@id="product_1_1_0_0"]//a[contains(text(),"${DESCRICAO}")]
${ValidaPrecoUnid}              xpath://*[@id="product_price_1_1_0"]/span[contains(text(),"${PRECO_UNIDADE}")]
${ValidaPrecoEnvio}             xpath://*[@id="total_shipping"][contains(text(),"${PRECO_ENVIO}")]
${ValidaPrecoTotal}             xpath://*[@id="total_price"][contains(text(),"${PRECO_TOTAL}")]
