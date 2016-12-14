require 'rails_helper'

describe "NREL SERVICES" do
  it "shows all the information needed from NREL API" do
    visit "/"

    fill_in "q", with: "80203"
    click_on "Locate"

    # Then I should be on page "/search" with parameters visible in the url

    expect(page).to have_content("CADACHARGEPOINT")
    expect(page).to have_content("290 E Speer Blvd")
    expect(page).to have_content("ELEC")
    expect(page).to have_content("0.54589")
    expect(page).to have_content("24 hours daily")
  end
end
