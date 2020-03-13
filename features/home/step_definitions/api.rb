require 'rest-client'
require 'json'

log = Logger.new(STDOUT)
RestClient.log = log
log.level = Logger::DEBUG

url = 'http://jsonplaceholder.typicode.com/users'
response = RestClient.get(url)
JSON.parse(response)
puts response

RestClient.get 'http://jsonplaceholder.typicode.com/users'#, {params: {id: 1}}