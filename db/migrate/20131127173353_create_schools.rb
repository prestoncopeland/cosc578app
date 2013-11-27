class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.string :name
      t.string :contact
      t.string :contact_phone

      t.timestamps
    end
  end
end
