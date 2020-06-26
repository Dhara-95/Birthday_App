require 'sinatra/base'
class Birthday < Sinatra::Base

  get '/' do
    session[:name] = params[:name]
    session[:birthday] = params[:birthday]
    erb :index
  end

  post '/birthday' do
    p "Name"
    p session[:name]
    p "Birthday"
    p session[:birthday]
    @name = session[:name]
    @birthday = session[:birthday]
    erb :birthday
  end

end