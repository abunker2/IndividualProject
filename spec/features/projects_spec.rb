require 'rails_helper'

RSpec.feature "Projects", type: :feature do

  #Unit test 1: Checking if required name is set
  context "Create new project" do
    before(:each) do
      visit new_projectlist_path
      within("form") do
        fill_in "name", with: ""
      end
    end
    scenario "should fail" do
     click_button "Create Projectlist"
     expect(page).to have_content("Name can't be blank")
    end
  end

  #Unit test 2: Checking if required username is set
  context "Create new project" do
    before(:each) do
      visit new_projectlist_path
      within("form") do
        fill_in "Username", with: ""
      end
    end
    scenario "should fail" do
     click_button "Create Projectlist"
     expect(page).to have_content("Username can't be blank")
    end
  end

  #Unit test 3: Checking if required language is set
  context "Create new project" do
    before(:each) do
      visit new_projectlist_path
      within("form") do
        fill_in "Language", with: ""
      end
    end
    scenario "should fail" do
      click_button "Create Projectlist"
      expect(page).to have_content("Language can't be blank")
    end
  end

  #Unit test 4: Checking if required description is set
  context "Create new project" do
    before(:each) do
      visit new_projectlist_path
      within("form") do
        fill_in "Description", with: ""
      end
    end
    scenario "should fail" do
      click_button "Create Projectlist"
      expect(page).to have_content("Description can't be blank")
    end
  end

  #Unit test 5: Checking if required status is set
  context "Create new project" do
    before(:each) do
      visit new_projectlist_path
      within("form") do
        fill_in "Status", with: ""
      end
    end
    scenario "should fail" do
      click_button "Create Projectlist"
      expect(page).to have_content("Status can't be blank")
    end
  end
  
  #Unit test 6: Checking if required RepoURL is set
  context "Create new project" do
    before(:each) do
      visit new_projectlist_path
      within("form") do
        fill_in "Repourl", with: ""
      end
    end
    scenario "should fail" do
      click_button "Create Projectlist"
      expect(page).to have_content("Repourl can't be blank")
    end
  end

  #The following unit tests will check if ONLY one of the fields are not set

  #Unit test 7: Checking if name field is not set
  context "Create new project" do
    before(:each) do
      visit new_projectlist_path
      within("form") do
        fill_in "Username", with: "TestUsername"
      end
      within("form") do
        fill_in "Language", with: "TestLanguage"
      end
      within("form") do
        fill_in "Description", with: "TestDesc"
      end
      within("form") do
        fill_in "Status", with: "TestStatus"
      end
      within("form") do
        fill_in "Repourl", with: "http://TestRepo.URL"
      end
    end
    scenario "should fail" do
      click_button "Create Projectlist"
      expect(page).to have_content("Name can't be blank")
    end
  end

  #Unit test 8: Checking if username is not set
  context "Create new project" do
    before(:each) do
      visit new_projectlist_path
      within("form") do
        fill_in "Name", with: "TestName"
      end
      within("form") do
        fill_in "Language", with: "TestLanguage"
      end
      within("form") do
        fill_in "Description", with: "TestDesc"
      end
      within("form") do
        fill_in "Status", with: "TestStatus"
      end
      within("form") do
        fill_in "Repourl", with: "http://TestRepo.URL"
      end
    end
    scenario "should fail" do
      click_button "Create Projectlist"
      expect(page).to have_content("Username can't be blank")
    end
  end

  #Unit test 9: Checking if language is not set
  context "Create new project" do
    before(:each) do
      visit new_projectlist_path
      within("form") do
        fill_in "Name", with: "TestName"
      end
      within("form") do
        fill_in "Username", with: "TestUsername"
      end
      within("form") do
        fill_in "Description", with: "TestDesc"
      end
      within("form") do
        fill_in "Status", with: "TestStatus"
      end
      within("form") do
        fill_in "Repourl", with: "http://TestRepo.URL"
      end
    end
    scenario "should fail" do
      click_button "Create Projectlist"
      expect(page).to have_content("Language can't be blank")
    end
  end

  #Unit test 10: Checking if description is not set
  context "Create new project" do
    before(:each) do
      visit new_projectlist_path
      within("form") do
        fill_in "Name", with: "TestName"
      end
      within("form") do
        fill_in "Username", with: "TestUsername"
      end
      within("form") do
        fill_in "Language", with: "TestLanguage"
      end
      within("form") do
        fill_in "Status", with: "TestStatus"
      end
      within("form") do
        fill_in "Repourl", with: "http://TestRepo.URL"
      end
    end
    scenario "should fail" do
      click_button "Create Projectlist"
      expect(page).to have_content("Description can't be blank")
    end
  end

  #Unit test 11: Checking if status is not set
  context "Create new project" do
    before(:each) do
      visit new_projectlist_path
      within("form") do
        fill_in "Name", with: "TestName"
      end
      within("form") do
        fill_in "Username", with: "TestUsername"
      end
      within("form") do
        fill_in "Language", with: "TestLanguage"
      end
      within("form") do
        fill_in "Description", with: "TestDesc"
      end
      within("form") do
        fill_in "Repourl", with: "http://TestRepo.URL"
      end
    end
    scenario "should fail" do
      click_button "Create Projectlist"
      expect(page).to have_content("Status can't be blank")
    end
  end

  #Unit test 12: Checking if RepoURL is not set
  context "Create new project" do
    before(:each) do
      visit new_projectlist_path
      within("form") do
        fill_in "Name", with: "TestName"
      end
      within("form") do
        fill_in "Username", with: "TestUsername"
      end
      within("form") do
        fill_in "Language", with: "TestLanguage"
      end
      within("form") do
        fill_in "Description", with: "TestDesc"
      end
      within("form") do
        fill_in "Status", with: "TestStatus"
      end
    end
    scenario "should fail" do
      click_button "Create Projectlist"
      expect(page).to have_content("Repourl can't be blank")
    end
  end

  #Unit test 13: Verifying all required fields are set
  context "Create new project" do
    before(:each) do
      visit new_projectlist_path
      within("form") do
        fill_in "Name", with: "TestName"
      end
      within("form") do
        fill_in "Username", with: "TestUsername"
      end
      within("form") do
        fill_in "Language", with: "TestLanguage"
      end
      within("form") do
        fill_in "Description", with: "TestDesc"
      end
      within("form") do
        fill_in "Status", with: "TestStatus"
      end
      within("form") do
        fill_in "Repourl", with: "http://TestRepo.URL"
      end
    end
    scenario "should be successful" do
      click_button "Create Projectlist"
      expect(page).to have_content("Projectlist was successfully created")
    end
  end

  #Unit test 14, removing project test
  context "Remove existing project" do
    let!(:project) { Projectlist.create(name: "Name", username: "Some username content goes here", language: "placeholder", description: "placeholder", status: "placeholder", RepoURL: "placeholder",) }
    scenario "remove project" do
      visit projectlists_path
      click_link "Delete project"
      expect(page).to have_content("Projectlist was successfully destroyed")
      expect(Projectlist.count).to eq(0)
    end
  end

  #Unit test 15, update project test
  context "Update project" do
    let(:project) { Projectlist.create(name: "Name", username: "Some username content goes here", language: "placeholder", description: "placeholder", status: "placeholder", RepoURL: "placeholder") }
    before(:each) do
      visit edit_projectlist_path(project)
    end

    scenario "should be successful" do
      within("form") do
        fill_in "Description", with: "New description content"
      end
      click_button "Update Project"
      expect(page).to have_content("Projectlist was successfully updated")
    end

    scenario "should fail" do
      within("form") do
        fill_in "Description", with: ""
      end
      click_button "Update Project"
      expect(page).to have_content("Description can't be blank")
    end
  end
end


    #scenario "should be successful" do
     # fill_in "Username", with: "TestUsername"
      #click_button "Create Projectlist"
      #expect(page).to have_content("Projectlist was successfully created")
    #end

    #scenario "should fail" do
     # click_button "Create Projectlist"
     # expect(page).to have_content("Name can't be blank")
    #end
  #end