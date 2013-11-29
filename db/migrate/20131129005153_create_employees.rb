class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :nickname
      t.datetime :birthdate
      t.string :ssn
      t.string :ethnicity
      t.datetime :interview_date
      t.string :street
      t.string :city
      t.string :state
      t.string :zip
      t.string :home_phone
      t.string :cell_phone
      t.string :email
      t.text :career_goals
      t.string :type

      t.timestamps
    end
  end
end
