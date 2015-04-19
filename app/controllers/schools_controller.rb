class SchoolsController < ApplicationController
  before_action :set_school, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource

  respond_to :html

  def index
    @schools = School.all
    respond_with(@schools)
  end

  def show
    respond_with(@school)
  end

  def new
    @school = School.new
    respond_with(@school)
  end

  def edit
  end

  def create
    @school = School.new(school_params)
    @school.save
    respond_with(@school)
  end

  def update
    @school.update(school_params)
    respond_with(@school)
  end

  def destroy
    @school.destroy
    respond_with(@school)
  end

  private
    def set_school
      @school = School.find(params[:id])
    end

    def school_params
      params.require(:school).permit(:school_id, :school_name, :school_number, :web_url, :logo_file_name, :pic_file_name, :desc, :status_id, :school_stat_id, :demo_flag_id, :discount, :discount_amt, :start_month, :end_month, :creation_date, :created_by, :last_update, :last_updated_by)
    end
end
