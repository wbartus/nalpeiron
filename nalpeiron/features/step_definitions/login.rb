

Given(/^I am on login page$/) do
  visit(LoginPage)
end

When(/^provided credentials are "(.*?)"$/) do |scenario|
  on(LoginPage).log_me_in(scenario)
end

Then(/^I am logged in$/) do
  @data = on(LoginPage).data_for :correct
  #expect(on(NslPage).logged_user).to eq @data["username"]
  expect(on(NslPage).logged_user).to eq on(NslPage).take["username"]
end

Then(/^I should not be able to log in$/) do
  expect(on(LoginPage).error_message).to eq "Your login attempt was unsuccessful, please check details and try again"

end

