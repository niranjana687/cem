require 'test_helper'

class MetersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @meter = meters(:one)
  end

  test "should get index" do
    get meters_url
    assert_response :success
  end

  test "should get new" do
    get new_meter_url
    assert_response :success
  end

  test "should create meter" do
    assert_difference('Meter.count') do
      post meters_url, params: { meter: { balance: @meter.balance, energy_consumed: @meter.energy_consumed, energy_credits_rate: @meter.energy_credits_rate, total_energy_credits: @meter.total_energy_credits } }
    end

    assert_redirected_to meter_url(Meter.last)
  end

  test "should show meter" do
    get meter_url(@meter)
    assert_response :success
  end

  test "should get edit" do
    get edit_meter_url(@meter)
    assert_response :success
  end

  test "should update meter" do
    patch meter_url(@meter), params: { meter: { balance: @meter.balance, energy_consumed: @meter.energy_consumed, energy_credits_rate: @meter.energy_credits_rate, total_energy_credits: @meter.total_energy_credits } }
    assert_redirected_to meter_url(@meter)
  end

  test "should destroy meter" do
    assert_difference('Meter.count', -1) do
      delete meter_url(@meter)
    end

    assert_redirected_to meters_url
  end
end
