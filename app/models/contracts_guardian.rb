class ContractsGuardian < ActiveRecord::Base
  belongs_to :contract
  belongs_to :guardian
end