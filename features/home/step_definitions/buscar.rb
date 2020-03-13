response = nil

Dado("que eu tenha acesso ao webservice") do 
end

Quando("eu fizer a requisicao de leitura de todos os usuarios") do
  response = HTTParty.get("http://jsonplaceholder.typicode.com/comments/")
  puts response[0]
  puts "Nome: " + response[0]['name'] + "\n Email: " + response[0]['email']
end

Então("valido o codigo de respostsa esperado") do
  expect(response.code).to eq 200
  expect(response[0]['id']).to eq 1 
end