require 'rails_helper'

RSpec.describe "bank_details/show", type: :view do
  before(:each) do
    @bank_detail = assign(:bank_detail, BankDetail.create!(
      :new => "New"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/New/)
  end
end
