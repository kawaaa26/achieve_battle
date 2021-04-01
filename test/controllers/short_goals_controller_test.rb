require 'test_helper'

class ShortGoalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @short_goal = short_goals(:one)
  end

  test "should get index" do
    get short_goals_url
    assert_response :success
  end

  test "should get new" do
    get new_short_goal_url
    assert_response :success
  end

  test "should create short_goal" do
    assert_difference('ShortGoal.count') do
      post short_goals_url, params: { short_goal: { detail: @short_goal.detail, experience: @short_goal.experience, title: @short_goal.title } }
    end

    assert_redirected_to short_goal_url(ShortGoal.last)
  end

  test "should show short_goal" do
    get short_goal_url(@short_goal)
    assert_response :success
  end

  test "should get edit" do
    get edit_short_goal_url(@short_goal)
    assert_response :success
  end

  test "should update short_goal" do
    patch short_goal_url(@short_goal), params: { short_goal: { detail: @short_goal.detail, experience: @short_goal.experience, title: @short_goal.title } }
    assert_redirected_to short_goal_url(@short_goal)
  end

  test "should destroy short_goal" do
    assert_difference('ShortGoal.count', -1) do
      delete short_goal_url(@short_goal)
    end

    assert_redirected_to short_goals_url
  end
end
