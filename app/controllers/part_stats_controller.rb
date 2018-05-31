# frozen_string_literal: true

class PartStatsController < ApplicationController
  before_action :set_part_stat, only: %i[show edit update destroy]

  # GET /part_stats
  # GET /part_stats.json
  def index
    @part_stats = PartStat.all
  end

  # GET /part_stats/1
  # GET /part_stats/1.json
  def show; end

  # GET /part_stats/new
  def new
    @part_stat = PartStat.new
  end

  # GET /part_stats/1/edit
  def edit; end

  # POST /part_stats
  # POST /part_stats.json
  def create
    @part_stat = PartStat.new(part_stat_params)

    respond_to do |format|
      if @part_stat.save
        format.html { redirect_to @part_stat, notice: 'Part stat was successfully created.' }
        format.json { render :show, status: :created, location: @part_stat }
      else
        format.html { render :new }
        format.json { render json: @part_stat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /part_stats/1
  # PATCH/PUT /part_stats/1.json
  def update
    respond_to do |format|
      if @part_stat.update(part_stat_params)
        format.html { redirect_to @part_stat, notice: 'Part stat was successfully updated.' }
        format.json { render :show, status: :ok, location: @part_stat }
      else
        format.html { render :edit }
        format.json { render json: @part_stat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /part_stats/1
  # DELETE /part_stats/1.json
  def destroy
    @part_stat.destroy
    respond_to do |format|
      format.html { redirect_to part_stats_url, notice: 'Part stat was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_part_stat
    @part_stat = PartStat.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def part_stat_params
    params.require(:part_stat).permit(:ratio, :stat_id, :part_id)
  end
end
