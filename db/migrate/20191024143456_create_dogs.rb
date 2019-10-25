class CreateDogs < ActiveRecord::Migration[6.0]
  def change
    create_table :dogs do |t|
      t.string :name
      t.string :owner_s_dog_name
      t.string :owner_s_phone_number
      t.timestamps
    end
  end
end
