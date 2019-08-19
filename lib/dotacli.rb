require "dotacli/version"
require "dotacli/api"
require "dotacli/hero"

module Dota
  class Error < StandardError; end
  # Your code goes here...

  class DotaHandler
    def list
      Api.get_heroes
    end

    def info(id)
      Api.get_heroes.each do |hero| 
      Hero.new(hero) 
      end
      Hero.all[id]
    end


    def start_program
      puts "Type run to see a list of the games heroes."
      x = gets.chomp
        if x == "run" 
          list.each {|hero| puts "#{hero["id"]} #{hero["localized_name"]}" }
          
        else
          puts "Im sorry that command is not valid!"  
          puts "Type run to see a list of the games heroes."
      end
    end

    def more_info
      puts "To see more information on a particular hero, type in the the number to the left of the heroes name."
        r = gets.chomp
      puts info(r.to_i).to_s
    end 

    

  end 
end
