require 'rails_helper'

RSpec.describe RobotsController, type: :controller do
  let(:robot) { FactoryGirl.create(:robot) }

  describe "GET #index" do
    it 'returns http success' do
      get :index
    end

    it 'sets robots instance var' do
      robot
      get :index
      expect(assigns[:robots]).to eq([robot])
    end

    it 'renders index template' do
      get :index
      expect(response).to render_template(:index)
    end
  end

  describe "GET #show" do
    it 'returns http success' do
      get :show, id: robot.id
      expect(response).to have_http_status(:success)
    end

    it 'sets robot instance var' do
      get :show, id: robot.id
      expect(assigns[:robot]).to eq(robot)
    end

    it 'renders show template' do
      get :show, id: robot.id
      expect(response).to render_template(:show)
    end
  end

  describe "GET #new" do
    it 'has http success' do
      get :new
      expect(response).to have_http_status(:success)
    end

    it 'sets robot instance var' do
      get :new
      @robot = assigns[:robot]
      expect(@robot.id).to be_nil
      expect(@robot.class).to eq(Robot)
    end

    it 'renders new template' do
      get :new
      expect(response).to render_template(:new)
    end
  end

  describe "GET #edit" do
    it 'has http success' do
      get :edit, id: robot.id
      expect(response).to have_http_status(:success)
    end

    it 'finds the right robot' do
      get :edit, id: robot.id
      expect(assigns[:robot]).to eq(robot)
    end

    it 'renders edit template' do
      get :edit, id: robot.id
      expect(response).to render_template(:edit)
    end
  end

  describe "POST #create" do
    before(:each) do
      @robot_params = {
        robot: { name: 'Bob', friendly: true }
      }
    end

    it 'has http success' do
      post :create, @robot_params
      expect(response).to have_http_status(302)
    end
  end

  describe "PUT #update" do
    it 'has http success' do
      put :update, { id:  robot.id, robot: { name: 'Bob' } }
      expect(response).to have_http_status(302)
    end

    it 'updates the robot' do
      put :update, { id: robot.id, robot: { name: 'Bob', friendly: false } }
      expect(robot.friendly).to eq(false)
    end
  end

  describe "DELETE #destroy" do
    it 'has http success' do
      delete :destroy, id: robot.id
      expect(response).to have_http_status(302)
    end

    it 'deletes a robot' do
      delete :destroy, id: robot.id
      expect(Robot.count).to eq(0)
    end
  end
end









