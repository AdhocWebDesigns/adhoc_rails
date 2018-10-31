require "application_system_test_case"

class WeaponsTest < ApplicationSystemTestCase
  setup do
    @weapon = weapons(:one)
  end

  test "visiting the index" do
    visit weapons_url
    assert_selector "h1", text: "Weapons"
  end

  test "creating a Weapon" do
    visit weapons_url
    click_on "New Weapon"

    fill_in "D Type", with: @weapon.d_type_id
    fill_in "Damage", with: @weapon.damage
    fill_in "Description", with: @weapon.description
    fill_in "Name", with: @weapon.name
    fill_in "User", with: @weapon.user_id
    fill_in "Value", with: @weapon.value
    fill_in "W Prop", with: @weapon.w_prop_id
    fill_in "W Type", with: @weapon.w_type
    fill_in "Weight", with: @weapon.weight
    click_on "Create Weapon"

    assert_text "Weapon was successfully created"
    click_on "Back"
  end

  test "updating a Weapon" do
    visit weapons_url
    click_on "Edit", match: :first

    fill_in "D Type", with: @weapon.d_type_id
    fill_in "Damage", with: @weapon.damage
    fill_in "Description", with: @weapon.description
    fill_in "Name", with: @weapon.name
    fill_in "User", with: @weapon.user_id
    fill_in "Value", with: @weapon.value
    fill_in "W Prop", with: @weapon.w_prop_id
    fill_in "W Type", with: @weapon.w_type
    fill_in "Weight", with: @weapon.weight
    click_on "Update Weapon"

    assert_text "Weapon was successfully updated"
    click_on "Back"
  end

  test "destroying a Weapon" do
    visit weapons_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Weapon was successfully destroyed"
  end
end