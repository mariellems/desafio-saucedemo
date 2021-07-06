module Pages
    class TotalCompraPage < SitePrism::Page

    element  :add_mochila, '#add-to-cart-sauce-labs-backpack'
    element  :add_acessorio_bicicleta, '#add-to-cart-sauce-labs-bike-light'
    element  :add_camiseta, '#add-to-cart-sauce-labs-bolt-t-shirt'
    element  :add_jaqueta, '#add-to-cart-sauce-labs-fleece-jacket'
    element  :add_body_bebe, '#add-to-cart-sauce-labs-onesie'
    element  :add_shirt, '.btn[data-test="add-to-cart-test.allthethings()-t-shirt-(red)"]'

    def adicionar_mochila
        add_mochila.click
    end

    def adicionar_acessorio_bicicleta
        add_acessorio_bicicleta.click
    end

    def adicionar_camiseta
        add_camiseta.click
    end

    def adicionar_jaqueta
        add_jaqueta.click
    end

    def adicionar_body_bebe
        add_body_bebe.click
    end

    def adicionar_shirt
        add_shirt.click
    end
    
  end
end