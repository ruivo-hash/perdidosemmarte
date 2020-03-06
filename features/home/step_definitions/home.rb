Dado("que eu esteja na home") do
  find(:xpath,'//*[@id="search_query_top"]').click  
end

Quando("eu digitar no campo search Printed Summer Dress") do
  fill_in(@id="search_query_top",:with => 'Printed summer dress')
  find(:xpath,'//*[@id="searchbox"]/button').click
end

Quando("clicar na primeira opcao") do
  find(:xpath,'//*[@id="center_column"]/ul/li[1]/div/div[1]/div/a[1]/img').click
end

Quando("escolher a cor black") do
  find(:xpath,'//*[@id="color_11"]').click 
end

Quando("adicionar ao carrinho") do
  find(:xpath,'//*[@id="add_to_cart"]/button').click 
end

Quando("continuar comprando") do
  find(:xpath,'//*[@id="layer_cart"]/div[1]/div[2]/div[4]/span').click
end

Entao("deve voltar a pagina do produto") do
  find(:xpath,'//*[@id="bigpic"]')
end

Quando("clicar no botao contact us") do
  pending # Write code here that turns the phrase above into concrete actions
end

Quando("preencher as informacoes") do
  pending # Write code here that turns the phrase above into concrete actions
end

Quando("colocar a opcao Webmaster") do
  pending # Write code here that turns the phrase above into concrete actions
end

Quando("clicar no botao send") do
  pending # Write code here that turns the phrase above into concrete actions
end

Entao("minha mensagem e enviada") do
  pending # Write code here that turns the phrase above into concrete actions
end

Quando("colocar a opcao Customer Service") do
  pending # Write code here that turns the phrase above into concrete actions
end

Entao("minha mensagem é enviada") do
  pending # Write code here that turns the phrase above into concrete actions
end

Quando("deixar o campo mensagem em branco") do
  pending # Write code here that turns the phrase above into concrete actions
end

Entao("minha mensagem e dada como invalida") do
  pending # Write code here that turns the phrase above into concrete actions
end

Dado("que eu esteja na home sem estar logado") do
  pending # Write code here that turns the phrase above into concrete actions
end

Dado("que eu esteja na home e tenha feito um pedido") do
  pending # Write code here that turns the phrase above into concrete actions
end

Quando("passar o cursor do mouse em cart") do
  pending # Write code here that turns the phrase above into concrete actions
end

Quando("clicar em check out") do
  pending # Write code here that turns the phrase above into concrete actions
end

Quando("clicar em proceed to check out") do
  pending # Write code here that turns the phrase above into concrete actions
end

Quando("preencher meu endereço") do
  pending # Write code here that turns the phrase above into concrete actions
end

Quando("confirmar minha compra") do
  pending # Write code here that turns the phrase above into concrete actions
end

Entao("finalizarei minha compra") do
  pending # Write code here that turns the phrase above into concrete actions
end

Quando("Clicar em sign in") do
  pending # Write code here that turns the phrase above into concrete actions
end

Quando("ir em create account") do
  pending # Write code here that turns the phrase above into concrete actions
end

Quando("preencher os campos com meus dados") do
  pending # Write code here that turns the phrase above into concrete actions
end

Quando("clicar em save") do
  pending # Write code here that turns the phrase above into concrete actions
end

Quando("clicar em sign out") do
  pending # Write code here that turns the phrase above into concrete actions
end

Entao("terei saido da minha conta") do
  pending # Write code here that turns the phrase above into concrete actions
end