require_relative 'loginmenu'

class PureTextOverflow

  def self.start
    menu = LoginHandler.new(self)
    loop do
      system("clear")  
      menu.show_menu
      option = gets.chomp
      if menu.is_valid_answer(option)
        menu = menu.on_option(option)
      end
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
