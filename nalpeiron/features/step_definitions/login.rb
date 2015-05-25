Given(/^I am on login page$/) do
  visit(LoginPage)
end

When(/^correct credentials are provided$/) do
  on(LoginPage).log_me_in("nsa@nalpeiron.com", "Nsa1996!")
end

Then(/^I am logged in$/) do
  expect(on(NslPage).logged_user).to eq "nsa@nalpeiron.com"
end

