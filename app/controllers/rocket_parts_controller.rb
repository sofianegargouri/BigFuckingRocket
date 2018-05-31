# frozen_string_literal: true

class RocketPartsController < ApplicationController
  before_action :set_rocket_part, only: %i[show edit update destroy]

  # GET /rocket_parts
  # GET /rocket_parts.json
  def index
    @rocket_parts = RocketPart.all
  end

  # GET /rocket_parts/1
  # GET /rocket_parts/1.json
  def show; end

  # GET /rocket_parts/new
  def new
    @rocket_part = RocketPart.new
  end

  # GET /rocket_parts/1/edit
  def edit; end

  # POST /rocket_parts
  # POST /rocket_parts.json
  def create
    @rocket_part = RocketPart.new(rocket_part_params)

    respond_to do |format|
      if @rocket_part.save
        format.html { redirect_to @rocket_part, notice: 'Rocket part was successfully created.' }
        format.json { render :show, status: :created, location: @rocket_part }
      else
        format.html { render :new }
        format.json { render json: @rocket_part.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rocket_parts/1
  # PATCH/PUT /rocket_parts/1.json
  def update
    respond_to do |format|
      if @rocket_part.update(rocket_part_params)
        format.html { redirect_to @rocket_part, notice: 'Rocket part was successfully updated.' }
        format.json { render :show, status: :ok, location: @rocket_part }
      else
        format.html { render :edit }
        format.json { render json: @rocket_part.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rocket_parts/1
  # DELETE /rocket_parts/1.json
  def destroy
    @rocket_part.destroy
    respond_to do |format|
      format.html { redirect_to rocket_parts_url, notice: 'Rocket part was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_rocket_part
    @rocket_part = RocketPart.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def rocket_part_params
    params.require(:rocket_part).permit(:level, :rocket_id, :part_id)
  end
end
