class Employee < ActiveRecord::Base
  has_many :daily_data

  def self.search_by_full_name(first, last)
    Employee.where("first_name LIKE ? OR last_name LIKE ? OR first_name LIKE ? OR last_name LIKE ?", first, last, last, first)
  end

end
