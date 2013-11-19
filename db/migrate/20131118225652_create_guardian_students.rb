class CreateGuardianStudents < ActiveRecord::Migration
  def change
    create_table :guardian_students do |t|

      t.timestamps
    end
  end
end
