class SponsorsController < ApplicationController
  before_action :authenticate_sponsor!, only: [:feed]

  def feed
    check_for_bank_details
  end

  private
  def check_for_bank_details
    if current_sponsor.bank_detail.nil?
      redirect_to new_sponsor_bank_detail_path(current_sponsor)
    end
  end
end
