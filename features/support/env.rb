require 'bundler'
Bundler.setup(:default, :test)
$LOAD_PATH.unshift(".") unless $LOAD_PATH.include?(".")
require 'faye'
require 'app'

require 'capybara/cucumber'
builder = Rack::Builder.new do
  use Faye::RackAdapter, :mount      => '/faye',
                         :timeout    => 45
  run App
end
Capybara.app = builder.to_app
Capybara.save_and_open_page_path = File.join(File.dirname(__FILE__), "../../tmp/capybara")