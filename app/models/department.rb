class Department < ApplicationRecord
  has_one :manager
  has_one :manager_histories, through: :manager
end
