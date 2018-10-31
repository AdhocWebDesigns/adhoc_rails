require 'test_helper'

class PursesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @purse = purses(:one)
  end

  test "should get index" do
    get purses_url
    assert_response :success
  end

  test "should get new" do
    get new_purse_url
    assert_response :success
  end

  test "should create purse" do
    assert_difference('Purse.count') do
      post purses_url, params: { purse: { cp: @purse.cp, ep: @purse.ep, gp: @purse.gp, pp: @purse.pp, sp: @purse.sp, user_id: @purse.user_id } }
    end

    assert_redirected_to purse_url(Purse.last)
  end

  test "should show purse" do
    get purse_url(@purse)
    assert_response :success
  end

  test "should get edit" do
    get edit_purse_url(@purse)
    assert_response :success
  end

  test "should update purse" do
    patch purse_url(@purse), params: { purse: { cp: @purse.cp, ep: @purse.ep, gp: @purse.gp, pp: @purse.pp, sp: @purse.sp, user_id: @purse.user_id } }
    assert_redirected_to purse_url(@purse)
  end

  test "should destroy purse" do
    assert_difference('Purse.count', -1) do
      delete purse_url(@purse)
    end

    assert_redirected_to purses_url
  end
end
