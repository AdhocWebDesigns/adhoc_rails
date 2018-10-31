require "application_system_test_case"

class ProfilesTest < ApplicationSystemTestCase
  setup do
    @profile = profiles(:one)
  end

  test "visiting the index" do
    visit profiles_url
    assert_selector "h1", text: "Profiles"
  end

  test "creating a Profile" do
    visit profiles_url
    click_on "New Profile"

    fill_in "Ac", with: @profile.ac
    fill_in "Age", with: @profile.age
    fill_in "Alignment", with: @profile.alignment_id
    fill_in "Attacks", with: @profile.attacks_id
    fill_in "Background", with: @profile.background
    fill_in "Backstory", with: @profile.backstory
    fill_in "Bonds", with: @profile.bonds
    fill_in "Char Name", with: @profile.char_name
    fill_in "Class", with: @profile.class_id
    fill_in "Dci", with: @profile.dci
    fill_in "Deathsave F", with: @profile.deathsave_f
    fill_in "Deathsave S", with: @profile.deathsave_s
    fill_in "Exp", with: @profile.exp
    fill_in "Eyes", with: @profile.eyes
    fill_in "Faction", with: @profile.faction_id
    fill_in "Features", with: @profile.features
    fill_in "Flaws", with: @profile.flaws
    fill_in "Hair", with: @profile.hair
    fill_in "Height", with: @profile.height
    fill_in "Hit Die", with: @profile.hit_die
    fill_in "Hp", with: @profile.hp
    fill_in "Ideals", with: @profile.ideals
    fill_in "Init", with: @profile.init
    fill_in "Inspire", with: @profile.inspire
    fill_in "Inventory", with: @profile.inventory_id
    fill_in "Langs", with: @profile.langs_id
    fill_in "Pass Wisdom", with: @profile.pass_wisdom
    fill_in "Personality", with: @profile.personality
    fill_in "Prof Bonus", with: @profile.prof_bonus
    fill_in "Profs", with: @profile.profs
    fill_in "Race", with: @profile.race_id
    fill_in "Skills", with: @profile.skills_id
    fill_in "Skin", with: @profile.skin
    fill_in "Speed", with: @profile.speed
    fill_in "Spells", with: @profile.spells_id
    fill_in "Stats", with: @profile.stats_id
    fill_in "Temp Hp", with: @profile.temp_hp
    fill_in "Total Ncm", with: @profile.total_ncm
    fill_in "Traits", with: @profile.traits
    fill_in "Treasure", with: @profile.treasure_id
    fill_in "User", with: @profile.user_id
    fill_in "Weight", with: @profile.weight
    click_on "Create Profile"

    assert_text "Profile was successfully created"
    click_on "Back"
  end

  test "updating a Profile" do
    visit profiles_url
    click_on "Edit", match: :first

    fill_in "Ac", with: @profile.ac
    fill_in "Age", with: @profile.age
    fill_in "Alignment", with: @profile.alignment_id
    fill_in "Attacks", with: @profile.attacks_id
    fill_in "Background", with: @profile.background
    fill_in "Backstory", with: @profile.backstory
    fill_in "Bonds", with: @profile.bonds
    fill_in "Char Name", with: @profile.char_name
    fill_in "Class", with: @profile.class_id
    fill_in "Dci", with: @profile.dci
    fill_in "Deathsave F", with: @profile.deathsave_f
    fill_in "Deathsave S", with: @profile.deathsave_s
    fill_in "Exp", with: @profile.exp
    fill_in "Eyes", with: @profile.eyes
    fill_in "Faction", with: @profile.faction_id
    fill_in "Features", with: @profile.features
    fill_in "Flaws", with: @profile.flaws
    fill_in "Hair", with: @profile.hair
    fill_in "Height", with: @profile.height
    fill_in "Hit Die", with: @profile.hit_die
    fill_in "Hp", with: @profile.hp
    fill_in "Ideals", with: @profile.ideals
    fill_in "Init", with: @profile.init
    fill_in "Inspire", with: @profile.inspire
    fill_in "Inventory", with: @profile.inventory_id
    fill_in "Langs", with: @profile.langs_id
    fill_in "Pass Wisdom", with: @profile.pass_wisdom
    fill_in "Personality", with: @profile.personality
    fill_in "Prof Bonus", with: @profile.prof_bonus
    fill_in "Profs", with: @profile.profs
    fill_in "Race", with: @profile.race_id
    fill_in "Skills", with: @profile.skills_id
    fill_in "Skin", with: @profile.skin
    fill_in "Speed", with: @profile.speed
    fill_in "Spells", with: @profile.spells_id
    fill_in "Stats", with: @profile.stats_id
    fill_in "Temp Hp", with: @profile.temp_hp
    fill_in "Total Ncm", with: @profile.total_ncm
    fill_in "Traits", with: @profile.traits
    fill_in "Treasure", with: @profile.treasure_id
    fill_in "User", with: @profile.user_id
    fill_in "Weight", with: @profile.weight
    click_on "Update Profile"

    assert_text "Profile was successfully updated"
    click_on "Back"
  end

  test "destroying a Profile" do
    visit profiles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Profile was successfully destroyed"
  end
end
