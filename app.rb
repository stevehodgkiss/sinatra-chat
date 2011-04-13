require 'sinatra/base'
require 'slim'

class App < Sinatra::Base
  set :public, File.dirname(__FILE__) + '/public'
  use Rack::Session::Cookie, :key => "sinatra-chat", :secret => "changeme"
  
  helpers do
    def current_user
      session[:name]
    end
  end
  
  get "/" do
    redirect "/sign_in" unless current_user
    slim :homepage
  end
  
  get "/sign_in" do
    slim :sign_in
  end
  
  post "/sign_in" do
    session[:name] = params[:name]
    redirect "/"
  end
  
  get "/sign_out" do
    session[:name] = nil
    redirect "/"
  end
end