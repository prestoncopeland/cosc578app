class CreateSchoolsStudents < ActiveRecord::Migration
  def change
    create_table :schools_students do |t|
      t.integer :school_id
      t.integer :student_id
      t.string :dates_attended
      t.timestamps
    end
  end
end
