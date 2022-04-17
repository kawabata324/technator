class GamesController < ApplicationController

  def new
  end

  def create
    Game.create!(status: 1)
    render plain: "game started! Let's start next section."
  end
end
