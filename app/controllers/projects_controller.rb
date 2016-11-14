class ProjectsController < ApplicationController
  #load_and_authorize_resource 
  before_action :set_project, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /projects
  # GET /projects.json
  def index
    @projects = Project.all
  end

  # GET /projects/1
  # GET /projects/1.json
  def show
    @profiles_name = []
    @profiles = User.all
    @profiles.each do |p|
    @profiles_name << p.company_name
    end
  end

  # GET /projects/new
  def new
    if current_user.role == "کارفرما"
      redirect_to root_url
    end
    @profiles_name = []  
    @project = Project.new
    @profiles =  User.all
    @profiles.each do |p|
      if not p.nil?
        @profiles_name << p
      end
    end
    
    # @project.user_id = current_user.id
  end

  # GET /projects/1/edit
  def edit
    if current_user.role == "کارفرما"
      redirect_to root_url
    end
    @profiles_name = []  
    @profiles =  User.all
    @profiles.each do |p|
    
      if not p.nil?
        @profiles_name << p
      end
  end
end
  # POST /projects
  # POST /projects.json
  def create
    if current_user.role == "کارفرما"
      redirect_to root_url
    end
    @project = Project.new(project_params)
    #byebug
    respond_to do |format|
      if @project.save
        format.html { redirect_to @project, notice: 'Project was successfully created.' }
        format.json { render :show, status: :created, location: @project }
      else
        format.html { render :new }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /projects/1
  # PATCH/PUT /projects/1.json
  def update
    respond_to do |format|
      if @project.update(project_params)
        format.html { redirect_to @project, notice: 'Project was successfully updated.' }
        format.json { render :show, status: :ok, location: @project }
      else
        format.html { render :edit }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projects/1
  # DELETE /projects/1.json
  def destroy

    @project.destroy
    respond_to do |format|
      format.html { redirect_to projects_url, notice: 'Project was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_params
      params.require(:project).permit(:name, :start_time, :end_time, :image , :avatar , :user_id, :progress_percent , :karfarma_name , :nazer_name , :nazer_id)
    end
end
