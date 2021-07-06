# language: pt

Funcionalidade: Compra completa com mais de um produto
  Como um cliente do site Sauce Demo
  Gostaria de poder logar no site
  Para poder comprar mais de um produto

  Contexto:
    Dado que esteja na página inicial da Sauce Demo
    Quando informar o username 'standard_user'
      E informar o password 'secret_sauce'
      E clicar para efetuar login
    Então devo ser autenticado com sucesso

  @compra_produtos
  Cenário: Realizar compra com mais de um produto
    Quando adicionar uma mochila e um acessório para bicicleta ao carrinho de produtos
      E clicar no carrinho de produtos
      E clicar no botão de checkout
      E preencher as informações pessoais
      E finalizar a compra conferindo os dados
    Então a compra deve ser realizada com sucesso