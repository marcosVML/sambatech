

module Sections
    class NavBar <SitePrism::Section
        element :user_menu, '#navbar-user-avatar'
        element :logout_link, '#logout'

        def logout
            self.user_menu.click
            self.logout_link.click
        end
    end
end
