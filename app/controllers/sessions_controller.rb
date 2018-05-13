class SessionsController < ApplicationController
  def new
    return nil unless current_user

    if current_user.admin?
      redirect_to townhouse_areas_path
    else
      redirect_to residents_path
    end
  end
end
