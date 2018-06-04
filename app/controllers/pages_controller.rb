# frozen_string_literal: true

class PagesController < ApplicationController
  before_action :authenticate_user!

  def dashboard
    @resources = Resource.all
    @stats = Stat.all
    if current_user.rocket.nil?
      redirect_to new_rocket_path
    else
      @rocket = current_user.rocket
    end
  end
end
