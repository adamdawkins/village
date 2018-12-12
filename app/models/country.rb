class Country < ApplicationRecord
  has_many :communities
  has_many :children, through: :communities
end
