require "sinatra"
require "sinatra/contrib/all"
require "pry-byebug"

require_relative "./models/shoe"

get "/shoos/new" do
  erb(:new)
end

post "/shoos" do
  @shoe = Shoe.new(params)
  @shoe.save()
  erb(:create)
end

get "/shoos" do
  @shoes = Shoe.all
  erb(:index)
end

