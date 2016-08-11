class Happening < ApplicationRecord
  has_and_belongs_to_many :users
  has_many :days
  has_many :lists
end
