class TownhouseAreasController < ApplicationController
  before_action :set_townhouse_area, only: %i(edit update destroy)
  def index
    @townhouse_areas = TownhouseArea.order(:name).page(params[:page])
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
    if @townhouse_area.update(permited_params)
      redirect_to townhouse_areas_path
    else
      render :edit
    end
  end

  def edit; end

  def destroy
    @townhouse_area.destroy

    redirect_to townhouse_areas_path
  end

  private

  def permited_params
    params.require(:townhouse_area).permit(:name, :area_type)
  end

  def set_townhouse_area
    @townhouse_area = TownhouseArea.find(params[:id])
  end
end
