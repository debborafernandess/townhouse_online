class TownhouseAreasController < ApplicationController
  before_action :set_townhouse_area, only: %i(edit update destroy)
  def index
    @townhouse_areas = TownhouseArea.order(:name)
  end

  def new
    @townhouse_area = TownhouseArea.new
  end

  def create
    @townhouse_area = TownhouseArea.new(permited_params)
    if @townhouse_area.save
      redirect_to townhouse_areas_path
    else
      render :new
    end
  end

  def update
  end

  def edit
  end

  def destroy
  end

  private

  def permited_params
    params.require(:townhouse_area).permit(:name, :area_type)
  end

  def set_townhouse_area
    @townhouse_area = TownhouseArea.find(params[:id])
  end
end
