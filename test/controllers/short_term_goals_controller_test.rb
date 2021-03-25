require 'test_helper'

class ShortTermGoalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @short_term_goal = short_term_goals(:one)
  end

  test "should get index" do
    get short_term_goals_url
    assert_response :success
  end

  test "should get new" do
    get new_short_term_goal_url
    assert_response :success
  end

  test "should create short_term_goal" do
    assert_difference('ShortTermGoal.count') do
      post short_term_goals_url, params: { short_term_goal: { detail: @short_term_goal.detail, experience: @short_term_goal.experience, image: @short_term_goal.image, title: @short_term_goal.title } }
    end

    assert_redirected_to short_term_goal_url(ShortTermGoal.last)
  end

  test "should show short_term_goal" do
    get short_term_goal_url(@short_term_goal)
    assert_response :success
  end

  test "should get edit" do
    get edit_short_term_goal_url(@short_term_goal)
    assert_response :success
  end

  test "should update short_term_goal" do
    patch short_term_goal_url(@short_term_goal), params: { short_term_goal: { detail: @short_term_goal.detail, experience: @short_term_goal.experience, image: @short_term_goal.image, title: @short_term_goal.title } }
    assert_redirected_to short_term_goal_url(@short_term_goal)
  end

  test "should destroy short_term_goal" do
    assert_difference('ShortTermGoal.count', -1) do
      delete short_term_goal_url(@short_term_goal)
    end

    assert_redirected_to short_term_goals_url
  end
end
