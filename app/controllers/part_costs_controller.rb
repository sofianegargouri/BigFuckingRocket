# frozen_string_literal: true

class PartCostsController < ApplicationController
  before_action :set_part_cost, only: %i[show edit update destroy]

  # GET /part_costs
  # GET /part_costs.json
  def index
    @part_costs = PartCost.all
  end

  # GET /part_costs/1
  # GET /part_costs/1.json
  def show; end

  # GET /part_costs/new
  def new
    @part_cost = PartCost.new
  end

  # GET /part_costs/1/edit
  def edit; end

  # POST /part_costs
  # POST /part_costs.json
  def create
    @part_cost = PartCost.new(part_cost_params)

    respond_to do |format|
      if @part_cost.save
        format.html { redirect_to @part_cost, notice: 'Part cost was successfully created.' }
        format.json { render :show, status: :created, location: @part_cost }
      else
        format.html { render :new }
        format.json { render json: @part_cost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /part_costs/1
  # PATCH/PUT /part_costs/1.json
  def update
    respond_to do |format|
      if @part_cost.update(part_cost_params)
        format.html { redirect_to @part_cost, notice: 'Part cost was successfully updated.' }
        format.json { render :show, status: :ok, location: @part_cost }
      else
        format.html { render :edit }
        format.json { render json: @part_cost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /part_costs/1
  # DELETE /part_costs/1.json
  def destroy
    @part_cost.destroy
    respond_to do |format|
      format.html { redirect_to part_costs_url, notice: 'Part cost was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_part_cost
    @part_cost = PartCost.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def part_cost_params
    params.require(:part_cost).permit(:cost, :belongs_to, :belongs_to)
  end
end
