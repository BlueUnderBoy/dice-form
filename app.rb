require "sinatra"
require "sinatra/reloader"
require "http"

get("/") do
  erb(:homepage)
end

get("/process_roll") do

  @dice = params.fetch("dice").to_i
  @side = params.fetch("side").to_i

  @rolls = []
  @dice.times do
    @rolls.push(rand(1..@side))
  end
  
  erb(:result)
end
