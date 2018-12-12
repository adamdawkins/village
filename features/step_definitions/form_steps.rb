When("I submit the form") do
  find('input[name="commit"]').click
end

When("I fill in {string} with {string}") do |field, value|
  fill_in field, with: value
end

When("the password fields with {string}") do |password|
  fill_in "Password", with: password
  fill_in "Password confirmation", with: password
end
