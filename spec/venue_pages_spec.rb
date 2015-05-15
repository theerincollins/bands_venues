require('spec_helper')


describe('all venues path', {:type => :feature}) do
  it('will take user to all venues') do
    venue1 = Venue.create(description: "super Awesome Venue", address: "111 Edmond Rd. Portland, OR 90210")
    visit("/venues")
    expect(page).to have_content('Super awesome venue')
  end
end
