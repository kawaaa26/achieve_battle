require "application_system_test_case"

class ShortTermGoalsTest < ApplicationSystemTestCase
  setup do
    @short_term_goal = short_term_goals(:one)
  end

  test "visiting the index" do
    visit short_term_goals_url
    assert_selector "h1", text: "Short Term Goals"
  end

  test "creating a Short term goal" do
    visit short_term_goals_url
    click_on "New Short Term Goal"

    fill_in "Detail", with: @short_term_goal.detail
    fill_in "Experience", with: @short_term_goal.experience
    fill_in "Image", with: @short_term_goal.image
    fill_in "Title", with: @short_term_goal.title
    click_on "Create Short term goal"

    assert_text "Short term goal was successfully created"
    click_on "Back"
  end

  test "updating a Short term goal" do
    visit short_term_goals_url
    click_on "Edit", match: :first

    fill_in "Detail", with: @short_term_goal.detail
    fill_in "Experience", with: @short_term_goal.experience
    fill_in "Image", with: @short_term_goal.image
    fill_in "Title", with: @short_term_goal.title
    click_on "Update Short term goal"

    assert_text "Short term goal was successfully updated"
    click_on "Back"
  end

  test "destroying a Short term goal" do
    visit short_term_goals_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Short term goal was successfully destroyed"
  end
end
