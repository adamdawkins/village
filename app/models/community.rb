class Community < ApplicationRecord
  belongs_to :country

  has_many :children
  has_many :staff
end
