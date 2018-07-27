require 'rails_helper'

context 'visitor user searches with a valid zip code' do
  it 'should return all active attorneys in a 30 mile radius' do
    visit '/'

    fill_in "Enter your address or a zip code", with: "80205"
    click_on "Submit"

    expect(current_path).to eq('/search_results')
end