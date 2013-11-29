class AddDatePurchasedToSupply < ActiveRecord::Migration
  def change
    add_column :supplies, :date_purchased, :datetime
  end
end
