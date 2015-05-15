require('spec_helper')


describe('all bands path', {:type => :feature}) do
  it('will take user to all bands') do
    band = Band.create(name: "the Fairy Fun Fits", genre: "Screamo")
    visit("/bands")
    expect(page).to have_content('The fairy fun fits')
  end
end

describe('home path', {:type => :feature}) do
  it('will take user to home page') do
    visit('/')
    expect(page).to have_content('Keep Calm and Rave On')
  end
end
