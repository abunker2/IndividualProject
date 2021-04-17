require "application_system_test_case"

class ProjectlistsTest < ApplicationSystemTestCase
  setup do
    @projectlist = projectlists(:one)
  end

  test "visiting the index" do
    visit projectlists_url
    assert_selector "h1", text: "Projectlists"
  end

  test "creating a Projectlist" do
    visit projectlists_url
    click_on "New Projectlist"

    fill_in "Repourl", with: @projectlist.RepoURL
    fill_in "Description", with: @projectlist.description
    fill_in "Language", with: @projectlist.language
    fill_in "Name", with: @projectlist.name
    fill_in "Slug", with: @projectlist.slug
    fill_in "Status", with: @projectlist.status
    fill_in "Username", with: @projectlist.username
    click_on "Create Projectlist"

    assert_text "Projectlist was successfully created"
    click_on "Back"
  end

  test "updating a Projectlist" do
    visit projectlists_url
    click_on "Edit", match: :first

    fill_in "Repourl", with: @projectlist.RepoURL
    fill_in "Description", with: @projectlist.description
    fill_in "Language", with: @projectlist.language
    fill_in "Name", with: @projectlist.name
    fill_in "Slug", with: @projectlist.slug
    fill_in "Status", with: @projectlist.status
    fill_in "Username", with: @projectlist.username
    click_on "Update Projectlist"

    assert_text "Projectlist was successfully updated"
    click_on "Back"
  end

  test "destroying a Projectlist" do
    visit projectlists_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Projectlist was successfully destroyed"
  end
end
