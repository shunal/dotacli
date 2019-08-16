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
      Api.get_heroes.each { |hero| Hero.new(hero) }
      Hero.all[id]
    end


  end 
end
