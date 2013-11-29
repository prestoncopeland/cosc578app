class ContractsGuardians < ActiveRecord::Migration
  def change

    create_table :contracts_guardians do |t|
      t.belongs_to :contract
      t.belongs_to :guardian
      t.timestamps
  end

  end
end
