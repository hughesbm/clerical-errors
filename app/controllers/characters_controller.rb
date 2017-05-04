class CharactersController < ApplicationController
  # before_action :authenticate_user!, only: [:new, :create]

  def index
    @characters = Character.all
  end

  def new
    @character = Character.new
  end

  def create
    @character = current_user.characters.create(character_params)
    redirect_to characters_path
  end

  def show
  end

  private

  def character_params
    params.require(:character).permit(:name, :character_class, :race, :level)
  end

  helper_method :current_character

  def current_character
    @current_character ||= Character.find(params[:id])
  end
end
