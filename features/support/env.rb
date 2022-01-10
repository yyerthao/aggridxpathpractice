
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'selenium/webdriver/chrome'
require 'pry'
require 'rspec'


Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(app, :options => :chrome)
end

driver = case ENV['BROWSER']
         when 'chrome'
           :chrome
         when 'firefox'
           :selenium_firefox
         when 'webkit'
           :webkit
         when 'ie'
           :internet_explorer
         else
           :chrome
         end

Capybara.default_driver = :selenium_chrome
Capybara.default_selector = :css

