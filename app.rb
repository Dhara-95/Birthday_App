require 'sinatra/base'
require 'date'


class Birthday < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/birthday' do
    session[:name] = params[:name]
    session[:birthday] = params[:birthday]
    @name = session[:name]
    @birthday = session[:birthday]
    @current_date = Date.today.strftime('%d %b %Y')
    #a string of date, laid out like - "25 June 2020"
    p @current_date
    #a string of date, laid out like - "1990/02/03"
    p @birthday
  #  p @birthday.strftime('%d %b %Y')
    if @birthday == @current_date
      erb :birthday
    else
      erb :birthday_countdown
    end

  end

end
