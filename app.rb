require 'sinatra/base'
class Birthday < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/birthday' do
    
  end

end