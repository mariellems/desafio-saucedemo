Dado("que esteja na página inicial da Sauce Demo") do
    @login_page.load
end

Quando("informar o username {string}") do |username|
    @login_page.informar_username(username)
end
  
Quando("informar o password {string}") do |password|
    @login_page.informar_password(password)
end
  
Quando("clicar para efetuar login") do
    @login_page.botao_login
end
  
Então("devo ser autenticado com sucesso") do
    @login_page.img_initial_page
end

Então("devo ser impedido de efetuar login") do
    expect(@login_page.alert_message_authentication_failed).to have_content 'Epic sadface: Username and password do not match any user in this service'
end