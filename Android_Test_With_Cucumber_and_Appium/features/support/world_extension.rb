Dir.glob(File.join(File.dirname(__FILE__),'pages','**/*.rb')) {|file| require_relative file}

module AndroidPageDomain

  def login_page
    @loginPage = Screen::Android::LoginPage.new
  end

end

World(AndroidPageDomain)