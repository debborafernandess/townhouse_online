require 'rails_helper'

RSpec.describe SessionsController, type: :controller do
  describe '#new' do
    context 'when a user is not logged' do
      it 'render :new' do
        get :new
        expect(response).to redirect_to(new_user_session_path)
      end
    end

    context 'when a user is logged' do
      context 'when a user is admin' do
        it 'redirects to TownhouseController#index' do
          sign_in create(:user, :admin)

          get :new
          expect(response).to redirect_to(townhouse_areas_path)
        end
      end

      context 'when a user is resident' do
        it 'redirects to ResidentsController#index' do
          sign_in create(:user)

          get :new
          expect(subject).to redirect_to(residents_path)
        end
      end
    end
  end
end
