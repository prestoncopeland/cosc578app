class ChangeColumnNameForStudent < ActiveRecord::Migration
  def change
    rename_column :students, :is_active?, :is_active
  end

end
