require 'sinatra/base'
require 'slim'

class App < Sinatra::Base
  set :public, File.dirname(__FILE__) + '/public'
  enable :sessions
  
  helpers do
    def current_user
      session[:name]
    end
  end
  
  get "/" do
    slim :homepage
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