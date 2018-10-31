require 'test_helper'

class DamageEffectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @damage_effect = damage_effects(:one)
  end

  test "should get index" do
    get damage_effects_url
    assert_response :success
  end

  test "should get new" do
    get new_damage_effect_url
    assert_response :success
  end

  test "should create damage_effect" do
    assert_difference('DamageEffect.count') do
      post damage_effects_url, params: { damage_effect: { name: @damage_effect.name, value: @damage_effect.value } }
    end

    assert_redirected_to damage_effect_url(DamageEffect.last)
  end

  test "should show damage_effect" do
    get damage_effect_url(@damage_effect)
    assert_response :success
  end

  test "should get edit" do
    get edit_damage_effect_url(@damage_effect)
    assert_response :success
  end

  test "should update damage_effect" do
    patch damage_effect_url(@damage_effect), params: { damage_effect: { name: @damage_effect.name, value: @damage_effect.value } }
    assert_redirected_to damage_effect_url(@damage_effect)
  end

  test "should destroy damage_effect" do
    assert_difference('DamageEffect.count', -1) do
      delete damage_effect_url(@damage_effect)
    end

    assert_redirected_to damage_effects_url
  end
end
