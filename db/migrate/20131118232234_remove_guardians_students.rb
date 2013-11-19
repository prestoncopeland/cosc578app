class RemoveGuardiansStudents < ActiveRecord::Migration
  def change
    drop_table :guardians_students
  end
end
