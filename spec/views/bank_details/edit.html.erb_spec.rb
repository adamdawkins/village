require 'rails_helper'

RSpec.describe "bank_details/edit", type: :view do
  before(:each) do
    @bank_detail = assign(:bank_detail, BankDetail.create!(
      :new => "MyString"
    ))
  end

  it "renders the edit bank_detail form" do
    render

    assert_select "form[action=?][method=?]", bank_detail_path(@bank_detail), "post" do

      assert_select "input[name=?]", "bank_detail[new]"
    end
  end
end
