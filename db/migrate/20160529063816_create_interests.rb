class CreateInterests < ActiveRecord::Migration
  def change
    create_table :interests do |t|
      t.string :category
      t.string :hobby
      t.belongs_to :person

      t.timestamps null: false
    end
  end
end
