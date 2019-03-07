require 'test_helper'

class Api::V1::UserTeamsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get api_v1_user_teams_index_url
    assert_response :success
  end

  test "should get new" do
    get api_v1_user_teams_new_url
    assert_response :success
  end

  test "should get create" do
    get api_v1_user_teams_create_url
    assert_response :success
  end

  test "should get edit" do
    get api_v1_user_teams_edit_url
    assert_response :success
  end

  test "should get update" do
    get api_v1_user_teams_update_url
    assert_response :success
  end

  test "should get delete" do
    get api_v1_user_teams_delete_url
    assert_response :success
  end

end
