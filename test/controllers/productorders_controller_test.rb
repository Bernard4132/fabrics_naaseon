require 'test_helper'

class ProductordersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @productorder = productorders(:one)
  end

  test "should get index" do
    get productorders_url
    assert_response :success
  end

  test "should get new" do
    get new_productorder_url
    assert_response :success
  end

  test "should create productorder" do
    assert_difference('Productorder.count') do
      post productorders_url, params: { productorder: { fabric_id: @productorder.fabric_id, sewornot: @productorder.sewornot, user_id: @productorder.user_id, yardsnumber: @productorder.yardsnumber, yardtype: @productorder.yardtype } }
    end

    assert_redirected_to productorder_url(Productorder.last)
  end

  test "should show productorder" do
    get productorder_url(@productorder)
    assert_response :success
  end

  test "should get edit" do
    get edit_productorder_url(@productorder)
    assert_response :success
  end

  test "should update productorder" do
    patch productorder_url(@productorder), params: { productorder: { fabric_id: @productorder.fabric_id, sewornot: @productorder.sewornot, user_id: @productorder.user_id, yardsnumber: @productorder.yardsnumber, yardtype: @productorder.yardtype } }
    assert_redirected_to productorder_url(@productorder)
  end

  test "should destroy productorder" do
    assert_difference('Productorder.count', -1) do
      delete productorder_url(@productorder)
    end

    assert_redirected_to productorders_url
  end
end
