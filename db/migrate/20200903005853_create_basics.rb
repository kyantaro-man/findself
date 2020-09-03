class CreateBasics < ActiveRecord::Migration[6.0]
  def change
    create_table :basics do |t|
      t.string :birth_place
      t.date :birth_date
      t.integer :blood_type
      t.integer :gender
      t.references :user
      t.timestamps
    end
  end
end
