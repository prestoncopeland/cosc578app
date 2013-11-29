class CreateContracts < ActiveRecord::Migration
  def change
    create_table :contracts do |t|
      t.datetime :date
      t.datetime :enrollment_date
      t.datetime :final_class_date
      t.datetime :final_interim_test
      t.decimal :hours
      t.decimal :amount_paid
      t.decimal :paid_hours
      t.decimal :used_hours
      t.decimal :remaining_hours
      t.boolean :new_or_renew
      t.datetime :dt_date
      t.datetime :dc_date
      t.decimal :dt_amount
      t.string :est_class_schedule
      t.decimal :hrs_per_week
      t.decimal :chart_rate
      t.decimal :tuition
      t.decimal :dsc
      t.text :program_explanation
      t.decimal :total_money
      t.references :student, index: true

      t.timestamps
    end
  end
end
