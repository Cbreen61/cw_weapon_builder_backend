class WeaponSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :weapon_type, :image
  attributes :laser, :stock, :underbarrel, :rear_grip, :perk, :game_id, :game

end
