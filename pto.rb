require_relative 'loginmenu'

class PureTextOverflow

  def self.start
    menu = LoginHandler.new(self)
    loop do
      system("clear")  
      menu.show_menu
      option = gets.chomp
      puts option
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
