require 'test_helper'

class DndClassesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dnd_class = dnd_classes(:one)
  end

  test "should get index" do
    get dnd_classes_url
    assert_response :success
  end

  test "should get new" do
    get new_dnd_class_url
    assert_response :success
  end

  test "should create dnd_class" do
    assert_difference('DndClass.count') do
      post dnd_classes_url, params: { dnd_class: { desc: @dnd_class.desc, name: @dnd_class.name } }
    end

    assert_redirected_to dnd_class_url(DndClass.last)
  end

  test "should show dnd_class" do
    get dnd_class_url(@dnd_class)
    assert_response :success
  end

  test "should get edit" do
    get edit_dnd_class_url(@dnd_class)
    assert_response :success
  end

  test "should update dnd_class" do
    patch dnd_class_url(@dnd_class), params: { dnd_class: { desc: @dnd_class.desc, name: @dnd_class.name } }
    assert_redirected_to dnd_class_url(@dnd_class)
  end

  test "should destroy dnd_class" do
    assert_difference('DndClass.count', -1) do
      delete dnd_class_url(@dnd_class)
    end

    assert_redirected_to dnd_classes_url
  end
end
