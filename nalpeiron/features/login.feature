Feature: Log in page
	As a Nalpeiron member
	I want to to able to log in 
	So I can use my service panel

	Background: 
		Given I am on login page
	@good
	Scenario: Successful login	
		When provided credentials are "correct"
		Then I am logged in
	@bad
	Scenario: Failed login
		When provided credentials are "bad"
		Then I should not be able to log in 
