

Given(/^I am on login page$/) do
  visit(LoginPage)
end

When(/^correct credentials are provided$/) do
  on(LoginPage).log_me_in("nsa@nalpeiron.com", "Nsa1996!")
end

Then(/^I am logged in$/) do
  expect(on(NslPage).logged_user).to eq "nsa@nalpeiron.com"
end

When(/^I use wrong credential, example:$/) do
  on(LoginPage).fill_with_data
end

Then(/^I should not be able to log in$/) do
  expect(on(LoginPage).error_message).to eq "Your login attempt was unsuccessful, please check details and try again"

end

