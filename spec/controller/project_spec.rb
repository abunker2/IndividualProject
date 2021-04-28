require "rails_helper"

RSpec.describe ProjectlistsController, type: :controller do
  context "GET #index" do
    it "returns a success response" do
      get :index
      # expect(response.success).to eq(true)
      expect(response).to be_success
    end
  end

  context "GET #show" do
    let!(:project) { Projectlist.create(name: "Name", username: "Some username content goes here", language: "placeholder", description: "placeholder", status: "placeholder", RepoURL: "placeholder",) }
    it "returns a success response" do
      get :show, params: { id: project }
      expect(response).to be_success
    end
  end
end