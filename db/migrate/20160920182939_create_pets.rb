class CreatePets < ActiveRecord::Migration[5.0]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :birthday
      t.string :pet_type
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
