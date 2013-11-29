class SiblingsStudents < ActiveRecord::Migration
  def change
    create_table :siblings_students do |t|
      t.belongs_to :sibling
      t.belongs_to :student
      t.timestamps
  end
end
end
