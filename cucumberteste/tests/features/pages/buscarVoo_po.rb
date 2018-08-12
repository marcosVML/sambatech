
#!/usr/bin/ruby

class BuscarVooPage <SitePrism::Page
    set_url '/'

    section :nav, Sections::NavBar, '.global-menu'
    
    element :cidadeOrigemm, '#search_form_from_wrapper'
    element :cidadeOrigem, '#search_form_from'
    element :selecaoOrigem, '.mm-autocomplete-title[data-iata="BHZ"]'

    element :cidadeDestinoo, '#search_form_to_wrapper'
    element :cidadeDestino, '#search_form_to'
    element :selecaoDestino, '.mm-autocomplete-title[data-iata="SAO"]'


    element :calendario, '#fake_input_search_form_outbound_date'
    element :nextMes, '.flatpickr-next-month'
    element :day, '.flatpickr-day[aria-label="Julho 28, 2018"]'

    element :passageiro, '#passengersWrapper'
    element :aduto, '.passengers-count[data-passenger-type="adults"] > .more'
    element :crianca, '.passengers-count[data-passenger-type="children"] > .more'
    element :classeEconomica, 'label[for="executive-class"]'
    element :classeExecutiva, 'label[for="business-class"]'

    element :buscar, '#btn_search_flights'

    element :latamfilter, '#latam_filter'
    element :madrugada, '.checkbox > input[id="madrugada_filter"]'
    element :direto, '#direct_filter'
    element :cnf, '#CNF_filter'
    element :vcp, '#VCP_filter'
    element :itensLista, '.flight-item '


    def with(ori, dest)
       self.cidadeOrigemm.click 
       self.wait_for_cidadeOrigem
       self.cidadeOrigem.set ori
       self.wait_for_selecaoOrigem
       self.selecaoOrigem.click

       self.cidadeDestinoo.click
       self.wait_for_cidadeDestino
       self.cidadeDestino.set dest 
       self.wait_for_selecaoDestino
       self.selecaoDestino.click

       self.calendario.click
       self.wait_for_nextMes
       self.nextMes.click
       self.wait_for_day
       self.day.click

       self.passageiro.click
       self.aduto.click
       sleep 2
       self.crianca.click
       self.classeExecutiva.click
       sleep 2
       self.classeEconomica.click
    end
end