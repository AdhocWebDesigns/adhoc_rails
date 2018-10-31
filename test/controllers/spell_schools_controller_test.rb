require 'test_helper'

class SpellSchoolsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @spell_school = spell_schools(:one)
  end

  test "should get index" do
    get spell_schools_url
    assert_response :success
  end

  test "should get new" do
    get new_spell_school_url
    assert_response :success
  end

  test "should create spell_school" do
    assert_difference('SpellSchool.count') do
      post spell_schools_url, params: { spell_school: { desc: @spell_school.desc, name: @spell_school.name } }
    end

    assert_redirected_to spell_school_url(SpellSchool.last)
  end

  test "should show spell_school" do
    get spell_school_url(@spell_school)
    assert_response :success
  end

  test "should get edit" do
    get edit_spell_school_url(@spell_school)
    assert_response :success
  end

  test "should update spell_school" do
    patch spell_school_url(@spell_school), params: { spell_school: { desc: @spell_school.desc, name: @spell_school.name } }
    assert_redirected_to spell_school_url(@spell_school)
  end

  test "should destroy spell_school" do
    assert_difference('SpellSchool.count', -1) do
      delete spell_school_url(@spell_school)
    end

    assert_redirected_to spell_schools_url
  end
end
