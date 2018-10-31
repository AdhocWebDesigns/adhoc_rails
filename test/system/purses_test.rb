require "application_system_test_case"

class PursesTest < ApplicationSystemTestCase
  setup do
    @purse = purses(:one)
  end

  test "visiting the index" do
    visit purses_url
    assert_selector "h1", text: "Purses"
  end

  test "creating a Purse" do
    visit purses_url
    click_on "New Purse"

    fill_in "Cp", with: @purse.cp
    fill_in "Ep", with: @purse.ep
    fill_in "Gp", with: @purse.gp
    fill_in "Pp", with: @purse.pp
    fill_in "Sp", with: @purse.sp
    fill_in "User", with: @purse.user_id
    click_on "Create Purse"

    assert_text "Purse was successfully created"
    click_on "Back"
  end

  test "updating a Purse" do
    visit purses_url
    click_on "Edit", match: :first

    fill_in "Cp", with: @purse.cp
    fill_in "Ep", with: @purse.ep
    fill_in "Gp", with: @purse.gp
    fill_in "Pp", with: @purse.pp
    fill_in "Sp", with: @purse.sp
    fill_in "User", with: @purse.user_id
    click_on "Update Purse"

    assert_text "Purse was successfully updated"
    click_on "Back"
  end

  test "destroying a Purse" do
    visit purses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Purse was successfully destroyed"
  end
end
