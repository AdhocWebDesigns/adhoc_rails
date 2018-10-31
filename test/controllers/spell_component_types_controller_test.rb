require 'test_helper'

class SpellComponentTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @spell_component_type = spell_component_types(:one)
  end

  test "should get index" do
    get spell_component_types_url
    assert_response :success
  end

  test "should get new" do
    get new_spell_component_type_url
    assert_response :success
  end

  test "should create spell_component_type" do
    assert_difference('SpellComponentType.count') do
      post spell_component_types_url, params: { spell_component_type: { desc: @spell_component_type.desc, name: @spell_component_type.name, symbol: @spell_component_type.symbol } }
    end

    assert_redirected_to spell_component_type_url(SpellComponentType.last)
  end

  test "should show spell_component_type" do
    get spell_component_type_url(@spell_component_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_spell_component_type_url(@spell_component_type)
    assert_response :success
  end

  test "should update spell_component_type" do
    patch spell_component_type_url(@spell_component_type), params: { spell_component_type: { desc: @spell_component_type.desc, name: @spell_component_type.name, symbol: @spell_component_type.symbol } }
    assert_redirected_to spell_component_type_url(@spell_component_type)
  end

  test "should destroy spell_component_type" do
    assert_difference('SpellComponentType.count', -1) do
      delete spell_component_type_url(@spell_component_type)
    end

    assert_redirected_to spell_component_types_url
  end
end
