class CharactersController < ApplicationController
  def index
    @character = Character.new
    @characters = Character.all
  end

  def arena
    @characters = Character.all
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
      # add flash success
    else
      # add flash error ?
    end
    redirect_to characters_path
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
