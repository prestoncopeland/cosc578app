class CreateResources < ActiveRecord::Migration
  def change
    create_table :resources do |t|
      t.string :title
      t.string :subject
      t.integer :pages
      t.integer :publication_year
      t.datetime :purchase_date

      t.timestamps
    end
  end
end
