Feature: Log in page
	As a Nalpeiron member
	I want to to able to log in 
	So I can use my service panel

	Background: 
		Given I am on login page
	
	Scenario: Successful login	
		When correct credentials are provided
		Then I am logged in

	Scenario: Failed login
		When wrong credentials are provided
		Then member is not able to log in