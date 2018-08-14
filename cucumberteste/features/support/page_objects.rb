require_relative '../pages/sections'

module PageObjetcs
    def login; LoginPage.new; end
    def dash; DashPage.new; end
    def upload; UploadPage.new; end
end