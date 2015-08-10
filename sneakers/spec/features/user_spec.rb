require 'rails_helper'

    feature "User Sign In" do
        let(:user){ create(:user) }
        before do
            visit root_path
        end

        scenario "redirects to user view upon login" do

            click_link "Login"

            fill_in "Email", with: user.email
            click_button "Log in"
            expect(page).to have_content "#{user.username}"
        end
    end

    feature "Create new shows" do
        let(:user){ create(:user) }
        let(:shoe){ create(:shoe) }
        before do
            visit root_path
            click_link "Login"

            fill_in "Email", with: user.email
            click_button "Log in"
        end

        scenario "user creates new shoe, is redirected back to own page" do

            click_link "Add a pair of shoes!"
            fill_in "shoe_brand", with: "Shoez"
            fill_in "shoe_model", with: "Nikey"
            click_button "Create Shoe"
            expect(page).to have_content "Shoez"
        end

    end


