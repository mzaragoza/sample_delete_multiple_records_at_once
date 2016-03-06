require 'spec_helper'

describe "page", type: :feature do
  it "counts how many users are in the system" do
    visit "/"
    expect(page).to have_content("There are currently 100 loaded on this page")
  end

  it "deletes 1 user " do
    User.create(name: "Moises Zaragoza", id: 1)
    User.create(name: "Moises The Great", id: 2)
    visit "/"
    expect(page).to have_content("There are currently 2 loaded on this page")
    find(:css, "#users_ids_[value='2']").set(true)
    click_button "Delete Selected"
    expect(page).to have_content("There are currently 1 loaded on this page")

  end
end
