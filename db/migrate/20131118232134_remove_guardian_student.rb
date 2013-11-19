class RemoveGuardianStudent < ActiveRecord::Migration
  def change
    drop_table :guardian_students
  end
end
