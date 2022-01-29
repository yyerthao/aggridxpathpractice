Given(/^I visit autodraw\.com$/) do
  visit('https://www.autodraw.com')
  sleep 2
end

Then(/^I click on Start Drawing button$/) do
  page.find(:xpath, ".//div[contains(@class, 'button green')]").click
  sleep 2
end

Then(/^I select the color "([^"]*)"$/) do |color|
  if color == '#1a1a1a'
    page.find(:xpath, ".//div[contains(@class, 'swatch-fill')]").click
    page.find(:xpath, ".//div[contains(@style, 'background-color: #1a1a1a')]").click
  end
  sleep 2
end

Then(/^I draw the outline of a "([^"]*)"$/) do |picture|
  page.find(:xpath, ".//div[contains(@id, 'main-canvas-container')]//canvas").click
  # need to come back and add method to click and drag
  sleep 2
end

Then(/^I fill the drawing with the color "([^"]*)"$/) do |color|
  if color == '#fcd015'
    page.find(:xpath, ".//div[contains(@class, 'swatch-fill')]").click
    page.find(:xpath, ".//div[contains(@style, 'background-color: #fcd015')]").click
    page.find(:xpath, ".///img[contains(@src, '/assets/images/icons/tools/bucket.svg')]").click
    page.find(:xpath, ".//div[contains(@id, 'main-canvas-container')]//canvas").click
  end
  sleep 2
end