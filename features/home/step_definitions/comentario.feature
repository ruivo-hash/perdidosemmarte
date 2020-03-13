#language:pt
#utf-8

Funcionalidade: Postar um comentario
    Eu como sistema intermediario
    Quero fazer a requisicao de criacao de um comentario
    Para postar um comentario

    @post
    Cenario: Postar comentario
      Dado que eu tenha acesso ao webservice
      Quando eu fizer a requisicao de criacao do comentario
      Entao valido o codigo de resposta para criacao esperado

    @delete
    Cenario: Excluir comentario
      Dado que eu tenha acesso ao webservice
      Quando eu fizer a requisicao de exclusao do comentario
      Entao valido o codigo de resposta para excluir esperado

    @put
    Cenario: Alterar comentario
      Dado que eu tenha acesso ao webservice
      Quando eu fizer a requisicao de mudanca do comentario
      Entao valido o codigo de resposta para mudar esperado
