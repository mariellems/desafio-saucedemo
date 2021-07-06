# language: pt

Funcionalidade: Login no Sauce Demo
  Como um cliente do site Sauce Demo
  Gostaria de poder logar no site
  Para poder realizar minhas compras

  Contexto:
    Dado que esteja na página inicial da Sauce Demo

  @realizar_login
  Cenário: Login com sucesso
    Quando informar o username 'standard_user'
      E informar o password 'secret_sauce'
      E clicar para efetuar login
    Então devo ser autenticado com sucesso

  @falha_login
  Cenário: Login com falha
    Quando informar o username 'testes'
      E informar o password '1234'
      E clicar para efetuar login
    Então devo ser impedido de efetuar login