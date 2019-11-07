require "application_system_test_case"

class TariffsTest < ApplicationSystemTestCase
  setup do
    @tariff = tariffs(:one)
  end

  test "visiting the index" do
    visit tariffs_url
    assert_selector "h1", text: "Tariffs"
  end

  test "creating a Tariff" do
    visit tariffs_url
    click_on "New Tariff"

    fill_in "City", with: @tariff.city
    fill_in "Duration", with: @tariff.duration
    fill_in "Expire date", with: @tariff.expire_date
    fill_in "Price", with: @tariff.price
    fill_in "Special price", with: @tariff.special_price
    click_on "Create Tariff"

    assert_text "Tariff was successfully created"
    click_on "Back"
  end

  test "updating a Tariff" do
    visit tariffs_url
    click_on "Edit", match: :first

    fill_in "City", with: @tariff.city
    fill_in "Duration", with: @tariff.duration
    fill_in "Expire date", with: @tariff.expire_date
    fill_in "Price", with: @tariff.price
    fill_in "Special price", with: @tariff.special_price
    click_on "Update Tariff"

    assert_text "Tariff was successfully updated"
    click_on "Back"
  end

  test "destroying a Tariff" do
    visit tariffs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tariff was successfully destroyed"
  end
end
