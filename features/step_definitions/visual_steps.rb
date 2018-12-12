Then(/^(?:I|they) should see "([^"]*?)"$/) do |string|
  expect(page).to have_content(string)
end

Then(/^(?:I|they) should not see "([^"]*?)"$/) do |string|
  expect(page).to_not have_content(string)
end

Then(/^(?:I|they) should see a "([^"]*?)" button$/) do |text|
  expect(page).to have_button(text)
end

Then(/^(?:I|they) should see a "([^"]*?)" field with the value "([^"]*?)"$/) do |name, value|
  expect(page).to have_field(name, with: value)
end
