require 'test_helper'

class TropasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tropa = tropas(:one)
  end

  test "should get index" do
    get tropas_url
    assert_response :success
  end

  test "should get new" do
    get new_tropa_url
    assert_response :success
  end

  test "should create tropa" do
    assert_difference('Tropa.count') do
      post tropas_url, params: { tropa: { age: @tropa.age, contactNo: @tropa.contactNo, dob: @tropa.dob, name: @tropa.name } }
    end

    assert_redirected_to tropa_url(Tropa.last)
  end

  test "should show tropa" do
    get tropa_url(@tropa)
    assert_response :success
  end

  test "should get edit" do
    get edit_tropa_url(@tropa)
    assert_response :success
  end

  test "should update tropa" do
    patch tropa_url(@tropa), params: { tropa: { age: @tropa.age, contactNo: @tropa.contactNo, dob: @tropa.dob, name: @tropa.name } }
    assert_redirected_to tropa_url(@tropa)
  end

  test "should destroy tropa" do
    assert_difference('Tropa.count', -1) do
      delete tropa_url(@tropa)
    end

    assert_redirected_to tropas_url
  end
end
