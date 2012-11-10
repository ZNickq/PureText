class MenuHandler

  def self.show_menu
    raise "Error, a handler didn't properly override show_menu!"
  end
  
  def self.on_option(op)
    raise "Error, a handler didn't properly override on_option!"
  end

end
