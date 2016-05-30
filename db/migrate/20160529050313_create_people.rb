class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :username, null: false
      t.string :password_digest, null: false
      t.string :email_address, null: false
      t.string :first_name, null: false
      t.string :last_name
      t.string :gender, null: false
      t.string :height
      t.string :hair_color
      t.string :eye_color
      t.integer :weight
      t.string :religion
      t.boolean :smoke, default: false
      t.boolean :drink, default: false
      t.text :about_me

      t.timestamps null: false
    end
  end
end
