require "application_system_test_case"

class ShortGoalsTest < ApplicationSystemTestCase
  setup do
    @short_goal = short_goals(:one)
  end

  test "visiting the index" do
    visit short_goals_url
    assert_selector "h1", text: "Short Goals"
  end

  test "creating a Short goal" do
    visit short_goals_url
    click_on "New Short Goal"

    fill_in "Detail", with: @short_goal.detail
    fill_in "Experience", with: @short_goal.experience
    fill_in "Title", with: @short_goal.title
    click_on "Create Short goal"

    assert_text "Short goal was successfully created"
    click_on "Back"
  end

  test "updating a Short goal" do
    visit short_goals_url
    click_on "Edit", match: :first

    fill_in "Detail", with: @short_goal.detail
    fill_in "Experience", with: @short_goal.experience
    fill_in "Title", with: @short_goal.title
    click_on "Update Short goal"

    assert_text "Short goal was successfully updated"
    click_on "Back"
  end

  test "destroying a Short goal" do
    visit short_goals_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Short goal was successfully destroyed"
  end
end
