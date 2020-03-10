Dado("que eu esteja na home") do
  @home_page = HomePage.new #visit 'http://automationpractice.com/index.php'
  @home_page.load 
  #expect(@home_page).to have_search #find(:xpath,'//*[@id="search_query_top"]')
end

Quando("eu digitar no campo search Printed Summer Dress") do
  @home_page.search.set 'Printed summer dress' #fill_in(@id="search_query_top",:with => 'Printed summer dress')
  @home_page.searchbtn.click #find(:xpath,'//*[@id="searchbox"]/button').click
end

Quando("clicar na primeira opcao") do
  @home_page.dress.click #find(:xpath,'//*[@id="center_column"]/ul/li[1]/div/div[1]/div/a[1]/img').click
end

Quando("escolher a cor black") do
  @home_page.color.click #find(:xpath,'//*[@id="color_11"]').click 
end

Quando("adicionar ao carrinho") do
  @home_page.cart.click #find(:xpath,'//*[@id="add_to_cart"]/button').click 
end

Quando("continuar comprando") do
  @home_page.continueshop.click #find(:xpath,'//*[@id="layer_cart"]/div[1]/div[2]/div[4]/span').click
end

Entao("deve voltar a pagina do produto") do
  expect(@home_page).to have_bigimg #find(:xpath,'//*[@id="bigpic"]')
  @home_page.logo.click #find(:xpath,'//*[@id="header_logo"]/a/img').click
end

Quando("clicar no botao contact us") do
  @home_page.contact.click #find(:xpath,'//*[@id="contact-link"]/a').click
end

Quando("preencher as informacoes") do
  @home_page.email.set 'ruivo@ruivo.com' #find(:xpath,'//*[@id="email"]').set 'ruivo@ruivo.com'
  @home_page.order.set '0123456789' #fill_in(@id="id_order",:with => '0123456789')
end

Quando("colocar a opcao Webmaster") do
  @home_page.mensagem.set 'Mensagem' #fill_in(@id="message",:with => 'Mensagem')
  @home_page.cbcontact.click #find(:xpath,'//*[@id="uniform-id_contact"]').click
  @home_page.webmaster.click #find(:xpath,'//*[@id="id_contact"]/option[3]').click 
end

Quando("clicar no botao send") do
  @home_page.enviarbtn.click #click_button(@id="submitMessage")
end

Entao("minha mensagem e enviada") do
  expect(@home_page).to have_mensagemenviada #find(:xpath, '//*[@id="center_column"]/p')
end

Quando("colocar a opcao Customer Service") do
  @home_page.mensagem.set 'Mensagem' #fill_in(@id="message",:with => 'Mensagem')
  @home_page.cbcontact.click #find(:xpath,'//*[@id="uniform-id_contact"]').click
  @home_page.costumer.click #find(:xpath,'//*[@id="id_contact"]/option[2]').click 
end

Entao("minha mensagem é enviada") do
  expect(@home_page).to have_mensagemenviada #find(:xpath, '//*[@id="center_column"]/p')
end

Quando("deixar o campo mensagem em branco") do
  @home_page.cbcontact.click #find(:xpath,'//*[@id="uniform-id_contact"]').click
  @home_page.webmaster.click #find(:xpath,'//*[@id="id_contact"]/option[3]').click 
  @home_page.mensagem.click #find(:xpath,'//*[@id="message"]').click
end

Entao("minha mensagem e dada como invalida") do
  expect(@home_page).to have_mensageminvalida #find(:xpath,'//*[@id="center_column"]/div')
end

Dado("que eu esteja na home sem estar logado") do
  @home_page = HomePage.new #visit 'http://automationpractice.com/index.php'
  expect(@home_page).to have_search #find(:xpath,'//*[@id="search_query_top"]')
end

Dado("que eu esteja na home e tenha feito um pedido") do
  @home_page = HomePage.new #visit 'http://automationpractice.com/index.php'
  @home_page.signin.click #find(:xpath,'//*[@id="header"]/div[2]/div/div/nav/div[1]/a').click
  @home_page.email.set 'ruivo@ruivo.com' #find(:xpath,'//*[@id="email"]').set 'ruivo@ruivo.com'
  @home_page.psswrd.set '12345' #fill_in(@id="passwd",:with => '12345')
  @home_page.loginbtn.click #find(:xpath,'//*[@id="SubmitLogin"]').click
  @home_page.search.set 'Printed summer dress' #fill_in(@id="search_query_top",:with => 'Printed summer dress')
  @home_page.searchbtn.click #find(:xpath,'//*[@id="searchbox"]/button').click
  @home_page.dress.click #find(:xpath,'//*[@id="center_column"]/ul/li[1]/div/div[1]/div/a[1]/img').click
  @home_page.cart.click #find(:xpath,'//*[@id="add_to_cart"]/button').click 
  @home_page.continueshop.click #find(:xpath,'//*[@id="layer_cart"]/div[1]/div[2]/div[4]/span').click
end

Quando("passar o cursor do mouse em cart") do
  @home_page.viewcart.hover #find(:xpath,'//*[@id="header"]/div[3]/div/div/div[3]/div/a').hover
end

Quando("clicar em check out") do
  @home_page.checkout.click #find(:xpath,'//*[@id="button_order_cart"]').click
end

Quando("clicar em proceed to check out") do
  @home_page.proceed.click #find(:xpath,'//*[@id="center_column"]/p[2]/a[1]').click
end

Quando("preencher meu endereço") do
  @home_page.proceedaddress.click #find(:xpath,'//*[@id="center_column"]/form/p/button').click
end

Quando("confirmar minha compra") do
  @home_page.checkbox.click #find(:xpath,'//*[@id="uniform-cgv"]').click
  @home_page.proceedpay.click #find(:xpath,'//*[@id="form"]/p/button').click
  @home_page.payment.click #find(:xpath,'//*[@id="HOOK_PAYMENT"]/div[1]/div/p/a').click
  @home_page.cartnav.click #find(:xpath,'//*[@id="cart_navigation"]/button').click
end

Entao("finalizarei minha compra") do
  expect(@home_page).to have_confirm #find(:xpath,'//*[@id="center_column"]/div')
end

Quando("Clicar em sign in") do
  @home_page.signin.click #find(:xpath,'//*[@id="header"]/div[2]/div/div/nav/div[1]/a').click
end

Quando("ir em create account") do
  @home_page.emaillogin.set 'mateus@mateus.com' #find(:xpath,'//*[@id="email_create"]').set 'mateus@fogo.com'
  @home_page.createbtn.click #find(:xpath,'//*[@id="SubmitCreate"]').click
end

Quando("preencher os campos com meus dados") do
  @home_page.mrs.click #find(:xpath,'//*[@id="id_gender1"]').click
  @home_page.firstnm.set 'Mateus' #find(:xpath,'//*[@id="customer_firstname"]').set 'Mateus'
  @home_page.lastnm.set 'Balduino' #find(:xpath,'//*[@id="customer_lastname"]').set 'Balduino'
  @home_page.psswrd.set '12345' #find(:xpath,'//*[@id="passwd"]').set '12345'
  @home_page.days.click #find(:xpath,'//*[@id="uniform-days"]').click  #//*[@id="days"]
  @home_page.day.click #find(:xpath,'//*[@id="days"]/option[17]').click
  @home_page.months.click #find(:xpath,'//*[@id="uniform-months"]').click #//*[@id="months"]
  @home_page.month.click #find(:xpath,'//*[@id="months"]/option[2]').click
  @home_page.years.click #find(:xpath,'//*[@id="uniform-years"]').click #//*[@id="years"]
  @home_page.year.click #find(:xpath,'//*[@id="years"]/option[21]').click
  @home_page.nmaddress.set 'Mateus' #find(:xpath,'//*[@id="firstname"]').set 'Mateus'
  @home_page.lastaddress.set 'Balduino' #find(:xpath,'//*[@id="lastname"]').set 'Balduino'
  @home_page.address.set 'R. Margaridas, 65' #find(:xpath,'//*[@id="address1"]').set 'R. Margaridas, 65'
  @home_page.city.set 'Barueri' #find(:xpath,'//*[@id="city"]'). set 'Barueri'
  @home_page.states.click #find(:xpath,'//*[@id="uniform-id_state"]').click #//*[@id="id_state"]
  @home_page.state.click #find(:xpath,'//*[@id="id_state"]/option[11]').click
  @home_page.zipcode.set '12345' #find(:xpath,'//*[@id="postcode"]').set '12345'
  @home_page.countries.click #find(:xpath,'//*[@id="uniform-id_country"]').click #//*[@id="id_country"]
  @home_page.country.click #find(:xpath,'//*[@id="id_country"]/option[2]').click
  @home_page.number.set '123456789' #find(:xpath,'//*[@id="phone_mobile"]').set '123456789'
end

Quando("clicar em save") do
  @home_page.btnsalvar.click #find(:xpath,'//*[@id="submitAccount"]').click
end

Quando("clicar em sign out") do
  @home_page.signout.click #find(:xpath,'//*[@id="header"]/div[2]/div/div/nav/div[2]/a').click
end

Entao("terei saido da minha conta") do
  expect(@home_page).to have_signin #find(:xpath,'//*[@id="header"]/div[2]/div/div/nav/div[1]/a')
end