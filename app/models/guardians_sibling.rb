class GuardiansSibling < ActiveRecord::Base
  belongs_to :sibling
  belongs_to :guardian
end