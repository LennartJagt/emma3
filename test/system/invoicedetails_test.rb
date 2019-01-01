require "application_system_test_case"

class InvoicedetailsTest < ApplicationSystemTestCase
  setup do
    @invoicedetail = invoicedetails(:one)
  end

  test "visiting the index" do
    visit invoicedetails_url
    assert_selector "h1", text: "Invoicedetails"
  end

  test "creating a Invoicedetail" do
    visit invoicedetails_url
    click_on "New Invoicedetail"

    fill_in "Date", with: @invoicedetail.date
    fill_in "Name", with: @invoicedetail.name
    fill_in "Price", with: @invoicedetail.price
    fill_in "Quantity", with: @invoicedetail.quantity
    fill_in "Regminequser", with: @invoicedetail.regminequser
    fill_in "Vat", with: @invoicedetail.vat
    fill_in "Vatpercentage", with: @invoicedetail.vatpercentage
    fill_in "Vetid", with: @invoicedetail.vetId
    click_on "Create Invoicedetail"

    assert_text "Invoicedetail was successfully created"
    click_on "Back"
  end

  test "updating a Invoicedetail" do
    visit invoicedetails_url
    click_on "Edit", match: :first

    fill_in "Date", with: @invoicedetail.date
    fill_in "Name", with: @invoicedetail.name
    fill_in "Price", with: @invoicedetail.price
    fill_in "Quantity", with: @invoicedetail.quantity
    fill_in "Regminequser", with: @invoicedetail.regminequser
    fill_in "Vat", with: @invoicedetail.vat
    fill_in "Vatpercentage", with: @invoicedetail.vatpercentage
    fill_in "Vetid", with: @invoicedetail.vetId
    click_on "Update Invoicedetail"

    assert_text "Invoicedetail was successfully updated"
    click_on "Back"
  end

  test "destroying a Invoicedetail" do
    visit invoicedetails_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Invoicedetail was successfully destroyed"
  end
end
