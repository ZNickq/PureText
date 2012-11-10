class MainMenuHandler < MenuHandler

  def initialize(main)
    @main = main
  end

  def show_menu
    puts "Logged in as "+@main.user+"!"
  end
  
  def on_option(op)
    puts "Derp"
  end

end
