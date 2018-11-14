require "application_system_test_case"

class MrpsTest < ApplicationSystemTestCase
  setup do
    @mrp = mrps(:one)
  end

  test "visiting the index" do
    visit mrps_url
    assert_selector "h1", text: "Mrps"
  end

  test "creating a Mrp" do
    visit mrps_url
    click_on "New Mrp"

    fill_in "A1", with: @mrp.a1
    fill_in "A10", with: @mrp.a10
    fill_in "A11", with: @mrp.a11
    fill_in "A2", with: @mrp.a2
    fill_in "A3", with: @mrp.a3
    fill_in "A4", with: @mrp.a4
    fill_in "A5", with: @mrp.a5
    fill_in "A6", with: @mrp.a6
    fill_in "A7", with: @mrp.a7
    fill_in "A8", with: @mrp.a8
    fill_in "A9", with: @mrp.a9
    fill_in "B1", with: @mrp.b1
    fill_in "B10", with: @mrp.b10
    fill_in "B11", with: @mrp.b11
    fill_in "B2", with: @mrp.b2
    fill_in "B3", with: @mrp.b3
    fill_in "B4", with: @mrp.b4
    fill_in "B5", with: @mrp.b5
    fill_in "B6", with: @mrp.b6
    fill_in "B7", with: @mrp.b7
    fill_in "B8", with: @mrp.b8
    fill_in "B9", with: @mrp.b9
    fill_in "C2", with: @mrp.c2
    fill_in "C3", with: @mrp.c3
    fill_in "Est", with: @mrp.est
    fill_in "Lt", with: @mrp.lt
    click_on "Create Mrp"

    assert_text "Mrp was successfully created"
    click_on "Back"
  end

  test "updating a Mrp" do
    visit mrps_url
    click_on "Edit", match: :first

    fill_in "A1", with: @mrp.a1
    fill_in "A10", with: @mrp.a10
    fill_in "A11", with: @mrp.a11
    fill_in "A2", with: @mrp.a2
    fill_in "A3", with: @mrp.a3
    fill_in "A4", with: @mrp.a4
    fill_in "A5", with: @mrp.a5
    fill_in "A6", with: @mrp.a6
    fill_in "A7", with: @mrp.a7
    fill_in "A8", with: @mrp.a8
    fill_in "A9", with: @mrp.a9
    fill_in "B1", with: @mrp.b1
    fill_in "B10", with: @mrp.b10
    fill_in "B11", with: @mrp.b11
    fill_in "B2", with: @mrp.b2
    fill_in "B3", with: @mrp.b3
    fill_in "B4", with: @mrp.b4
    fill_in "B5", with: @mrp.b5
    fill_in "B6", with: @mrp.b6
    fill_in "B7", with: @mrp.b7
    fill_in "B8", with: @mrp.b8
    fill_in "B9", with: @mrp.b9
    fill_in "C2", with: @mrp.c2
    fill_in "C3", with: @mrp.c3
    fill_in "Est", with: @mrp.est
    fill_in "Lt", with: @mrp.lt
    click_on "Update Mrp"

    assert_text "Mrp was successfully updated"
    click_on "Back"
  end

  test "destroying a Mrp" do
    visit mrps_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Mrp was successfully destroyed"
  end
end
