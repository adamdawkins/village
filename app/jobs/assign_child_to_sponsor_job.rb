class AssignChildToSponsorJob < ApplicationJob
  queue_as :urgent

  def perform(sponsor)
    @sponsorship = Sponsorship.create(
      sponsor: sponsor,
      child: Child.random_unsponsored
    )
  end
end
