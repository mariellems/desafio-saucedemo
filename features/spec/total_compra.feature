# language: pt

Funcionalidade: Valor total da compra de todos os produtos
  Como um cliente do site Sauce Demo
  Gostaria de poder logar no site
  Para poder comprar todos os produtos disponíveis

  Contexto:
    Dado que esteja na página inicial da Sauce Demo
    Quando informar o username 'standard_user'
      E informar o password 'secret_sauce'
      E clicar para efetuar login
    Então devo ser autenticado com sucesso

  @total_compra_produtos
  Cenário: Validar o valor total da compra de todos os produtos
    Quando adicionar todos os produtos ao carrinho
      E clicar no carrinho de produtos
      E clicar no botão de checkout
      E preencher as informações pessoais
    Então deve ser exibido o valor total da compra de acordo com os produtos adicionados
