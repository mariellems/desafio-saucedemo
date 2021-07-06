  Quando('adicionar uma mochila e um acessório para bicicleta ao carrinho de produtos') do
    @compra_completa_page.adicionar_mochila
    @compra_completa_page.adicionar_acessorio_bicicleta
  end
  
  Quando('clicar no carrinho de produtos') do
    @compra_completa_page.carrinho_compras
  end
  
  Quando('clicar no botão de checkout') do
    @compra_completa_page.botao_checkout
  end
  
  Quando('preencher as informações pessoais') do
    @compra_completa_page.informar_dados_pessoais
    @compra_completa_page.botao_continuar
  end
  
  Quando('finalizar a compra conferindo os dados') do
    @compra_completa_page.botao_finalizar
  end
  
  Então('a compra deve ser realizada com sucesso') do
    expect(page).to have_content 'THANK YOU FOR YOUR ORDER'
  end