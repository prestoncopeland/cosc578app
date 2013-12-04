class FixColumnInDailyDatum < ActiveRecord::Migration
  def change
    rename_column :daily_data, :successful?, :successful
    change_column :daily_data, :date, :date
  end
end
