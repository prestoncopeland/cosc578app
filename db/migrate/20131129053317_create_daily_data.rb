class CreateDailyData < ActiveRecord::Migration
  def change
    create_table :daily_data do |t|
      t.string :type
      t.string :referral_source
      t.string :student_action
      t.text :notes
      t.string :target
      t.boolean :successful?
      t.references :employee, index: true
      t.references :student, index: true
      t.references :payment, index: true

      t.timestamps
    end
  end
end
