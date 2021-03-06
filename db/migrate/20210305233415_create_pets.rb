class CreatePets < ActiveRecord::Migration[6.1]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :type
      t.datetime :birthdate
      t.string :breed
      t.string :color
      t.string :sex
      t.integer :weight
      t.text :description
      t.boolean :kid_friendly
      t.boolean :solo_pet

      t.timestamps
    end
  end
end
