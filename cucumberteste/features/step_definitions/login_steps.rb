#encoding: utf-8

Dado(/^acessa a pagina login$/) do
  login.load
end

Dado(/^que eu tenho um usuário:$/) do |table|
  @user = OpenStruct.new(table.rows_hash)
end

Dado(/^que eu tenho um usuário "([^"]*)"$/) do |perfil|
  @user = OpenStruct.new(DATA['users'][perfil])
end

Quando(/^faço login$/) do
  login.with(@user.email, @user.password)
end

Então(/^vejo o painel$/) do
  sleep 25
  expect(login.has_painel?).to be true
end


## Exceptions

Dado(/^que eu tenho o usuário "([^"]*)" e "([^"]*)"$/) do |email, senha|
  @user = OpenStruct.new(
      :email => email,
      :password => senha
  )
  sleep 2
end

Então(/^vejo a mensagem "([^"]*)"$/) do |message|
  expect(login.alert.text).to include message
  sleep 3
end