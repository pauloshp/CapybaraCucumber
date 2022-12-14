require 'cucumber'
require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require 'rspec'
require 'pry'

ENVIRONMENT = ENV['ENVIRONMENT']
ENVIRONMENT_CONFIG = YAML.load_file(File.dirname(__FILE__) + "/environment/#{ENVIRONMENT}.yml")
puts ENVIRONMENT_CONFIG
URL = ENVIRONMENT_CONFIG['url']

# Capybara.register_driver :my_chrome do |app|
#     caps = Selenium::WebDriver::Remote::Capabilities.chrome("goog:chromeOptions" => {"args" => ["--ignore-ssl-errors", "--ignore-certificate-errors", "--disable-popup-blocking", "--disable-gpu", "--disable-translate", "--start-maximized", "--incognito", "--no-sandbox", "--acceptInsecureCerts=true", "--window-size=1420,835", "--disable-impl-side-painting", "--debug_level=3"]})

#     if ENV['HEADLESS']
#         caps['goog:chromeOptions']['args'] << '--headless'
#         caps['goog:chromeOptions']['args'] << '--disable-site-isolation-trials'
#     end

#     client = Selenium::WebDriver::Remote::Http::Default.new
#     client.read_timeout = 90
#     options = { browser: :chrome, desired_capabilities: caps, http_client: client }

#     Capybara::Selenium::Driver.new(app, options)
# end

Capybara.register_driver :my_chrome do |app|
    Capybara::Selenium::Driver.new app, browser: :chrome, options: Selenium::WebDriver::Chrome::Options.new(args: %w[window-size=1420,835])
end

Capybara.default_driver = :my_chrome
Capybara.app_host = URL
Capybara.default_max_wait_time = 10
