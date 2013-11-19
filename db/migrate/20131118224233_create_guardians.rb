class CreateGuardians < ActiveRecord::Migration
  def change
    create_table :guardians do |t|
      t.string :first_name
      t.string :last_name
      t.string :work_phone
      t.string :home_phone
      t.string :email
      t.string :profession

      t.timestamps
    end
  end
end
