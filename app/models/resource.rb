class Resource < ActiveRecord::Base

  def self.find_by_title(title)
    Resource.where("title LIKE ?", title)
  end

  def self.find_by_receipt_number(receipt)
    Resource.where("receipt_number LIKE ?", receipt)
  end

end
