require 'spec_helper'

describe "User", type: :feature do
  it "should allow user to create user profile" do
    visit '/'
    click_link 'Create Profile'
    fill_in 'first_name', with: 'Raj'
    fill_in 'last_name', with: 'Guhptah'
    page.select 'Go to food carts', from: 'lunch'
    click_on 'Submit'
    expect(User.first.first_name).to eq 'raj'
  end

  it "should allow user to update a user profile" do
    new_user = User.create(first_name: 'Raj', last_name: 'Guhptah', track: "C#", transportation: "bike", lunch: "bring", ninth_floor: "false")
    visit '/users'
    click_link 'raj guhptah'
    click_link 'Edit'
    fill_in 'first_name', with: 'Taj'
    page.select 'Go to food carts', from: 'lunch'
    click_on 'Update User'
    expect(User.first.first_name).to eq 'taj'
  end

  it "should allow user to delete a user profile" do
    new_user = User.create(first_name: 'Raj', last_name: 'Guhptah', track: "C#", transportation: "bike", lunch: "bring", ninth_floor: "false")
    visit '/users'
    click_link 'raj guhptah'
    click_on 'Delete User'
    expect(User.all()).to eq []
  end
end
