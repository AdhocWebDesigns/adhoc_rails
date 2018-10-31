require "application_system_test_case"

class TreasuresTest < ApplicationSystemTestCase
  setup do
    @treasure = treasures(:one)
  end

  test "visiting the index" do
    visit treasures_url
    assert_selector "h1", text: "Treasures"
  end

  test "creating a Treasure" do
    visit treasures_url
    click_on "New Treasure"

    fill_in "Items", with: @treasure.items_id
    fill_in "User", with: @treasure.user_id
    click_on "Create Treasure"

    assert_text "Treasure was successfully created"
    click_on "Back"
  end

  test "updating a Treasure" do
    visit treasures_url
    click_on "Edit", match: :first

    fill_in "Items", with: @treasure.items_id
    fill_in "User", with: @treasure.user_id
    click_on "Update Treasure"

    assert_text "Treasure was successfully updated"
    click_on "Back"
  end

  test "destroying a Treasure" do
    visit treasures_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Treasure was successfully destroyed"
  end
end
