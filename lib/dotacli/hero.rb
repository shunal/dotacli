class Hero
    attr_accessor :id, :name, :attack_type, :roles, :primary_attribute
    
    @@all = {}
       
    def initialize(details)
        @id = details.id 
        @name = details.name 
        @attack_type = details.attack_type
        @roles = details.roles
        @primary_attribute = details.primary_attribute
        @@all[details.id] = self
    end

    def self.all 
        @@all
    end

   end 