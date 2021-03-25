class Game < ApplicationRecord
    has_many :weapons

    def self.arr_to_json
        self.all.map do |g|
            g.instance_to_json
        end 
    end 

    # instance method that handles one specific post
    def instance_to_json
       
        {   id: self.id,
            name: self.name,
            publisher: self.publisher,
            weapons:self.weapons.arrg_to_json
        }
    end 
end
