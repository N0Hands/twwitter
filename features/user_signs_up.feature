Feature: User Sign Up
	In order to use Twwitter
	As a user
	I want to be able to sign up

	Scenario: A maker can see that she can sign up
		Given I am on the homepage 
		Then I should see options Sign up and Log in

	Scenario: When the user signs up
		Given I am on the homepage 
		When I click on "Sign up" I am taken to the sign up page
		And I fill in "email" with "jay@wow.com"
		And I fill in "name" with "Jay Jayson"
		And I fill in "username" with "jay"
		And I press "Sign up"
		Then I should see "Welcome to Twwitter"