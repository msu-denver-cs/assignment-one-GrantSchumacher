require 'test_helper'

class CarFormsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @car_form = car_forms(:one)
  end

  test "should get index" do
    get car_forms_url
    assert_response :success
  end

  test "should get new" do
    get new_car_form_url
    assert_response :success
  end

  test "should create car_form" do
    assert_difference('CarForm.count') do
      post car_forms_url, params: { car_form: {  } }
    end

    assert_redirected_to car_form_url(CarForm.last)
  end

  test "should show car_form" do
    get car_form_url(@car_form)
    assert_response :success
  end

  test "should get edit" do
    get edit_car_form_url(@car_form)
    assert_response :success
  end

  test "should update car_form" do
    patch car_form_url(@car_form), params: { car_form: {  } }
    assert_redirected_to car_form_url(@car_form)
  end

  test "should destroy car_form" do
    assert_difference('CarForm.count', -1) do
      delete car_form_url(@car_form)
    end

    assert_redirected_to car_forms_url
  end
end
