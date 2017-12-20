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
      redirect_to characters_path
    else
      @characters = Character.all
      render 'index'
    end
  end

  def update
    @character = Character.find(character_params[:id])
    if @character.update_attributes(character_params)
      redirect_to characters_path
    else
      render 'index'
    end
  end

  def destroy
    Character.find(character_params[:id]).destroy
    redirect_to characters_path
  end

  private

    def character_params
      params.require(:character).permit(:name, :health_points, :attack_points, :bio, :img_url, :id)
    end
end
