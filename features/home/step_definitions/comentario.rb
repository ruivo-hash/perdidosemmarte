response = nil
Quando ("eu fizer a requisicao de criacao do comentario") do
  response = HTTParty.post("http://jsonplaceholder.typicode.com/comments/",
  :body => { 'title' => 'Sidao teste', 
             'body' => 'Tentando fazer um primerio post',
             'userId' => '3'}.to_json,
  :headers => {'Content-Type' => 'application/json'})
  puts response.code
end

Entao ("valido o codigo de resposta para criacao esperado") do
    expect(response.code).to eq 201
    puts "Validando o recebimento de resposta 201"
    puts response.body
end

response = nil
Quando ("eu fizer a requisicao de exclusao do comentario") do
  response = HTTParty.delete("http://jsonplaceholder.typicode.com/comments/3")
  puts response.code
end

Entao ("valido o codigo de resposta para excluir esperado") do
    expect(response.code).to eq 200
    puts "Validando o recebimento do codigo de resposta 200"
    puts response.body
end

response = nil
Quando ("eu fizer a requisicao de mudanca do comentario") do
  response = HTTParty.put("http://jsonplaceholder.typicode.com/comments/3",
    :body => { 'title' => 'teste alteração', 
      'body' => 'Tentando fazer uma alteração',
      'userId' => '3'}.to_json,
:headers => {'Content-Type' => 'application/json'})
  puts response.code
end

Entao ("valido o codigo de resposta para mudar esperado") do
    expect(response.code).to eq 200
    puts "Validando o recebimento do codigo de resposta 200"
    puts response.body
end