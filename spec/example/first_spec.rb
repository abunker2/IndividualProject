require "rails_helper"

RSpec.describe "The math blow is wrong..." do
  it "should equal 42 but we said 43" do
    expect(6 * 7).to eq(42)
  end
end

RSpec.describe "hello spec" do
    # ...
    describe String do
      let(:string) { String.new }
      it "should provide an empty string" do
        expect(string).to eq("")
      end
    end
   end

RSpec.describe Projectlist, type: :model do
context "validations tests" do
    it "ensures the username is present" do
    project = Projectlist.new(username: "Content of the username")
    expect(project.valid?).to eq(false)
    end

    it "ensures the name is present" do
    project = Projectlist.new(name: "Name")
    expect(project.valid?).to eq(false)
    end
    
    it "should be able to save project" do
    project = Projectlist.new(name: "Name", username: "Some username content goes here", language: "placeholder", description: "placeholder", status: "placeholder", RepoURL: "placeholder",)
    expect(project.save).to eq(true)
    end
end

describe Projectlist, type: :model do
    # ...
  
    context "scopes tests" do
      let(:params) { { name: "Name", username: "Some username content goes here", language: "placeholder", description: "placeholder", status: "placeholder", RepoURL: "placeholder", } }
      before(:each) do
        Projectlist.create(params)
        Projectlist.create(params)
        Projectlist.create(params)
        Projectlist.create(params)
        Projectlist.create(params)
        Projectlist.create(params)
      end
  
      it "should return all projects" do
        expect(Projectlist.count).to eq(6)
      end
    end

end
end