Quando('adicionar todos os produtos ao carrinho') do
    @total_compra_page.adicionar_mochila
    @total_compra_page.adicionar_acessorio_bicicleta
    @total_compra_page.adicionar_camiseta
    @total_compra_page.adicionar_jaqueta
    @total_compra_page.adicionar_body_bebe
    @total_compra_page.adicionar_shirt
  end
  
Então('deve ser exibido o valor total da compra de acordo com os produtos adicionados') do
    expect(page).to have_content 'Item total: $129.94'
    expect(page).to have_content 'Tax: $10.40'
    expect(page).to have_content 'Total: $140.34'
  end
  