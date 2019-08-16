class Hero
    
    attr_accessor :id, :name, :attack_type, :roles, :primary_attribute
    PRIMARY_ATTRIBUTE_LOOKUP = {
        'agi' => 'Agility',
        'str' => 'Strength',
        'int' => 'Intelligence'
    }.freeze

    @@all = {}
       
    def initialize(details)
        @id = details["id"]
        @name = details["localized_name"]
        @attack_type = details["attack_type"]
        @roles = details["roles"]
        @primary_attribute = details["primary_attr"]
        @@all[@id] = self 
    end

    def to_s
        "#{@id}|#{@name}|#{@attack_type}|#{@roles}|#{PRIMARY_ATTRIBUTE_LOOKUP[@primary_attribute]}"
    end

    def self.all 
        @@all
    end

end 