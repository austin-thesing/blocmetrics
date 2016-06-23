require 'rails_helper'

RSpec.describe AppsController, type: :controller do

  before(:each) do
    @request.env["devise.mapping"] = Devise.mappings[:user]
    @user = FactoryGirl.create(:user)
    sign_in @user
    @app = FactoryGirl.create(:app, user: @user)
  end

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
    it "renders the index view" do
      get :index
      expect(response).to render_template(:index)
    end
  end

  describe "GET #show" do
    it "returns http success" do
      get :show, id: @app.id
      expect(response).to have_http_status(:success)
    end
    it "renders the show view" do
      get :show, id: @app.id
      expect(response).to render_template(:show)
    end
  end

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
    # it "renders the new view" do
    #   expect(response).to render_template(:new)
    # end
  end

  describe "POST #create" do
    it "returns http success" do
      # post :create, app: @app
      # expect(response).to have_http_status(:success)
    end
  end

  # describe "GET #create" do
  #   it "returns http success" do
  #     get :create
  #     expect(response).to have_http_status(:success)
  #   end
  # end
  #
  # describe "GET #edit" do
  #   it "returns http success" do
  #     get :edit
  #     expect(response).to have_http_status(:success)
  #   end
  # end
  #
  # describe "GET #destroy" do
  #   it "returns http success" do
  #     get :destroy
  #     expect(response).to have_http_status(:success)
  #   end
  # end
end
