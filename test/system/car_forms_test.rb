require "application_system_test_case"

class CarFormsTest < ApplicationSystemTestCase
  setup do
    @car_form = car_forms(:one)
  end

  test "visiting the index" do
    visit car_forms_url
    assert_selector "h1", text: "Car Forms"
  end

  test "creating a Car form" do
    visit car_forms_url
    click_on "New Car Form"

    click_on "Create Car form"

    assert_text "Car form was successfully created"
    click_on "Back"
  end

  test "updating a Car form" do
    visit car_forms_url
    click_on "Edit", match: :first

    click_on "Update Car form"

    assert_text "Car form was successfully updated"
    click_on "Back"
  end

  test "destroying a Car form" do
    visit car_forms_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Car form was successfully destroyed"
  end
end
