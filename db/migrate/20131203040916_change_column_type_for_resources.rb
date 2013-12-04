class ChangeColumnTypeForResources < ActiveRecord::Migration
  def change
    change_column :resources, :purchase_date, :date
  end
end
