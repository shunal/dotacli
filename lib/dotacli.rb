require "dotacli/version"
require "dotacli/api"
require "dotacli/hero"

module Dota
  class Error < StandardError; end
  # Your code goes here...

  class DotaHandler

    def initialize
      line_break
      puts "Welcome to my dotaCLI! In this CLI you will be able to see information on the popular games awesome playable heroes"
      line_break
      puts "Type list to get started!"
    end

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
      line_break
        numbered_list
        more_info
        info_again
    end

    def numbered_list
      x = gets.chomp
        if x == "list"
          list.each {|hero| puts "#{hero["id"]} #{hero["localized_name"]}" }
        else
          puts "Im sorry that command is not valid!"
          line_break 
          start_program
          puts "Type list to get started"
        end
    end

    def more_info
      line_break
      puts "To see more information on a particular hero, type in the the number to the left of the heroes name."
      line_break
        r = gets.chomp
        line_break
        puts info(r.to_i).summary
      line_break        
    end 

    def info_again
      puts "Type y to get info on a different hero.  Type back to see the list again."
      h = gets.chomp 
      if h == "y"
        more_info
        info_again
      elsif h =="back"
        line_break
        puts "Type list to see the list"
        start_program
      else 
        puts "Im sorry that command is not valid!"
        line_break
        info_again
      end 
    end 

    def line_break
      puts ""
    end

    

  end 
end
