require 'test_helper'

class SpellComponentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @spell_component = spell_components(:one)
  end

  test "should get index" do
    get spell_components_url
    assert_response :success
  end

  test "should get new" do
    get new_spell_component_url
    assert_response :success
  end

  test "should create spell_component" do
    assert_difference('SpellComponent.count') do
      post spell_components_url, params: { spell_component: { desc: @spell_component.desc, name: @spell_component.name, spell_component_type_id: @spell_component.spell_component_type_id } }
    end

    assert_redirected_to spell_component_url(SpellComponent.last)
  end

  test "should show spell_component" do
    get spell_component_url(@spell_component)
    assert_response :success
  end

  test "should get edit" do
    get edit_spell_component_url(@spell_component)
    assert_response :success
  end

  test "should update spell_component" do
    patch spell_component_url(@spell_component), params: { spell_component: { desc: @spell_component.desc, name: @spell_component.name, spell_component_type_id: @spell_component.spell_component_type_id } }
    assert_redirected_to spell_component_url(@spell_component)
  end

  test "should destroy spell_component" do
    assert_difference('SpellComponent.count', -1) do
      delete spell_component_url(@spell_component)
    end

    assert_redirected_to spell_components_url
  end
end
