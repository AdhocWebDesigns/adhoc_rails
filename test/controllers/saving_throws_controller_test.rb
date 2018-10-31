require 'test_helper'

class SavingThrowsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @saving_throw = saving_throws(:one)
  end

  test "should get index" do
    get saving_throws_url
    assert_response :success
  end

  test "should get new" do
    get new_saving_throw_url
    assert_response :success
  end

  test "should create saving_throw" do
    assert_difference('SavingThrow.count') do
      post saving_throws_url, params: { saving_throw: { desc: @saving_throw.desc, name: @saving_throw.name } }
    end

    assert_redirected_to saving_throw_url(SavingThrow.last)
  end

  test "should show saving_throw" do
    get saving_throw_url(@saving_throw)
    assert_response :success
  end

  test "should get edit" do
    get edit_saving_throw_url(@saving_throw)
    assert_response :success
  end

  test "should update saving_throw" do
    patch saving_throw_url(@saving_throw), params: { saving_throw: { desc: @saving_throw.desc, name: @saving_throw.name } }
    assert_redirected_to saving_throw_url(@saving_throw)
  end

  test "should destroy saving_throw" do
    assert_difference('SavingThrow.count', -1) do
      delete saving_throw_url(@saving_throw)
    end

    assert_redirected_to saving_throws_url
  end
end
