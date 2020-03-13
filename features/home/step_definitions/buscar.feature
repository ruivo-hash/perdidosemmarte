#language:pt
#utf-8

Funcionalidade: Buscar usuarios
    Eu como sistema intermediario
    Quero fazer a requisicao de leitura de todos os usuarios
    Para checar quais foram os os usuarios mais ativos

    @get
    Cenario: Buscar usuarios 
      Dado que eu tenha acesso ao webservice
      Quando eu fizer a requisicao de leitura de todos os usuarios
      Entao valido o codigo de respostsa esperado