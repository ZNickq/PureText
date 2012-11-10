class MenuHandler

  def show_menu
    raise "Error, a handler didn't properly override show_menu!"
  end
  
  def on_option(op)
    raise "Error, a handler didn't properly override on_option!"
  end
  
  def is_valid_answer(op)
    return true
  end

end
