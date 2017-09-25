module MenuView
  def self.render_start_menu
    puts "***************************************"
    puts "            WELCOME TO 2048"
    puts "***************************************"
    puts " Use (w,a,s,d) for controls, q to quit"
    puts
  end

  def self.render_exit_menu
    puts
    puts "Thank you for playing!"
    puts
  end
end
