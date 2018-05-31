# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :update_user_resources
  protect_from_forgery with: :exception

  def update_user_resources
    current_user&.update_resources
  end
end
