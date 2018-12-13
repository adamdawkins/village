class Child < ApplicationRecord
  belongs_to :community

  has_one :sponsorship
  has_one :sponsor, through: :sponsorship
  has_many :posts, as: :authorable

  def self.random_unsponsored
    Child.includes(:sponsorship).where(sponsorships: {child_id: nil }).order("RANDOM()").first
  end
end
