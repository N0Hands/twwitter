Given(/^I am on the homepage$/) do
  visit '/'
end

Then(/^I should see options (.+)$/) do |options|
  options.split('and').each do |option| 
    expect(page).to have_content(option)
  end
end

############


When(/^I click on "(.*?)" I am taken to the sign up page$/) do |signup|
  visit '/sign_up_page.erb'
end

When(/^I fill in "(.*?)" with "(.*?)"$/) do |selector, fields|
  with_scope(selector) do 
    fields.rows_hash.each do |email, value|
      When %{I fill in "#{email}" with "#{jay@wow.com}"}
    end
   end 
end

When(/^I press "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

Then(/^I should see "(.*?)"$/) do |arg1|
  expect(page).to have_content("Welcome!")
end