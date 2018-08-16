
class UploadPage <SitePrism::Page
    set_url '/ui#content/list'
    
    section :nav, Sections::NavBar, '.navbar-form'

    element :upload, '#uploader'
    element :buttonDw, 'a[data-mediaid="8dce8954424cb3f99078ecf81f6fcd10"]'

    element :lista, '#media-list-container'
    element :mensagem, '#elemento'

    def download()
         self.buttonDw.click
    end
end
