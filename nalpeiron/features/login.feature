Feature: Log in page
	As a Nalpeiron member
	I want to to able to log in 
	So I can use my service panel

	Background: 
		Given I am on login page
	
	Scenario: Successful login	
		When correct credentials are provided
		Then I am logged in
	@bad
	Scenario: Failed login
		When I use wrong credential, example:
		Then I should not be able to log in 
