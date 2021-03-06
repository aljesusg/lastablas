require 'rails_helper'
include Devise::TestHelpers # this should work without this

RSpec.describe OffspringsController, type: :controller do
  describe "get INDEX" do
    before :all do
      3.times do
        FactoryGirl.create(:offspring)
      end
    end
    context "When not authenticated" do
      pending "redirects to authentication" do
        @request.env["devise.mapping"] = Devise.mappings[:user]
        get :index, {}
        expect(assigns).to eq(nil) #it does not go through the controller
        expect(response).to redirect_to(new_user_session_path)
      end
    end
    context "When authenticated" do
      pending "shows index of offspring" do
        get :index
        expect(response).to have_http_status(:success)
      end
    end
  end
end
