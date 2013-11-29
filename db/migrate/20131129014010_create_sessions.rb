class CreateSessions < ActiveRecord::Migration
  def change
    create_table :sessions do |t|
      t.decimal :hours
      t.datetime :date
      t.string :type
      t.references :student, index: true
      t.references :tutor, index: true

      t.timestamps
    end
  end
end
