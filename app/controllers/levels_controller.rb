class LevelsController < ApplicationController
  # before_action :authenticate_user!, only: [:new, :create]

  def new
    @level = Level.new
  end

  def create
    @level = current_character.levels.create(level_params)
    if @level.valid?
      redirect_to character_path(current_character)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  helper_method :current_character

  def current_character
    @current_character ||= Character.find(params[:character_id])
  end

  def level_params
    params.require(:level).permit(:base_class, :sub_class)
  end
end
