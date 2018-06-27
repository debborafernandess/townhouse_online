class BookingsController < ApplicationController
  before_action :set_booking, only: %i(edit update destroy)
  before_action :set_collections, only: %i(new edit create update)

  def index
    @bookings = Booking.not_expired.order(reserved_to: :asc).page(params[:page])
  end

  def expired
    @bookings = Booking.expired.order(reserved_to: :desc).page(params[:page])
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(permited_params)
    if @booking.save
      redirect_to bookings_path
    else
      render :new
    end
  end

  def update
    if @booking.update(permited_params)
      redirect_to bookings_path
    else
      render :edit
    end
  end

  def edit; end

  def destroy
    @booking.destroy

    redirect_to bookings_path
  end

  private

  def permited_params
    params.require(:booking).permit(:user_id, :townhouse_area_id, :reserved_to)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def set_collections
    @users = User.active.order(:name)
    @areas = TownhouseArea.shared.order(:name)
  end
end
