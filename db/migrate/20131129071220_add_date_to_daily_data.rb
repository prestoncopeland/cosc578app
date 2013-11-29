class AddDateToDailyData < ActiveRecord::Migration
  def change
    add_column :daily_data, :date, :datetime
  end
end
