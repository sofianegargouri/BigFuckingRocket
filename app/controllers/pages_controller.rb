# frozen_string_literal: true

class PagesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_constants

  def dashboard; end

  def leaderboard
    @rockets = Rocket.order(max_distance: :desc)
  end

  private

  def set_constants
    @resources = Resource.all
    @stats = Stat.all
    if current_user&.rocket.nil?
      redirect_to new_rocket_path
    else
      @rocket = current_user.rocket
    end
  end
end
