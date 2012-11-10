require_relative 'menu'
require_relative 'mainmenu'
require_relative 'question'

class LoginHandler < MenuHandler
  def initialize(main)
    @main = main
  end
  
  def show_menu
    puts "Hello there! Choose a nickname: "
  end
  
  def on_option(op)
    @main.set_user(op)
    return MainMenuHandler.new(@main)
  end
  
end
