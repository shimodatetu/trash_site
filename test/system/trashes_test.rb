require "application_system_test_case"

class TrashesTest < ApplicationSystemTestCase
  setup do
    @trash = trashes(:one)
  end

  test "visiting the index" do
    visit trashes_url
    assert_selector "h1", text: "Trashes"
  end

  test "should create trash" do
    visit trashes_url
    click_on "New trash"

    fill_in "Name", with: @trash.name
    click_on "Create Trash"

    assert_text "Trash was successfully created"
    click_on "Back"
  end

  test "should update Trash" do
    visit trash_url(@trash)
    click_on "Edit this trash", match: :first

    fill_in "Name", with: @trash.name
    click_on "Update Trash"

    assert_text "Trash was successfully updated"
    click_on "Back"
  end

  test "should destroy Trash" do
    visit trash_url(@trash)
    click_on "Destroy this trash", match: :first

    assert_text "Trash was successfully destroyed"
  end
end
