require_relative "config/application"
require "sinatra"
require "sinatra/reloader"
require "sinatra/activerecord"
require "pry-byebug"

# As a user I can list all the restaurants => index
# colocar links para cada restaurante
get "/" do
  @restaurants = Restaurant.all
  erb :index
end

# As a user I can see one restaurant's details => show
get "/restaurants/:id" do
  @restaurant = Restaurant.find(params[:id])
  erb :show
end

# As a user I can create a restaurant => create
