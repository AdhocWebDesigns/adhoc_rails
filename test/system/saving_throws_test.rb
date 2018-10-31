require "application_system_test_case"

class SavingThrowsTest < ApplicationSystemTestCase
  setup do
    @saving_throw = saving_throws(:one)
  end

  test "visiting the index" do
    visit saving_throws_url
    assert_selector "h1", text: "Saving Throws"
  end

  test "creating a Saving throw" do
    visit saving_throws_url
    click_on "New Saving Throw"

    fill_in "Desc", with: @saving_throw.desc
    fill_in "Name", with: @saving_throw.name
    click_on "Create Saving throw"

    assert_text "Saving throw was successfully created"
    click_on "Back"
  end

  test "updating a Saving throw" do
    visit saving_throws_url
    click_on "Edit", match: :first

    fill_in "Desc", with: @saving_throw.desc
    fill_in "Name", with: @saving_throw.name
    click_on "Update Saving throw"

    assert_text "Saving throw was successfully updated"
    click_on "Back"
  end

  test "destroying a Saving throw" do
    visit saving_throws_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Saving throw was successfully destroyed"
  end
end
