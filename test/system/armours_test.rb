require "application_system_test_case"

class ArmoursTest < ApplicationSystemTestCase
  setup do
    @armour = armours(:one)
  end

  test "visiting the index" do
    visit armours_url
    assert_selector "h1", text: "Armours"
  end

  test "creating a Armour" do
    visit armours_url
    click_on "New Armour"

    fill_in "Ac", with: @armour.ac
    fill_in "Description", with: @armour.description
    fill_in "Name", with: @armour.name
    fill_in "Stealth", with: @armour.stealth
    fill_in "Strength", with: @armour.strength
    fill_in "User", with: @armour.user_id
    fill_in "Value", with: @armour.value
    fill_in "Weight", with: @armour.weight
    click_on "Create Armour"

    assert_text "Armour was successfully created"
    click_on "Back"
  end

  test "updating a Armour" do
    visit armours_url
    click_on "Edit", match: :first

    fill_in "Ac", with: @armour.ac
    fill_in "Description", with: @armour.description
    fill_in "Name", with: @armour.name
    fill_in "Stealth", with: @armour.stealth
    fill_in "Strength", with: @armour.strength
    fill_in "User", with: @armour.user_id
    fill_in "Value", with: @armour.value
    fill_in "Weight", with: @armour.weight
    click_on "Update Armour"

    assert_text "Armour was successfully updated"
    click_on "Back"
  end

  test "destroying a Armour" do
    visit armours_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Armour was successfully destroyed"
  end
end
