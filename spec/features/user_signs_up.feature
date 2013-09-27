Feature: User Sign Up
In order to use Twwitter
As a user
I want to be able to sign up

Scenario: When the user is on the homepage
Given I have arrived at the homepage
Then I should see "Sign up!" and "Log in"
And there should be a link to do this
And no twweets should appear on the site

Scenario: When the user signs up
Given I have clicked to the sign up page
Then I should see "enter details"
And a form should appear
And the form should ask for my email, password, name and username.

