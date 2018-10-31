require "application_system_test_case"

class SpellSchoolsTest < ApplicationSystemTestCase
  setup do
    @spell_school = spell_schools(:one)
  end

  test "visiting the index" do
    visit spell_schools_url
    assert_selector "h1", text: "Spell Schools"
  end

  test "creating a Spell school" do
    visit spell_schools_url
    click_on "New Spell School"

    fill_in "Desc", with: @spell_school.desc
    fill_in "Name", with: @spell_school.name
    click_on "Create Spell school"

    assert_text "Spell school was successfully created"
    click_on "Back"
  end

  test "updating a Spell school" do
    visit spell_schools_url
    click_on "Edit", match: :first

    fill_in "Desc", with: @spell_school.desc
    fill_in "Name", with: @spell_school.name
    click_on "Update Spell school"

    assert_text "Spell school was successfully updated"
    click_on "Back"
  end

  test "destroying a Spell school" do
    visit spell_schools_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Spell school was successfully destroyed"
  end
end
