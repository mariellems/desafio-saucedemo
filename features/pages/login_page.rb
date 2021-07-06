module Pages
  class LoginPage < SitePrism::Page

    element  :input_login_username, '#user-name'
    element  :input_login_password, '#password'
    element  :btn_sign_in, '#login-button'
    element  :alert_message_authentication_failed, '.error-message-container.error'
    element  :img_initial_page, '.peek'

    def load
      visit '/'
    end

    def informar_username(username)
      input_login_username.set(username)
    end

    def informar_password(password)
      input_login_password.set(password)
    end

    def botao_login
      btn_sign_in.click
    end
  end
end
