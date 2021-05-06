require 'rails_helper'

RSpec.feature "Projects", type: :feature do
  scenario "should pass" do
    #Unit test 0: Registration
    visit new_user_registration_path
    
    within(:xpath, '/html/body/center/aside/div/article/form') do
      fill_in "user[email]", with: "fakeemail@testuccsproject.yes"
      fill_in "user[password]", with: "Testpw"
      fill_in "user[password_confirmation]", with: "Testpw"
      find(:xpath, '/html/body/center/aside/div/article/form/div[4]/input').click
    end
    expect(page).to have_text "Welcome! You have signed up successfully."
  end

  #Unit test 1: Checking if required name is set
  scenario "should pass" do
    visit new_user_registration_path
    
    within(:xpath, '/html/body/center/aside/div/article/form') do
      fill_in "user[email]", with: "fakeemail@testuccsproject.yes"
      fill_in "user[password]", with: "Testpw"
      fill_in "user[password_confirmation]", with: "Testpw"
      find(:xpath, '/html/body/center/aside/div/article/form/div[4]/input').click
    end
    visit new_projectlist_path
    within("form") do
      fill_in "name", with: ""
    end
    find(:xpath, '/html/body/center/aside/div/article/form/div[7]/input').click 
    expect(page).to have_content("Name can't be blank")
  end

  #Unit test 2: Checking if required username is set
  scenario "should pass" do
    visit new_user_registration_path
    
    within(:xpath, '/html/body/center/aside/div/article/form') do
      fill_in "user[email]", with: "fakeemail@testuccsproject.yes"
      fill_in "user[password]", with: "Testpw"
      fill_in "user[password_confirmation]", with: "Testpw"
      find(:xpath, '/html/body/center/aside/div/article/form/div[4]/input').click
    end
    visit new_projectlist_path
    within("form") do
      fill_in "Username", with: ""
    end
    find(:xpath, '/html/body/center/aside/div/article/form/div[7]/input').click 
    expect(page).to have_content("Username can't be blank")
  end

  #Unit test 3: Checking if required language is set
  scenario "should pass" do
    visit new_user_registration_path
    
    within(:xpath, '/html/body/center/aside/div/article/form') do
      fill_in "user[email]", with: "fakeemail@testuccsproject.yes"
      fill_in "user[password]", with: "Testpw"
      fill_in "user[password_confirmation]", with: "Testpw"
      find(:xpath, '/html/body/center/aside/div/article/form/div[4]/input').click
    end
    visit new_projectlist_path
    within("form") do
      fill_in "Language", with: ""
    end
    find(:xpath, '/html/body/center/aside/div/article/form/div[7]/input').click 
    expect(page).to have_content("Language can't be blank")
  end

  #Unit test 4: Checking if required description is set
  scenario "should pass" do
    visit new_user_registration_path #Visit the root path, you have to set this 
    
    within(:xpath, '/html/body/center/aside/div/article/form') do
      fill_in "user[email]", with: "fakeemail@testuccsproject.yes"
      fill_in "user[password]", with: "Testpw"
      fill_in "user[password_confirmation]", with: "Testpw"
      find(:xpath, '/html/body/center/aside/div/article/form/div[4]/input').click
    end
    visit new_projectlist_path
    within("form") do
      fill_in "Description", with: ""
    end
    find(:xpath, '/html/body/center/aside/div/article/form/div[7]/input').click 
    expect(page).to have_content("Description can't be blank")
  end

  
  #Unit test 5: Checking if required Status is set
  scenario "should pass" do
    visit new_user_registration_path
    
    within(:xpath, '/html/body/center/aside/div/article/form') do
      fill_in "user[email]", with: "fakeemail@testuccsproject.yes"
      fill_in "user[password]", with: "Testpw"
      fill_in "user[password_confirmation]", with: "Testpw"
      find(:xpath, '/html/body/center/aside/div/article/form/div[4]/input').click
    end
    visit new_projectlist_path
    within("form") do
      fill_in "Status", with: ""
    end
    find(:xpath, '/html/body/center/aside/div/article/form/div[7]/input').click 
    expect(page).to have_content("Status can't be blank")
  end

  #Unit test 6: Checking if required repourl is set
  scenario "should pass" do
    visit new_user_registration_path
    
    within(:xpath, '/html/body/center/aside/div/article/form') do
      fill_in "user[email]", with: "fakeemail@testuccsproject.yes"
      fill_in "user[password]", with: "Testpw"
      fill_in "user[password_confirmation]", with: "Testpw"
      find(:xpath, '/html/body/center/aside/div/article/form/div[4]/input').click
    end
    visit new_projectlist_path
    within("form") do
      fill_in "Repourl", with: ""
    end
    find(:xpath, '/html/body/center/aside/div/article/form/div[7]/input').click 
    expect(page).to have_content("Repourl can't be blank")
  end
  

  #Unit test 7: Checking if name field is not set
  scenario "should pass" do
    visit new_user_registration_path
    
    within(:xpath, '/html/body/center/aside/div/article/form') do
      fill_in "user[email]", with: "fakeemail@testuccsproject.yes"
      fill_in "user[password]", with: "Testpw"
      fill_in "user[password_confirmation]", with: "Testpw"
      find(:xpath, '/html/body/center/aside/div/article/form/div[4]/input').click
    end
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
    find(:xpath, '/html/body/center/aside/div/article/form/div[7]/input').click 
    expect(page).to have_content("Name can't be blank")
  end


  #Unit test 8: Checking if Username is not set
  scenario "should pass" do
    visit new_user_registration_path
    
    within(:xpath, '/html/body/center/aside/div/article/form') do
      fill_in "user[email]", with: "fakeemail@testuccsproject.yes"
      fill_in "user[password]", with: "Testpw"
      fill_in "user[password_confirmation]", with: "Testpw"
      find(:xpath, '/html/body/center/aside/div/article/form/div[4]/input').click
    end
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
    find(:xpath, '/html/body/center/aside/div/article/form/div[7]/input').click 
    expect(page).to have_content("Username can't be blank")
  end

  #Unit test 9: Checking if Language is not set
  scenario "should pass" do
    visit new_user_registration_path
    
    within(:xpath, '/html/body/center/aside/div/article/form') do
      fill_in "user[email]", with: "fakeemail@testuccsproject.yes"
      fill_in "user[password]", with: "Testpw"
      fill_in "user[password_confirmation]", with: "Testpw"
      find(:xpath, '/html/body/center/aside/div/article/form/div[4]/input').click
    end
    visit new_projectlist_path
    within("form") do
      fill_in "Username", with: "TestUsername"
    end
    within("form") do
      fill_in "Name", with: "TestName"
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
    find(:xpath, '/html/body/center/aside/div/article/form/div[7]/input').click 
    expect(page).to have_content("Language can't be blank")
  end

  #Unit test 10: Checking if Description is not set
  scenario "should pass" do
    visit new_user_registration_path
    
    within(:xpath, '/html/body/center/aside/div/article/form') do
      fill_in "user[email]", with: "fakeemail@testuccsproject.yes"
      fill_in "user[password]", with: "Testpw"
      fill_in "user[password_confirmation]", with: "Testpw"
      find(:xpath, '/html/body/center/aside/div/article/form/div[4]/input').click
    end
    visit new_projectlist_path
    within("form") do
      fill_in "Username", with: "TestUsername"
    end
    within("form") do
      fill_in "Language", with: "TestLanguage"
    end
    within("form") do
      fill_in "Name", with: "TestName"
    end
    within("form") do
      fill_in "Status", with: "TestStatus"
    end
    within("form") do
      fill_in "Repourl", with: "http://TestRepo.URL"
    end
    find(:xpath, '/html/body/center/aside/div/article/form/div[7]/input').click 
    expect(page).to have_content("Description can't be blank")
  end

  #Unit test 11: Checking if Status is not set
  scenario "should pass" do
    visit new_user_registration_path
    
    within(:xpath, '/html/body/center/aside/div/article/form') do
      fill_in "user[email]", with: "fakeemail@testuccsproject.yes"
      fill_in "user[password]", with: "Testpw"
      fill_in "user[password_confirmation]", with: "Testpw"
      find(:xpath, '/html/body/center/aside/div/article/form/div[4]/input').click
    end
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
      fill_in "Name", with: "TestName"
    end
    within("form") do
      fill_in "Repourl", with: "http://TestRepo.URL"
    end
    find(:xpath, '/html/body/center/aside/div/article/form/div[7]/input').click 
    expect(page).to have_content("Status can't be blank")
  end

  #Unit test 12: Checking if RepoURL is not set
  scenario "should pass" do
    visit new_user_registration_path
    
    within(:xpath, '/html/body/center/aside/div/article/form') do
      fill_in "user[email]", with: "fakeemail@testuccsproject.yes"
      fill_in "user[password]", with: "Testpw"
      fill_in "user[password_confirmation]", with: "Testpw"
      find(:xpath, '/html/body/center/aside/div/article/form/div[4]/input').click
    end
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
      fill_in "Name", with: "TestName"
    end
    find(:xpath, '/html/body/center/aside/div/article/form/div[7]/input').click 
    expect(page).to have_content("Repourl can't be blank")
  end

  #Unit test 13: Verifying all required fields are set
  scenario "should pass" do
    visit new_user_registration_path
    
    within(:xpath, '/html/body/center/aside/div/article/form') do
      fill_in "user[email]", with: "fakeemail@testuccsproject.yes"
      fill_in "user[password]", with: "Testpw"
      fill_in "user[password_confirmation]", with: "Testpw"
      find(:xpath, '/html/body/center/aside/div/article/form/div[4]/input').click
    end
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
    find(:xpath, '/html/body/center/aside/div/article/form/div[7]/input').click 
    expect(page).to have_content("Projectlist was successfully created")
  end

  #Unit test 14, updating project test
  context "Remove existing project" do
    let!(:project) { Projectlist.create(name: "Name", username: "Some username content goes here", language: "placeholder", description: "placeholder", status: "placeholder", RepoURL: "placeholder",) }
    scenario "remove project" do
      visit new_user_registration_path
      
      within(:xpath, '/html/body/center/aside/div/article/form') do
        fill_in "user[email]", with: "fakeemail@testuccsproject.yes"
        fill_in "user[password]", with: "Testpw"
        fill_in "user[password_confirmation]", with: "Testpw"
        find(:xpath, '/html/body/center/aside/div/article/form/div[4]/input').click
      end 
      visit edit_projectlist_path(project)
      find(:xpath, '/html/body/center/aside/div/article/form/div[7]/input').click
      expect(page).to have_content("Projectlist was successfully updated")
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