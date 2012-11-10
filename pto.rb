require_relative 'menu'
require_relative 'question'
require_relative 'loginmenu'
require_relative 'answermenu'
require_relative 'questionmenu'
require_relative 'questionlistmenu'
require_relative 'newquestionmenu'
require_relative 'mainmenu'

class PureTextOverflow

  def self.start
    menu = LoginHandler.new(self)
    while menu !=nil do
      system("clear")  
      menu.show_menu
      option = gets.chomp
      menu = menu.on_option(option)
   end
  end
  
  def self.set_user(usr)
    @username = usr
  end
  
  def self.user
    return @username
  end
end

PureTextOverflow.start
