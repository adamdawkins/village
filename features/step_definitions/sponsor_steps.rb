Then("I should be on my bank details page") do
  @me = Sponsor.first
  expect(current_path).to eq new_sponsor_bank_detail_path(@me)
end

