require "application_system_test_case"

class EducationsTest < ApplicationSystemTestCase
  setup do
    @education = educations(:one)
  end

  test "visiting the index" do
    visit educations_url
    assert_selector "h1", text: "Educations"
  end

  test "should create education" do
    visit educations_url
    click_on "New education"

    fill_in "Degree", with: @education.degree
    fill_in "Description", with: @education.description
    fill_in "End", with: @education.end
    fill_in "Profile", with: @education.profile_id
    fill_in "School", with: @education.school
    fill_in "Start", with: @education.start
    click_on "Create Education"

    assert_text "Education was successfully created"
    click_on "Back"
  end

  test "should update Education" do
    visit education_url(@education)
    click_on "Edit this education", match: :first

    fill_in "Degree", with: @education.degree
    fill_in "Description", with: @education.description
    fill_in "End", with: @education.end
    fill_in "Profile", with: @education.profile_id
    fill_in "School", with: @education.school
    fill_in "Start", with: @education.start
    click_on "Update Education"

    assert_text "Education was successfully updated"
    click_on "Back"
  end

  test "should destroy Education" do
    visit education_url(@education)
    click_on "Destroy this education", match: :first

    assert_text "Education was successfully destroyed"
  end
end
