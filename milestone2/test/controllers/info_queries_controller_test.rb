require 'test_helper'

class InfoQueriesControllerTest < ActionController::TestCase
  setup do
    @info_query = info_queries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:info_queries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create info_query" do
    assert_difference('InfoQuery.count') do
      post :create, info_query: { is_owner: @info_query.is_owner, judge1: @info_query.judge1, judge2: @info_query.judge2, judge3: @info_query.judge3, law_issue: @info_query.law_issue, oppo_loc: @info_query.oppo_loc, oppo_size: @info_query.oppo_size, tech_area: @info_query.tech_area, user_loc: @info_query.user_loc, user_size: @info_query.user_size }
    end

    assert_redirected_to info_query_path(assigns(:info_query))
  end

  test "should show info_query" do
    get :show, id: @info_query
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @info_query
    assert_response :success
  end

  test "should update info_query" do
    patch :update, id: @info_query, info_query: { is_owner: @info_query.is_owner, judge1: @info_query.judge1, judge2: @info_query.judge2, judge3: @info_query.judge3, law_issue: @info_query.law_issue, oppo_loc: @info_query.oppo_loc, oppo_size: @info_query.oppo_size, tech_area: @info_query.tech_area, user_loc: @info_query.user_loc, user_size: @info_query.user_size }
    assert_redirected_to info_query_path(assigns(:info_query))
  end

  test "should destroy info_query" do
    assert_difference('InfoQuery.count', -1) do
      delete :destroy, id: @info_query
    end

    assert_redirected_to info_queries_path
  end
end
