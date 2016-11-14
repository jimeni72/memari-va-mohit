class ReportsController < ApplicationController
  # load_and_authorize_resource 
  before_action :set_report, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /reports
  # GET /reports.json
  def index
    if current_user.role == "کارفرما"
      redirect_to root_url
    end
    @reports = Report.all
  end

  # GET /reports/1
  # GET /reports/1.json
  def show
    if current_user.role == "کارفرما"
      redirect_to root_url
    end
    @projects_name = []
    @projects = current_user.nazer_projects.all
    @projects.each do |p|
    @projects_name << p.name
    end
  end

  # GET /reports/new
  def new
    if current_user.role == "کارفرما"
      redirect_to root_url
    end
    @projects_name = []  
    @report = Report.new
    @projects =  current_user.nazer_projects.all
    @projects.each do |p|
    @projects_name << p.name
      if not p.nil?
        @projects_name << p
      end
    end
  end

  # GET /reports/1/edit
  def edit
    if current_user.role == "کارفرما"
      redirect_to root_url
    end
  end

  # POST /reports
  # POST /reports.json
  def create
    if current_user.role == "کارفرما"
      redirect_to root_url
    end
    @report = Report.new(report_params)

    respond_to do |format|
      if @report.save


        format.html { redirect_to @report, notice: 'Report was successfully created.' }
        format.json { render :show, status: :created, location: @report }
      else
        format.html { render :new }
        format.json { render json: @report.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reports/1
  # PATCH/PUT /reports/1.json
  def update
    if current_user.role == "کارفرما"
      redirect_to root_url
    end
    respond_to do |format|
      if @report.update(report_params)
        format.html { redirect_to @report, notice: 'Report was successfully updated.' }
        format.json { render :show, status: :ok, location: @report }
      else
        format.html { render :edit }
        format.json { render json: @report.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reports/1
  # DELETE /reports/1.json
  def destroy
    @report.destroy
    respond_to do |format|
      format.html { redirect_to reports_url, notice: 'Report was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  def reportbarayeproject
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_report
      @report = Report.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def report_params
      params.require(:report).permit(:name_project, :description, :title_report, :subject, :document , :project_id)
    end
end
