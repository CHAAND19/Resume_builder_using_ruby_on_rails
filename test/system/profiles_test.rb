require "application_system_test_case"

class ProfilesTest < ApplicationSystemTestCase
  setup do
    @profile = profiles(:one)
  end

  test "visiting the index" do
    visit profiles_url
    assert_selector "h1", text: "Profiles"
  end

  test "should create profile" do
    visit profiles_url
    click_on "New profile"

    fill_in "Career highlights", with: @profile.career_highlights
    fill_in "Job title", with: @profile.job_title
    fill_in "Name", with: @profile.name
    fill_in "Overview", with: @profile.overview
    fill_in "Primary skill", with: @profile.primary_skill
    fill_in "Secondar skill", with: @profile.secondar_skill
    fill_in "Total experience", with: @profile.total_experience
    fill_in "User", with: @profile.user_id
    click_on "Create Profile"

    assert_text "Profile was successfully created"
    click_on "Back"
  end

  test "should update Profile" do
    visit profile_url(@profile)
    click_on "Edit this profile", match: :first

    fill_in "Career highlights", with: @profile.career_highlights
    fill_in "Job title", with: @profile.job_title
    fill_in "Name", with: @profile.name
    fill_in "Overview", with: @profile.overview
    fill_in "Primary skill", with: @profile.primary_skill
    fill_in "Secondar skill", with: @profile.secondar_skill
    fill_in "Total experience", with: @profile.total_experience
    fill_in "User", with: @profile.user_id
    click_on "Update Profile"

    assert_text "Profile was successfully updated"
    click_on "Back"
  end

  test "should destroy Profile" do
    visit profile_url(@profile)
    click_on "Destroy this profile", match: :first

    assert_text "Profile was successfully destroyed"
  end
end
