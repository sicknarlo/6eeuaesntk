require 'rails_helper'

describe ShoesController do

  let(:user){ create(:user) }
  let(:shoe){ create(:shoe) }

  describe "POST #create" do
      it "redirects to the user's page" do

        post :create, :shoe => attributes_for(:shoe)

        expect(response).to redirect_to user_path(assigns(:user))
      end

      it "actually creates the shoe" do
        expect{
          post :create, shoe: attributes_for(:shoe)
        }.to change(Shoe, :count).by(1)
      end
    end


end
