require 'rails_helper'

RSpec.describe "bank_details/index", type: :view do
  before(:each) do
    assign(:bank_details, [
      BankDetail.create!(
        :new => "New"
      ),
      BankDetail.create!(
        :new => "New"
      )
    ])
  end

  it "renders a list of bank_details" do
    render
    assert_select "tr>td", :text => "New".to_s, :count => 2
  end
end
