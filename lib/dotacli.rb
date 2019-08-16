require "dotacli/version"
require "dotacli/api.rb"
require "dotacli/hero"

module Dota
  class Error < StandardError; end
  # Your code goes here...

  class DotaHandler
    def initialize
      @api = Api.new
    end

    def list
      Api.get_heroes
    end 

    def info(id)
      heroes=Api.get_heroes
      heroes.each do |hero|
        Hero.new(hero) 
      end
      Hero.all[id]
    end


  end 
end
