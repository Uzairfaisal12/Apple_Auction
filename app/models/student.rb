class Student < ApplicationRecord
  validates :name, :number, :presence => true
  validates :name, :length => { :minimum =>2}
  validates :name, :uniqueness => true
end
