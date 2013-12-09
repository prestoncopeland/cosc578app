class Employee < ActiveRecord::Base
  has_many :daily_data_payments, dependent: :destroy

  has_one :employee_contract, dependent: :destroy

  def self.search_by_full_name(first, last)
    Employee.where("first_name LIKE ? OR last_name LIKE ? OR first_name LIKE ? OR last_name LIKE ?", first, last, last, first)
  end

  def self.search_by_nickname(nickname)
    Employee.where("nickname LIKE ?", nickname).first
  end

end
