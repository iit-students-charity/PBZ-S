require 'test_helper'

class TariffsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tariff = tariffs(:one)
  end

  test "should get index" do
    get tariffs_url
    assert_response :success
  end

  test "should get new" do
    get new_tariff_url
    assert_response :success
  end

  test "should create tariff" do
    assert_difference('Tariff.count') do
      post tariffs_url, params: { tariff: { city: @tariff.city, duration: @tariff.duration, expire_date: @tariff.expire_date, price: @tariff.price, special_price: @tariff.special_price } }
    end

    assert_redirected_to tariff_url(Tariff.last)
  end

  test "should show tariff" do
    get tariff_url(@tariff)
    assert_response :success
  end

  test "should get edit" do
    get edit_tariff_url(@tariff)
    assert_response :success
  end

  test "should update tariff" do
    patch tariff_url(@tariff), params: { tariff: { city: @tariff.city, duration: @tariff.duration, expire_date: @tariff.expire_date, price: @tariff.price, special_price: @tariff.special_price } }
    assert_redirected_to tariff_url(@tariff)
  end

  test "should destroy tariff" do
    assert_difference('Tariff.count', -1) do
      delete tariff_url(@tariff)
    end

    assert_redirected_to tariffs_url
  end
end
