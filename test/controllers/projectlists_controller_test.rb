require 'test_helper'

class ProjectlistsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @projectlist = projectlists(:one)
  end

  test "should get index" do
    get projectlists_url
    assert_response :success
  end

  test "should get new" do
    get new_projectlist_url
    assert_response :success
  end

  test "should create projectlist" do
    assert_difference('Projectlist.count') do
      post projectlists_url, params: { projectlist: { RepoURL: @projectlist.RepoURL, description: @projectlist.description, language: @projectlist.language, name: @projectlist.name, slug: @projectlist.slug, status: @projectlist.status, username: @projectlist.username } }
    end

    assert_redirected_to projectlist_url(Projectlist.last)
  end

  test "should show projectlist" do
    get projectlist_url(@projectlist)
    assert_response :success
  end

  test "should get edit" do
    get edit_projectlist_url(@projectlist)
    assert_response :success
  end

  test "should update projectlist" do
    patch projectlist_url(@projectlist), params: { projectlist: { RepoURL: @projectlist.RepoURL, description: @projectlist.description, language: @projectlist.language, name: @projectlist.name, slug: @projectlist.slug, status: @projectlist.status, username: @projectlist.username } }
    assert_redirected_to projectlist_url(@projectlist)
  end

  test "should destroy projectlist" do
    assert_difference('Projectlist.count', -1) do
      delete projectlist_url(@projectlist)
    end

    assert_redirected_to projectlists_url
  end
end
