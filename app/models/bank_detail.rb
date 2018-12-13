class BankDetail < ApplicationRecord
  belongs_to :sponsor

  after_create :generate_sponsorship

  def generate_sponsorship
    AssignChildToSponsorJob.perform_now(self.sponsor)
  end
end
