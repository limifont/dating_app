class RemoveCategoryFromInterests < ActiveRecord::Migration
  def change
    remove_column :interests, :category, :string
  end
end
