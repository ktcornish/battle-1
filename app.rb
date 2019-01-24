require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  disable :show_exceptions
  get '/' do
    erb :index
  end

  get '/two_player_names' do
    erb :two_player_index
  end

  get '/one_player_name' do
    erb :one_player_index
  end

  post '/names' do
    player1 = Player.new(params[:player_1_name])
    player2 = Player.new(params[:player_2_name])
    @game = Game.create(player1, player2)
    redirect '/play_two_player'
  end

  post '/name' do
    player1 = Player.new(params[:player_1_name])
    player2 = Player.new("Computer")
    @game = Game.create(player1, player2)
    redirect '/play_two_player'
  end

  get '/play_two_player' do
    @game = Game.instance
    erb :play_two_player
  end

  get '/attack' do
    @game = Game.instance
    @game.attack(@game.not_turn)
    redirect '/play_two_player'
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
