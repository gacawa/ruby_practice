Feature: Guru99 Registration

As a user
I want to log into Guru99 bank
So that I can use the Guru99 services

Background:
Given I am on the guru homepage

Scenario: Registration on Guru99 site without email
When I register without providing an email address
Then I see an error message

Scenario: Registration on Guru99 site with valid email
When I register with a valid email address
Then I see my new login details
