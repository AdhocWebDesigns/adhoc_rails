require 'test_helper'

class SpellsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @spell = spells(:one)
  end

  test "should get index" do
    get spells_url
    assert_response :success
  end

  test "should get new" do
    get new_spell_url
    assert_response :success
  end

  test "should create spell" do
    assert_difference('Spell.count') do
      post spells_url, params: { spell: { attack_save: @spell.attack_save, cast_time: @spell.cast_time, components_id: @spell.components_id, damage_effect_id: @spell.damage_effect_id, desc: @spell.desc, dnd_classes_id: @spell.dnd_classes_id, duration: @spell.duration, level: @spell.level, name: @spell.name, range: @spell.range, spell_school_id: @spell.spell_school_id } }
    end

    assert_redirected_to spell_url(Spell.last)
  end

  test "should show spell" do
    get spell_url(@spell)
    assert_response :success
  end

  test "should get edit" do
    get edit_spell_url(@spell)
    assert_response :success
  end

  test "should update spell" do
    patch spell_url(@spell), params: { spell: { attack_save: @spell.attack_save, cast_time: @spell.cast_time, components_id: @spell.components_id, damage_effect_id: @spell.damage_effect_id, desc: @spell.desc, dnd_classes_id: @spell.dnd_classes_id, duration: @spell.duration, level: @spell.level, name: @spell.name, range: @spell.range, spell_school_id: @spell.spell_school_id } }
    assert_redirected_to spell_url(@spell)
  end

  test "should destroy spell" do
    assert_difference('Spell.count', -1) do
      delete spell_url(@spell)
    end

    assert_redirected_to spells_url
  end
end
