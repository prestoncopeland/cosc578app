class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :nickname
      t.datetime :birthdate
      t.string :grade
      t.string :ethnicity
      t.string :street
      t.string :city
      t.integer :zip
      t.string :email
      t.string :phone
      t.boolean :is_active?
      t.text :program_goals

      t.timestamps
    end
  end
end
