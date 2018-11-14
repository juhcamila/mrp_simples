require 'test_helper'

class MrpsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mrp = mrps(:one)
  end

  test "should get index" do
    get mrps_url
    assert_response :success
  end

  test "should get new" do
    get new_mrp_url
    assert_response :success
  end

  test "should create mrp" do
    assert_difference('Mrp.count') do
      post mrps_url, params: { mrp: { a1: @mrp.a1, a10: @mrp.a10, a11: @mrp.a11, a2: @mrp.a2, a3: @mrp.a3, a4: @mrp.a4, a5: @mrp.a5, a6: @mrp.a6, a7: @mrp.a7, a8: @mrp.a8, a9: @mrp.a9, b1: @mrp.b1, b10: @mrp.b10, b11: @mrp.b11, b2: @mrp.b2, b3: @mrp.b3, b4: @mrp.b4, b5: @mrp.b5, b6: @mrp.b6, b7: @mrp.b7, b8: @mrp.b8, b9: @mrp.b9, c2: @mrp.c2, c3: @mrp.c3, est: @mrp.est, lt: @mrp.lt } }
    end

    assert_redirected_to mrp_url(Mrp.last)
  end

  test "should show mrp" do
    get mrp_url(@mrp)
    assert_response :success
  end

  test "should get edit" do
    get edit_mrp_url(@mrp)
    assert_response :success
  end

  test "should update mrp" do
    patch mrp_url(@mrp), params: { mrp: { a1: @mrp.a1, a10: @mrp.a10, a11: @mrp.a11, a2: @mrp.a2, a3: @mrp.a3, a4: @mrp.a4, a5: @mrp.a5, a6: @mrp.a6, a7: @mrp.a7, a8: @mrp.a8, a9: @mrp.a9, b1: @mrp.b1, b10: @mrp.b10, b11: @mrp.b11, b2: @mrp.b2, b3: @mrp.b3, b4: @mrp.b4, b5: @mrp.b5, b6: @mrp.b6, b7: @mrp.b7, b8: @mrp.b8, b9: @mrp.b9, c2: @mrp.c2, c3: @mrp.c3, est: @mrp.est, lt: @mrp.lt } }
    assert_redirected_to mrp_url(@mrp)
  end

  test "should destroy mrp" do
    assert_difference('Mrp.count', -1) do
      delete mrp_url(@mrp)
    end

    assert_redirected_to mrps_url
  end
end
