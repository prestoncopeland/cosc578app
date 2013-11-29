class SiblingsStudent < ActiveRecord::Base
  belongs_to :student
  belongs_to :sibling
end