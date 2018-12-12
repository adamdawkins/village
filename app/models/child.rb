class Child < ApplicationRecord
  belongs_to :community

  has_one :sponsorship
  has_one :sponsor, through: :sponsorship
  has_many :posts, as: :authorable
end
