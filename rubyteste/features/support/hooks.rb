
After('@logout') do
    dash.nav.logout
    login.load
end

After do |scenario|

    @name = scenario.name.gsub(' ', '_')
    #results/shots/tentativa_de_login,_exemplos_(#1).png
    @name = @name.gsub(',', '')
    @name = @name.gsub('#', '')
    @name = @name.gsub('(', '')
    @name = @name.gsub(')', '')

    @target = "results/shots/#{@name.downcase!}.png"

     if scenario.failed?
        page.save_screenshot(@target)
        embed(@target, 'image/png', 'Clique aqui para ver a evidência')    
     end

    # if BROWSER.eql?('headless')
    #     Capybara.current_session.driver.quit
    # end
end

