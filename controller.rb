require('sinatra')
require('sinatra/reloader')
require('pry-byebug')
require_relative('./models/game')
also_reload('./models/*')

get '/' do
  erb(:home)
end

# get '/game/:hand1/:hand2' do
#   @result = Game.play(params[:hand1], params[:hand2])
#   #binding.pry
#   erb(:display_result)
# end

get '/game/:hand1/random' do
  hand1 = params[:hand1]
  hand2 = Game.random_choice
  @result = Game.play(hand1, hand2)
  erb(:display_result)
end
