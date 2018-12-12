class Staff < ApplicationRecord
  belongs_to :community
  has_many :posts, as: :authorable
end
