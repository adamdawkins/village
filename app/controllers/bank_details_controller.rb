class BankDetailsController < ApplicationController
  before_action :set_sponsor, only: [:new, :create]

  def new
    @bank_detail = @sponsor.build_bank_detail
  end

  def create
    @bank_detail = @sponsor.build_bank_detail(bank_detail_params)

    if @bank_detail.save
      redirect_to root_path
    else
      flash[:alert] = "Something went wrong"
      render :new
    end
  end

  private
    def set_sponsor
      @sponsor = Sponsor.find(params[:sponsor_id])
    end

    def bank_detail_params
      params.require(:bank_detail).permit(:address_1, :postcode,
                                          :sort_code, :account_number,
                                          :country
                                         )
    end
end
