
Given(/^I visit Netflix$/) do
  visit('https://www.netflix.com')
  sleep 2
end

Then(/^I click on Sign in button on the "([^"]*)" screen$/) do |pageName|
  if pageName == 'home'
    page.find(:xpath, ".//a[contains(text(), 'Sign In')]").click
    elsif pageName == 'credentials'
    page.find(:xpath, ".//button[contains(text(), 'Sign In')]").click
    end
  sleep 2
end

Then(/^I click into "([^"]*)" input$/) do |inputField|
  if inputField == 'Email or phone number'
    page.find(:xpath, ".//label[contains(text(), '#{inputField}')]/preceding-sibling::input").set('')
  elsif inputField == 'Password'
    page.find(:xpath, ".//label[contains(text(), '#{inputField}')]/preceding-sibling::input").set('')
  end
  sleep 2
end

Then(/^I select "([^"]*)" profile$/) do |profileName|
  page.find(:xpath, ".//ul[contains(@class, 'choose-profile')]//span[contains(text(), '#{profileName}')]").click
  sleep 2
end


Then('I click on the billboard play button') do ||
  page.find(:xpath, ".//div[contains(@class, 'billboard')]//button//span[contains(text(), 'Play')]").click
  sleep 15
end

#
# Then(/^I click on Search icon button and search for "([^"]*)"$/) do |searchValue|
#   page.find(:xpath, ".//div[contains(@class, 'searchBox')]//button[contains(@aria-label, 'Search')]").click
#   # sleep 10
#   page.find(:xpath, ".//div[contains(@class, 'searchInput')]").set(searchValue)
#   sleep 10
# end