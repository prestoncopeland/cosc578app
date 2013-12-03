class ChangeColumnNameForStudents < ActiveRecord::Migration
  def change
    change_column :students, :birthdate, :date
  end
end
