require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/game'
require_relative './lib/attack'

class Battle < Sinatra::Base
  enable :sessions

  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    @game = Game.create(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  get '/attack' do
    Attack.run(@game.current_opponent)
    erb :attack
  end

  post '/attack' do
    if @game.game_over?
      redirect '/game-over'
    else
      redirect '/attack'
    end
  end

  post '/switch-turns' do
    @game.switch_turns
    redirect '/play'
  end

  get '/game-over' do
    erb :game_over
  end

  run if app_file == 0
end
