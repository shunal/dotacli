require 'open-uri'
require 'json'
class Api 

    def initialize
        @url = 'https://api.opendota.com/api/heroes'
    end 

    def get_heroes
        data = open(@url).read
        hashed_heroes = JSON.parse(data)
        # transformed = []
        # hashed_heroes.each do |hero_hash|
        #     hero_id = hero_hash["id"]
        #     hero_split = hero_hash["name"].split("_")
        #     name = hero_split[3..5].join(" ")
        #     attack_type = hero_hash["attack_type"]
        #     roles = hero_hash["roles"]
        #     primary_attribute = hero_hash["primary_attr"]
        #     transformed << {id: hero_id, name: name, attack_type: attack_type, roles: roles, primary_attribute: primary_attribute}
        # end
        # transformed
    end

end