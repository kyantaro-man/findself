class CreateProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :profiles do |t|
      t.string :cover_image
      t.string :profile_image
      t.text :introduction 
      t.string :goal
      t.text :career
      t.string :related_link
      t.string :attached_file
      t.references :user

      t.timestamps
    end
  end
end
