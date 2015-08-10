require 'rails_helper'

describe UsersController do

  describe 'user access' do
    let(:user){ create(:user) }

    it "GET #new works" do
      get :new
      expect(response).to render_template :new

    end
  end

  describe "POST #create" do
      it "redirects to the new user" do

        post :create, :user => attributes_for(:user)

        expect(response).to redirect_to user_path(assigns(:user))
      end

      it "actually creates the user" do
        expect{
          post :create, user: attributes_for(:user)
        }.to change(User, :count).by(1)
      end
    end


end
