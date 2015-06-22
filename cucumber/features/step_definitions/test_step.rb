require 'watir-webdriver'
require 'colorize'
require 'faker'
browser = Watir::Browser.new
faker = Faker::Internet.free_email

Given(/^I am on the guru homepage$/) do
  browser.goto "http://demo.guru99.com/"
end

When(/^I register without providing an email address$/) do
  browser.text_field(:name,"emailid").set("")
  browser.button(:name,"btnLogin").click
end

Then(/^I see an error message$/) do
  browser.li(:id => 'message9')
  puts "Email is required".red
end

When(/^I register with a valid email address$/) do
  browser.text_field(:name,"emailid").set(faker)
    browser.button(:name,"btnLogin").click
end

Then(/^I see my new login details$/) do
  browser.li(:id => '')
  puts "Registration Successful".green
  browser.close
end