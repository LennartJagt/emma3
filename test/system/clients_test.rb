require "application_system_test_case"

class ClientsTest < ApplicationSystemTestCase
  setup do
    @client = clients(:one)
  end

  test "visiting the index" do
    visit clients_url
    assert_selector "h1", text: "Clients"
  end

  test "creating a Client" do
    visit clients_url
    click_on "New Client"

    fill_in "Active", with: @client.active
    fill_in "Birthdate", with: @client.birthdate
    fill_in "Callname", with: @client.callname
    fill_in "Date", with: @client.date
    fill_in "Email", with: @client.email
    fill_in "Firstname", with: @client.firstname
    fill_in "Isclientof", with: @client.isclientof
    fill_in "Lastname", with: @client.lastname
    fill_in "Title", with: @client.title
    fill_in "Warning", with: @client.warning
    click_on "Create Client"

    assert_text "Client was successfully created"
    click_on "Back"
  end

  test "updating a Client" do
    visit clients_url
    click_on "Edit", match: :first

    fill_in "Active", with: @client.active
    fill_in "Birthdate", with: @client.birthdate
    fill_in "Callname", with: @client.callname
    fill_in "Date", with: @client.date
    fill_in "Email", with: @client.email
    fill_in "Firstname", with: @client.firstname
    fill_in "Isclientof", with: @client.isclientof
    fill_in "Lastname", with: @client.lastname
    fill_in "Title", with: @client.title
    fill_in "Warning", with: @client.warning
    click_on "Update Client"

    assert_text "Client was successfully updated"
    click_on "Back"
  end

  test "destroying a Client" do
    visit clients_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Client was successfully destroyed"
  end
end
