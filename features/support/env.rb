require 'bundler'
Bundler.setup(:default, :test)
$LOAD_PATH.unshift(".") unless $LOAD_PATH.include?(".")
require 'app'

require 'capybara/cucumber'
Capybara.app = App
Capybara.save_and_open_page_path = File.join(File.dirname(__FILE__), "../../tmp/capybara")