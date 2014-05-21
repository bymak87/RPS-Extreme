require_relative './lib/rps.rb'
module RPS
  class TerminalClient

    def self.start
      exit = false
      while !exit
        puts "[1] Sign up"
        puts "[2] Exit"
        puts "> "
        option = gets.chomp
          if option == "1"
            puts "Please enter your username."
            username = gets.chomp
            puts "Please enter your password."
            password = gets.chomp
          elsif option == "2"
            exit = true
          else
            puts "That is not a valid command."
          end

      end
    end
  end
end

