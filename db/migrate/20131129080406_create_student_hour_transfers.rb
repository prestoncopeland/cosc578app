class CreateStudentHourTransfers < ActiveRecord::Migration
  def change
    create_table :student_hour_transfers do |t|
      t.decimal :hours_transferred
      t.references :employee, index: true
      t.references :student_from
      t.references :student_to


      t.timestamps
    end
  end
end
