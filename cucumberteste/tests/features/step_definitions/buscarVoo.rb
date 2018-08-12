#encoding: utf-8

Dado(/^que eu tenha que viajar de "([^"]*)" para "([^"]*)" no dia 28 de julho com meu filho e minha esposa./) do |origem, destino|

  buscarVoo.load
  buscarVoo.with(origem,destino)

end

Quando(/^realizo a busca por voo/) do

  buscarVoo.buscar.click
  buscarVoo.wait_for_latamfilter

end

Então(/^Consigo visualizar a lista de voos/) do

  buscarVoo.wait_for_itensLista
  #verificando se a lista carrego
  expect(buscarVoo.has_itensLista?).to be true
  sleep 10

end

Então(/^consigo aplicar um filtros adicionais/) do

  buscarVoo.latamfilter.click
  buscarVoo.madrugada.click
  buscarVoo.direto.click
  buscarVoo.vcp.click
  #verificando se todos os itens sumirão da lista apos a aplicação dos filtros
  expect(buscarVoo.has_no_itensLista?).to be true
  sleep 10
  
end
