require "sinatra"
require "sinatra/contrib/all"
require "pry-byebug"

require_relative "./models/shoe"

get "/shoos/new" do
  erb(:new)
end