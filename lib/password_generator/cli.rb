require 'securerandom'
class PasswordGenerator::CLI
  def call
    puts "Welcome to Password Generator."
    main_menu
  end

  def user_input
    user_input = gets.chomp
  end

  def main_menu
    puts "MAIN MENU"
    puts "Type '1' to generate password."
    puts "Type 'exit' to exit program."
    case user_input
    when '1'
      generator
    when 'exit'
      exit
    else
      puts "Not a valid option, try again."
    end
  end
       
  def exit
    puts "Goodbye!"
  end

  def generator
    puts "Lets generate a password. Choose from the options below."
    puts "---------------------------------------------------"
    puts "> Type '1' for numbered password."
    puts "> Type '2' for aphelbatized password."
    puts "> Type '3' for mixed password of numbers and letters."
    puts "Type '4' to return to menu menu or 'exit' to exit the program."
    case user_input
    when '1'
      pwd = SecureRandom.random_number(100000000000000)
      puts pwd
      generator
    when '2'
      pwd = SecureRandom.alphanumeric
      puts pwd
      generator
    when '3'
      pwd = SecureRandom.hex
      puts pwd
      generator
    when '4'
      main_menu
    when 'exit'
      exit
    else
      puts "Sorry, not a valid option. Try again."
    end   
  end
end