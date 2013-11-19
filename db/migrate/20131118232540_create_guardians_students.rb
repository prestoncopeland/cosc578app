class CreateGuardiansStudents < ActiveRecord::Migration
  def change
    create_table :guardians_students do |t|
      t.belongs_to :student
      t.belongs_to :guardian
      t.timestamps
    end
  end
end
