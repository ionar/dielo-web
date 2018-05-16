require 'test_helper'

class PartnershipsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @partnership = partnerships(:one)
  end

  test "should get index" do
    get partnerships_url
    assert_response :success
  end

  test "should get new" do
    get new_partnership_url
    assert_response :success
  end

  test "should create partnership" do
    assert_difference('Partnership.count') do
      post partnerships_url, params: { partnership: { address: @partnership.address, city: @partnership.city, cnpj: @partnership.cnpj, email: @partnership.email, kind: @partnership.kind, name: @partnership.name, phone: @partnership.phone, province: @partnership.province } }
    end

    assert_redirected_to partnership_url(Partnership.last)
  end

  test "should show partnership" do
    get partnership_url(@partnership)
    assert_response :success
  end

  test "should get edit" do
    get edit_partnership_url(@partnership)
    assert_response :success
  end

  test "should update partnership" do
    patch partnership_url(@partnership), params: { partnership: { address: @partnership.address, city: @partnership.city, cnpj: @partnership.cnpj, email: @partnership.email, kind: @partnership.kind, name: @partnership.name, phone: @partnership.phone, province: @partnership.province } }
    assert_redirected_to partnership_url(@partnership)
  end

  test "should destroy partnership" do
    assert_difference('Partnership.count', -1) do
      delete partnership_url(@partnership)
    end

    assert_redirected_to partnerships_url
  end
end
