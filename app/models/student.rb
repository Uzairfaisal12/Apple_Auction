class Student < ApplicationRecord
  has_many :demos
  validates :name, :number, :presence => true
  validates :name, :length => { :minimum =>5}
  validates :name, :number, :uniqueness => true

#
end
