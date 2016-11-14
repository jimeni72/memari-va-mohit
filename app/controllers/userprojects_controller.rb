class UserprojectsController < ApplicationController
  before_action :set_userproject, only: [:show, :edit, :update, :destroy]

  # GET /userprojects
  # GET /userprojects.json
  def index
    @userprojects = Userproject.all
  end

  # GET /userprojects/1
  # GET /userprojects/1.json
  def show
  end

  # GET /userprojects/new
  def new
    @userproject = Userproject.new
  end

  # GET /userprojects/1/edit
  def edit
  end

  # POST /userprojects
  # POST /userprojects.json
  def create
    @userproject = Userproject.new(userproject_params)

    respond_to do |format|
      if @userproject.save
        format.html { redirect_to @userproject, notice: 'Userproject was successfully created.' }
        format.json { render :show, status: :created, location: @userproject }
      else
        format.html { render :new }
        format.json { render json: @userproject.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /userprojects/1
  # PATCH/PUT /userprojects/1.json
  def update
    respond_to do |format|
      if @userproject.update(userproject_params)
        format.html { redirect_to @userproject, notice: 'Userproject was successfully updated.' }
        format.json { render :show, status: :ok, location: @userproject }
      else
        format.html { render :edit }
        format.json { render json: @userproject.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /userprojects/1
  # DELETE /userprojects/1.json
  def destroy
    @userproject.destroy
    respond_to do |format|
      format.html { redirect_to userprojects_url, notice: 'Userproject was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_userproject
      @userproject = Userproject.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def userproject_params
      params.require(:userproject).permit(:user_id, :project_id)
    end
end
