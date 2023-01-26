require "application_system_test_case"

class WardsTest < ApplicationSystemTestCase
  setup do
    @ward = wards(:one)
  end

  test "visiting the index" do
    visit wards_url
    assert_selector "h1", text: "Wards"
  end

  test "should create ward" do
    visit wards_url
    click_on "New ward"

    fill_in "Name", with: @ward.name
    click_on "Create Ward"

    assert_text "Ward was successfully created"
    click_on "Back"
  end

  test "should update Ward" do
    visit ward_url(@ward)
    click_on "Edit this ward", match: :first

    fill_in "Name", with: @ward.name
    click_on "Update Ward"

    assert_text "Ward was successfully updated"
    click_on "Back"
  end

  test "should destroy Ward" do
    visit ward_url(@ward)
    click_on "Destroy this ward", match: :first

    assert_text "Ward was successfully destroyed"
  end
end
