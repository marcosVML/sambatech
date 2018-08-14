#encoding: utf-8

Dado("Usuario logado acessa a pagina de conteudo") do
    email = DATA['users']['teste']['email']
    password = DATA['users']['teste']['password']
    login.load
    sleep 2
    login.with(email, password)
    sleep 20
    upload.load
    sleep 10
end

Dado("que eu tenha um video carregado na minha plataforma") do
  expect(upload.has_lista?).to be true
end

Quando("realizo o download do video clicando em Download Raw") do
  upload.download
  sleep 5
end

Então("o sistema realiza o download do arquivo para a minha maquina") do
  expect(upload.has_mensagem?).to be true
end
