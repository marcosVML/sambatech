
class UploadPage <SitePrism::Page
    set_url '/ui#content/list'
    
    section :nav, Sections::NavBar, '.navbar-form'

    element :upload, '#uploader'
    element :buttonDw, '.downloadRaw'

    element :lista, '#media-list-container'
    element :mensagem, '#elemento'

    def download()
         self.buttonDw.click
    end
end
