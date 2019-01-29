require('sinatra')
require('sinatra/reloader')
require('pry-byebug')
require_relative('./models/game')
also_reload('./models/*')

get '/' do
  erb(:home)
end

get '/game/:p1/:p2' do
  new_game = Game.new(params[:p1].to_s, params[:p2].to_s)
  @result = new_game.play()
  erb(:display_result)
end
