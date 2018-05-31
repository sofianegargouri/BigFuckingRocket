class UserResourcesController < ApplicationController
  before_action :set_user_resource, only: [:show, :edit, :update, :destroy]

  # GET /user_resources
  # GET /user_resources.json
  def index
    @user_resources = UserResource.all
  end

  # GET /user_resources/1
  # GET /user_resources/1.json
  def show
  end

  # GET /user_resources/new
  def new
    @user_resource = UserResource.new
  end

  # GET /user_resources/1/edit
  def edit
  end

  # POST /user_resources
  # POST /user_resources.json
  def create
    @user_resource = UserResource.new(user_resource_params)

    respond_to do |format|
      if @user_resource.save
        format.html { redirect_to @user_resource, notice: 'User resource was successfully created.' }
        format.json { render :show, status: :created, location: @user_resource }
      else
        format.html { render :new }
        format.json { render json: @user_resource.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_resources/1
  # PATCH/PUT /user_resources/1.json
  def update
    respond_to do |format|
      if @user_resource.update(user_resource_params)
        format.html { redirect_to @user_resource, notice: 'User resource was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_resource }
      else
        format.html { render :edit }
        format.json { render json: @user_resource.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_resources/1
  # DELETE /user_resources/1.json
  def destroy
    @user_resource.destroy
    respond_to do |format|
      format.html { redirect_to user_resources_url, notice: 'User resource was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_resource
      @user_resource = UserResource.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_resource_params
      params.require(:user_resource).permit(:quantity, :user_id, :resource_id)
    end
end
