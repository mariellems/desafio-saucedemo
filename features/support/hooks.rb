Before do
  @compra_completa_page = Pages::CompraCompletaPage.new
  @login_page = Pages::LoginPage.new
  @total_compra_page = Pages::TotalCompraPage.new
end

Before do
  page.driver.browser.manage.window.maximize
end

AfterStep do
  screenshot = "reports/screenshot#{Time.now.to_i.to_s}.png"
  page.save_screenshot(screenshot)
  attach(screenshot, 'image/png')
end