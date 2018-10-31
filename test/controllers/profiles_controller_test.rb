require 'test_helper'

class ProfilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @profile = profiles(:one)
  end

  test "should get index" do
    get profiles_url
    assert_response :success
  end

  test "should get new" do
    get new_profile_url
    assert_response :success
  end

  test "should create profile" do
    assert_difference('Profile.count') do
      post profiles_url, params: { profile: { ac: @profile.ac, age: @profile.age, alignment_id: @profile.alignment_id, attacks_id: @profile.attacks_id, background: @profile.background, backstory: @profile.backstory, bonds: @profile.bonds, char_name: @profile.char_name, class_id: @profile.class_id, dci: @profile.dci, deathsave_f: @profile.deathsave_f, deathsave_s: @profile.deathsave_s, exp: @profile.exp, eyes: @profile.eyes, faction_id: @profile.faction_id, features: @profile.features, flaws: @profile.flaws, hair: @profile.hair, height: @profile.height, hit_die: @profile.hit_die, hp: @profile.hp, ideals: @profile.ideals, init: @profile.init, inspire: @profile.inspire, inventory_id: @profile.inventory_id, langs_id: @profile.langs_id, pass_wisdom: @profile.pass_wisdom, personality: @profile.personality, prof_bonus: @profile.prof_bonus, profs: @profile.profs, race_id: @profile.race_id, skills_id: @profile.skills_id, skin: @profile.skin, speed: @profile.speed, spells_id: @profile.spells_id, stats_id: @profile.stats_id, temp_hp: @profile.temp_hp, total_ncm: @profile.total_ncm, traits: @profile.traits, treasure_id: @profile.treasure_id, user_id: @profile.user_id, weight: @profile.weight } }
    end

    assert_redirected_to profile_url(Profile.last)
  end

  test "should show profile" do
    get profile_url(@profile)
    assert_response :success
  end

  test "should get edit" do
    get edit_profile_url(@profile)
    assert_response :success
  end

  test "should update profile" do
    patch profile_url(@profile), params: { profile: { ac: @profile.ac, age: @profile.age, alignment_id: @profile.alignment_id, attacks_id: @profile.attacks_id, background: @profile.background, backstory: @profile.backstory, bonds: @profile.bonds, char_name: @profile.char_name, class_id: @profile.class_id, dci: @profile.dci, deathsave_f: @profile.deathsave_f, deathsave_s: @profile.deathsave_s, exp: @profile.exp, eyes: @profile.eyes, faction_id: @profile.faction_id, features: @profile.features, flaws: @profile.flaws, hair: @profile.hair, height: @profile.height, hit_die: @profile.hit_die, hp: @profile.hp, ideals: @profile.ideals, init: @profile.init, inspire: @profile.inspire, inventory_id: @profile.inventory_id, langs_id: @profile.langs_id, pass_wisdom: @profile.pass_wisdom, personality: @profile.personality, prof_bonus: @profile.prof_bonus, profs: @profile.profs, race_id: @profile.race_id, skills_id: @profile.skills_id, skin: @profile.skin, speed: @profile.speed, spells_id: @profile.spells_id, stats_id: @profile.stats_id, temp_hp: @profile.temp_hp, total_ncm: @profile.total_ncm, traits: @profile.traits, treasure_id: @profile.treasure_id, user_id: @profile.user_id, weight: @profile.weight } }
    assert_redirected_to profile_url(@profile)
  end

  test "should destroy profile" do
    assert_difference('Profile.count', -1) do
      delete profile_url(@profile)
    end

    assert_redirected_to profiles_url
  end
end
