require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  disable :show_exceptions
  get '/' do
    erb :index
  end

  post '/names' do
    player1 = Player.new(params[:player_1_name])
    player2 = Player.new(params[:player_2_name])
    @game = Game.create(player1, player2)
    redirect '/play'
  end

get '/play' do
  @game = Game.instance
  erb :play
end

get '/attack' do
  @game = Game.instance
  @game.attack(@game.not_turn)
  redirect '/play'
end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
