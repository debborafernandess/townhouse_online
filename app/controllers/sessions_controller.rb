class SessionsController < ApplicationController
  def new
    return nil unless current_user

    redirect_to bookings_path
  end
end
