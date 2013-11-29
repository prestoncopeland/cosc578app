class GuardiansSiblings < ActiveRecord::Migration

  def change
    create_table :guardians_siblings do |t|
      t.belongs_to :sibling
      t.belongs_to :guardian
      t.timestamps
  end
end
end
