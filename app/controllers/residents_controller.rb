class ResidentsController < ApplicationController
  before_action :set_resident, only: %i(edit update destroy)
  def index
    @residents = Resident.order(:name).page(params[:page])
  end

  def new
    @resident = Resident.new
  end

  def create
    @resident = Resident.new(permited_params)
    if @resident.save
      redirect_to residents_path
    else
      render :new
    end
  end

  def update
    if @resident.update(permited_params)
      redirect_to residents_path
    else
      render :edit
    end
  end

  def edit; end

  def destroy
    @resident.destroy

    redirect_to residents_path
  end

  private

  def permited_params
    params.require(:resident).permit(:name, :townhouse_area_id, :email, :document)
  end

  def set_resident
    @resident = Resident.find(params[:id])
  end
end
