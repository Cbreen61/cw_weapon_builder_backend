class Weapon < ApplicationRecord
    belongs_to :game
    validates :name, presence: true

    def self.arr_to_json
        self.all.map do |w|
            w.instance_to_json
        end 
    end 

    # instance method that handles one specific post
    def instance_to_json
       
        {   id:self.id,
            name: self.name,
            weapon_type: self.weapon_type,
            image: self.image,
            attachments:{
                muzzle: self.muzzle,
                barrel: self.barrel,
                laser: self.laser,
                optic: self.optic,
                stock: self.stock,
                underbarrel: self.underbarrel,
                ammunition: self.ammunition,
                rear_grip: self.rear_grip,
                perk: self.perk,

            },
            game: {
                id: self.game.id,
                name: self.game.name,
                publisher: self.game.publisher
            }
        }
    end 

    def self.arrg_to_json
        self.all.map do |w|
            w.instanceg_to_json
        end 
    end 

    # instance method that handles one specific post
    def instanceg_to_json
       
        {   id:self.id,
            name: self.name,
            weapon_type: self.weapon_type,
            image: self.image,
            attachments:{
                muzzle: self.muzzle,
                barrel: self.barrel,
                laser: self.laser,
                optic: self.optic,
                stock: self.stock,
                underbarrel: self.underbarrel,
                ammunition: self.ammunition,
                rear_grip: self.rear_grip,
                perk: self.perk,

            }
        }
    end 

end
