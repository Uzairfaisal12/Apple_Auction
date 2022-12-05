class Student < ApplicationRecord
  validates :name, :number, :presence => true
  validates :name, :length => { :minimum =>5}
  validates :name, :number, :uniqueness => true
end
