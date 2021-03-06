#language:pt

Funcionalidade: Home

Contexto: Estar na home
  Dado que eu esteja na home

Cenario: Pesquisar Printed Summer e add ao carrinho
  Quando eu digitar no campo search Printed Summer Dress
  E clicar na primeira opcao
  E escolher a cor black
  E adicionar ao carrinho
  E continuar comprando
  Entao deve voltar a pagina do produto

Cenario: Enviar mensagem pelo contact us na opcao Webmaster
  Quando clicar no botao contact us
  E preencher as informacoes
  E colocar a opcao Webmaster
  E clicar no botao send
  Entao minha mensagem e enviada

Cenario: Enviar mensagem pelo contact us na opcao Customer Service
  Quando clicar no botao contact us
  E preencher as informacoes
  E colocar a opcao Customer Service
  E clicar no botao send
  Entao minha mensagem é enviada

Cenario: Enviar mensagem em branco pelo contact us
  Quando clicar no botao contact us
  E preencher as informacoes
  E deixar o campo mensagem em branco
  E clicar no botao send
  Entao minha mensagem e dada como invalida

Cenario: Adicionar 3 pecas M Blue Faded Short Sleeve ao carrinho
  Dado que eu esteja na home sem estar logado
  Quando clicar no botao contact us
  E preencher as informacoes
  E deixar o campo mensagem em branco
  E clicar no botao send
  Entao minha mensagem e dada como invalida

Cenario: Logar com conta existente e finalizar a compra
  Dado que eu esteja na home e tenha feito um pedido
  Quando passar o cursor do mouse em cart
  E clicar em check out
  E clicar em proceed to check out
  E preencher meu endereço
  E confirmar minha compra
  Entao finalizarei minha compra

Cenario: Fazer login e logout
  Quando Clicar em sign in
  E ir em create account
  E preencher os campos com meus dados
  E clicar em save
  E clicar em sign out
  Entao terei saido da minha conta