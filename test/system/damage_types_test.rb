require "application_system_test_case"

class DamageTypesTest < ApplicationSystemTestCase
  setup do
    @damage_type = damage_types(:one)
  end

  test "visiting the index" do
    visit damage_types_url
    assert_selector "h1", text: "Damage Types"
  end

  test "creating a Damage type" do
    visit damage_types_url
    click_on "New Damage Type"

    fill_in "Mod", with: @damage_type.mod
    fill_in "Name", with: @damage_type.name
    click_on "Create Damage type"

    assert_text "Damage type was successfully created"
    click_on "Back"
  end

  test "updating a Damage type" do
    visit damage_types_url
    click_on "Edit", match: :first

    fill_in "Mod", with: @damage_type.mod
    fill_in "Name", with: @damage_type.name
    click_on "Update Damage type"

    assert_text "Damage type was successfully updated"
    click_on "Back"
  end

  test "destroying a Damage type" do
    visit damage_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Damage type was successfully destroyed"
  end
end
