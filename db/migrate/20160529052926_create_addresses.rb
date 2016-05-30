class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :street
      t.string :city
      t.string :state
      t.string :country
      t.integer :zipcode
      t.belongs_to :person

      t.timestamps null: false
    end
  end
end
