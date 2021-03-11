class CreateWeapons < ActiveRecord::Migration[6.1]
  def change
    create_table :weapons do |t|
      t.string :name
      t.string :weapon_type
      t.string :muzzle
      t.string :barrel
      t.string :laser
      t.string :optic
      t.string :stock
      t.string :underbarrel
      t.string :ammunition
      t.string :rear_grip
      t.string :perk
      t.string :image
      t.integer :game_id

      t.timestamps
    end
  end
end
