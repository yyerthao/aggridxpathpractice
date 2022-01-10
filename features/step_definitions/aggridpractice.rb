

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

Then('I click on the column header') do
  key = :command
  sleep 2
  page.find(:xpath, ".//div[contains(@class, 'ag-header-cell')]/parent::div[contains(@class, 'ag-header-row-column') and (@aria-rowindex='2')]").click
  # the below line is the original, KEEP !
  # page.find(:xpath, ".//div[contains(@role, 'columnheader') and (@aria-colindex='1')]//span[contains(text(), '#{columnName}')]").click(key)
  sleep 2
end


Then('I click on right arrow key until I see {string} column') do |columnName|
  key = :right
    sleep 2
  until columnName
    sleep 2
    page.find(:xpath, ".//div[contains(@class, 'ag-header-cell')]/parent::div[contains(@class, 'ag-header-row-column') and (@aria-rowindex='2')]").click(key)
    sleep 2
  end
  sleep 5
end





