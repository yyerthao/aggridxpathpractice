
Given(/^I visit Youtube$/) do
  visit('https://www.youtube.com')
  sleep 2
end

When('I search for What does the fox say') do
  page.find(:xpath, ".//div[contains(@id, 'search-input')]//input[contains(@id, 'search')]").set('What does the fox say')
  page.find(:xpath, ".//ytd-searchbox//button[contains(@id, 'search-icon-legacy')]").click
  sleep 2
end

Then('I should see search result: for {string}') do |string|
  page.find(:xpath, ".//ytd-item-section-renderer//ytd-video-renderer[contains(normalize-space(), '#{string}')]").click
  sleep 2
end

