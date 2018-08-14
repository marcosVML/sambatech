
class LoginPage <SitePrism::Page
    set_url '/auth/login'
    
    section :nav, Sections::NavBar, '#navbar'

    element :email, '#inputEmail'
    element :password, '#inputPassword'
    element :sign_in, '#login'

    element :painel, '#mn-dashboard'
    element :alert, '#password_incorrect'

    def with(email, pwd)
        self.email.set email
        self.password.set pwd
        self.sign_in.click
    end
end
