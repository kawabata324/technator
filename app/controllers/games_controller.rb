class GamesController < ApplicationController

  def new
  end

  def create
    game = Game.create!(status: 'in_progress')
    redirect_to  new_game_progresses_path(game)
  end
end
