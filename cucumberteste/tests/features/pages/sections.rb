

module Sections
    class NavBar <SitePrism::Section
        element :user_menu, '.user-options--container--icon__text'
        element :logout_link, 'button[class="react--button react--button__white "]'
        
        def logout
            self.user_menu.click
            self.logout_link.click
        end
    end
end
