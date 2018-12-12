class Sponsorship < ApplicationRecord
  has_one :sponsor
  belongs_to :child
end
