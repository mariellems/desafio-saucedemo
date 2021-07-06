module Pages
    class CompraCompletaPage < SitePrism::Page

    element  :add_mochila, '#add-to-cart-sauce-labs-backpack'
    element  :add_acessorio_bicicleta, '#add-to-cart-sauce-labs-bike-light'
    element  :btn_carrinho_compras, '.shopping_cart_link'
    element  :btn_checkout, '#checkout'
    element  :input_nome, '#first-name'
    element  :input_sobrenome, '#last-name'
    element  :input_codigo_postal, '#postal-code'
    element  :btn_continuar, '#continue'
    element  :btn_finalizar, '#finish'    

    def adicionar_mochila
        add_mochila.click
    end

    def adicionar_acessorio_bicicleta
        add_acessorio_bicicleta.click
    end

    def carrinho_compras
        btn_carrinho_compras.click
    end

    def botao_checkout
        btn_checkout.click
    end

    def informar_dados_pessoais
        input_nome.set('Testes')
        input_sobrenome.set('Testes Sobrenome')
        input_codigo_postal.set('88800000')
    end

    def botao_continuar
        btn_continuar.click
    end

    def botao_finalizar
        btn_finalizar.click
    end
  end
end