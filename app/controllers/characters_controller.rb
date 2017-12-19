class CharactersController < ApplicationController
  def index
    @character = Character.new
    @characters = Character.all
  end

  def arena
  end

  def create
    @character = Character.new(character_params)
    if @character.save
      redirect_to index_path
    else
      render '/index'
    end
  end

  private

    def character_params
      params.require(:character).permit(:name, :health_points, :attack_points)
    end
end
