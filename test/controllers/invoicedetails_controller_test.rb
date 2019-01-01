require 'test_helper'

class InvoicedetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @invoicedetail = invoicedetails(:one)
  end

  test "should get index" do
    get invoicedetails_url
    assert_response :success
  end

  test "should get new" do
    get new_invoicedetail_url
    assert_response :success
  end

  test "should create invoicedetail" do
    assert_difference('Invoicedetail.count') do
      post invoicedetails_url, params: { invoicedetail: { date: @invoicedetail.date, name: @invoicedetail.name, price: @invoicedetail.price, quantity: @invoicedetail.quantity, regminequser: @invoicedetail.regminequser, vat: @invoicedetail.vat, vatpercentage: @invoicedetail.vatpercentage, vetId: @invoicedetail.vetId } }
    end

    assert_redirected_to invoicedetail_url(Invoicedetail.last)
  end

  test "should show invoicedetail" do
    get invoicedetail_url(@invoicedetail)
    assert_response :success
  end

  test "should get edit" do
    get edit_invoicedetail_url(@invoicedetail)
    assert_response :success
  end

  test "should update invoicedetail" do
    patch invoicedetail_url(@invoicedetail), params: { invoicedetail: { date: @invoicedetail.date, name: @invoicedetail.name, price: @invoicedetail.price, quantity: @invoicedetail.quantity, regminequser: @invoicedetail.regminequser, vat: @invoicedetail.vat, vatpercentage: @invoicedetail.vatpercentage, vetId: @invoicedetail.vetId } }
    assert_redirected_to invoicedetail_url(@invoicedetail)
  end

  test "should destroy invoicedetail" do
    assert_difference('Invoicedetail.count', -1) do
      delete invoicedetail_url(@invoicedetail)
    end

    assert_redirected_to invoicedetails_url
  end
end
