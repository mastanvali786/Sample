class SchoolLocationsController < ApplicationController
  before_action :set_school_location, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @school_locations = SchoolLocation.all
    respond_with(@school_locations)
  end

  def show
    respond_with(@school_location)
  end

  def new
    @school_location = SchoolLocation.new
    respond_with(@school_location)
  end

  def edit
  end

  def create
    @school_location = SchoolLocation.new(school_location_params)
    @school_location.save
    respond_with(@school_location)
  end

  def update
    @school_location.update(school_location_params)
    respond_with(@school_location)
  end

  def destroy
    @school_location.destroy
    respond_with(@school_location)
  end

  private
    def set_school_location
      @school_location = SchoolLocation.find(params[:id])
    end

    def school_location_params
      params.require(:school_location).permit(:school_loc_id, :addr1, :addr2, :addr3, :city, :state_id, :country_id, :postal_code, :ph_no, :fax_no, :email_id, :land_mark1, :land_mark2, :desc, :statu_id, :create_date, :created_by, :last_update, :last_updated_by)
    end
end
