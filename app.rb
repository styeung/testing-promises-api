require 'sinatra'
require 'json'

items = [{id: '1', content: 'first item'}, {id: '2', content: 'second item'}]

before do
  headers 'Access-Control-Allow-Origin' => '*'
  headers 'Access-Control-Allow-Methods' => 'POST, GET, DELETE, OPTIONS'
  headers 'Access-Control-Allow-Headers' => 'Authorization,Accepts,Content-Type,X-CSRF-Token,X-Requested-With'
end

get '/id' do
  sleep 2
  JSON.generate({id: '1'})
end

get '/items/:id' do
  item = items.select {|item| item[:id] == params['id']}.first

  sleep 2
  JSON.generate(item)
end
