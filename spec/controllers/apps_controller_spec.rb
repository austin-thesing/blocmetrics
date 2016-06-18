require 'rails_helper'

RSpec.describe AppsController, type: :controller do
  before(:each) do
    @user = FactoryGirl.create(:user)
    sign_in @user

    @app = FactoryGirl.create(:app)
  end

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #show" do
    it "returns http success" do
      get :show
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST #destroy" do
    it "returns http success" do
      post :destroy
      expect(response).to have_http_status(:success)
    end
  end

end
