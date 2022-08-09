require 'cucumber'
require 'selenium-webdriver'
require 'capybara/cucumber'
require 'rspec'

Capybara.default_driver = :selenium_chrome
Capybara.app_host = 'https://www.google.com.br'
