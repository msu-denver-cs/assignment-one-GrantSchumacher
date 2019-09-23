require "application_system_test_case"

class CarsPartsTest < ApplicationSystemTestCase
  setup do
    @cars_part = cars_parts(:one)
  end

  test "visiting the index" do
    visit cars_parts_url
    assert_selector "h1", text: "Cars Parts"
  end

  test "creating a Cars part" do
    visit cars_parts_url
    click_on "New Cars Part"

    fill_in "Make", with: @cars_part.make
    fill_in "Model", with: @cars_part.model
    fill_in "Parts", with: @cars_part.parts
    fill_in "Vin", with: @cars_part.vin
    click_on "Create Cars part"

    assert_text "Cars part was successfully created"
    click_on "Back"
  end

  test "updating a Cars part" do
    visit cars_parts_url
    click_on "Edit", match: :first

    fill_in "Make", with: @cars_part.make
    fill_in "Model", with: @cars_part.model
    fill_in "Parts", with: @cars_part.parts
    fill_in "Vin", with: @cars_part.vin
    click_on "Update Cars part"

    assert_text "Cars part was successfully updated"
    click_on "Back"
  end

  test "destroying a Cars part" do
    visit cars_parts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cars part was successfully destroyed"
  end
end
