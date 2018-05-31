# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :update_user_resources
  protect_from_forgery prepend: true

  def update_user_resources
    current_user&.update_resources
  end

  rescue_from CanCan::AccessDenied do
    flash[:alert] = 'Cheater'
    redirect_to root_path
  end
end
