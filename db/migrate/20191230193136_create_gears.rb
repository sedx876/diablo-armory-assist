class CreateGears < ActiveRecord::Migration
  def change
    create_table :gears do |t|
      t.string :title
      t.string :character_klass
      t.string :helm
      t.string :shoulders
      t.string :gloves
      t.string :chest_armor
      t.string :belt
      t.string :pants
      t.string :boots
      t.string :bracers
      t.string :amulet
      t.string :ring_1
      t.string :ring_2
      t.string :weapon
      t.string :offhand
      t.text :gem_notes
      t.text :kanais_cube
      t.text :active_skills
      t.text :passive_skills
      t.text :general_build_notes
      t.integer :user_id

  end
end
end
