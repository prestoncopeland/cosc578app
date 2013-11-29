class AddJobCategoryToEmployees < ActiveRecord::Migration
  def change
    add_column :employees, :job_category, :string
  end
end
