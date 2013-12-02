class FixSupplyColumnName < ActiveRecord::Migration
  def change
    rename_column :supplies, :type, :kind
  end
end
