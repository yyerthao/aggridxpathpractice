

Given(/^I visit the website: https:\/\/www\.ag\-grid\.com\/$/) do
  visit('https://www.ag-grid.com/')
end

When(/^I click on "([^"]*)" link$/) do |linkName|
  page.find(:xpath, ".//div[contains(@id, 'main-nav')]//a[contains(text(), '#{linkName}')]").click
  sleep 2
end

Then(/^I click on dropdown menu: "([^"]*)"$/) do |theme|
  page.find(:xpath, ".//select[contains(@id, 'grid-theme')]").click
  page.find(:xpath, ".//select[contains(@id, 'grid-theme')]//option[contains(text(), '#{theme}')]").click
  sleep 2
end

Then(/^I click on first row named "([^"]*)" holding "([^"]*)" key$/) do |columnName, key|
  key = :command
  sleep 2
  page.find(:xpath, ".//div[contains(@role, 'columnheader') and (@aria-colindex='1')]//span[contains(text(), '#{columnName}')]").click(key)
  sleep 2

end


Then('I click on {string} arrow key until I see {string} column') do |key, columnName|
  key = :right
  # allColumns = ".//div[contains(@class, 'ag-cell-label-container')]"
    sleep 2
  until columnName
    sleep 2
    page.find(:xpath, ".//div[contains(@class, 'ag-cell-label-container')]", wait: 5).click(key)
    sleep 2
  end
  sleep 2
end


