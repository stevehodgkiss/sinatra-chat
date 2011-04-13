require 'sinatra/base'
require 'slim'

class App < Sinatra::Base
  set :public, File.dirname(__FILE__) + '/public'
  get "/" do
    slim :homepage
  end
end