require "application_system_test_case"

class SpellsTest < ApplicationSystemTestCase
  setup do
    @spell = spells(:one)
  end

  test "visiting the index" do
    visit spells_url
    assert_selector "h1", text: "Spells"
  end

  test "creating a Spell" do
    visit spells_url
    click_on "New Spell"

    fill_in "Attack Save", with: @spell.attack_save
    fill_in "Cast Time", with: @spell.cast_time
    fill_in "Components", with: @spell.components_id
    fill_in "Damage Effect", with: @spell.damage_effect_id
    fill_in "Desc", with: @spell.desc
    fill_in "Dnd Classes", with: @spell.dnd_classes_id
    fill_in "Duration", with: @spell.duration
    fill_in "Level", with: @spell.level
    fill_in "Name", with: @spell.name
    fill_in "Range", with: @spell.range
    fill_in "Spell School", with: @spell.spell_school_id
    click_on "Create Spell"

    assert_text "Spell was successfully created"
    click_on "Back"
  end

  test "updating a Spell" do
    visit spells_url
    click_on "Edit", match: :first

    fill_in "Attack Save", with: @spell.attack_save
    fill_in "Cast Time", with: @spell.cast_time
    fill_in "Components", with: @spell.components_id
    fill_in "Damage Effect", with: @spell.damage_effect_id
    fill_in "Desc", with: @spell.desc
    fill_in "Dnd Classes", with: @spell.dnd_classes_id
    fill_in "Duration", with: @spell.duration
    fill_in "Level", with: @spell.level
    fill_in "Name", with: @spell.name
    fill_in "Range", with: @spell.range
    fill_in "Spell School", with: @spell.spell_school_id
    click_on "Update Spell"

    assert_text "Spell was successfully updated"
    click_on "Back"
  end

  test "destroying a Spell" do
    visit spells_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Spell was successfully destroyed"
  end
end
