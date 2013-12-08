class AddCategoryToEmployees < ActiveRecord::Migration
  def change
    add_column :employees, :category, :string
  end
end
