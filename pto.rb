class PureTextOverflow
  def self.start
    banner_text = "Hello there!"
    keyboard_input = ""
    prompt_with = "Say something:"
#    loop do
#      system("clear")
#      puts banner_text
#      puts keyboard_input
#      puts
#      puts prompt_with
#     banner_text = "You said:"
#     keyboard_input = gets.chomp
#     prompt_with = "Say something else:"
#   end
  end
end

class MenuHandler

  def show_menu
    raise "Error, a handler didn't properly override show_menu!"
  end
  
  def on_option(op)
  end

end

PureTextOverflow.start
