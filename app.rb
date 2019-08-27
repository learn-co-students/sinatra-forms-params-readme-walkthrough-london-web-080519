require_relative 'config/environment'

class App < Sinatra::Base

  get '/food_form' do
    erb :food_form
  end

  # Add your post route and action below
  get '/post' do
    @name = params[:name]
    @favorite_food = params[:favorite_food]
  end

  post '/food' do
    "My name is #{params[:name]}, and I love #{params[:favorite_food]}"
  end

end