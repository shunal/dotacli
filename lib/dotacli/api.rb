require 'open-uri'
require 'json'
class Api 

    def self.get_heroes
        data = open('https://api.opendota.com/api/heroes').read
        JSON.parse(data)
    end
end