class RocketPartsController < ApplicationController
  load_and_authorize_resource

  # GET /rocket_parts
  # GET /rocket_parts.json
  def level_up
    @rocket_part.level_up
  end
end
