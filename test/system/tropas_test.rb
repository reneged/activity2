require "application_system_test_case"

class TropasTest < ApplicationSystemTestCase
  setup do
    @tropa = tropas(:one)
  end

  test "visiting the index" do
    visit tropas_url
    assert_selector "h1", text: "Tropas"
  end

  test "creating a Tropa" do
    visit tropas_url
    click_on "New Tropa"

    fill_in "Age", with: @tropa.age
    fill_in "Contactno", with: @tropa.contactNo
    fill_in "Dob", with: @tropa.dob
    fill_in "Name", with: @tropa.name
    click_on "Create Tropa"

    assert_text "Tropa was successfully created"
    click_on "Back"
  end

  test "updating a Tropa" do
    visit tropas_url
    click_on "Edit", match: :first

    fill_in "Age", with: @tropa.age
    fill_in "Contactno", with: @tropa.contactNo
    fill_in "Dob", with: @tropa.dob
    fill_in "Name", with: @tropa.name
    click_on "Update Tropa"

    assert_text "Tropa was successfully updated"
    click_on "Back"
  end

  test "destroying a Tropa" do
    visit tropas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tropa was successfully destroyed"
  end
end
