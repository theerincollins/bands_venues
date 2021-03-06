require('spec_helper')

describe Venue do
  describe('#bands') do
    it('returns all bands to play at one venue') do
      band1 = Band.create(name: "The Fairy Fun Fits", genre: "Screamo")
      band2 = Band.create(name: "Banjo Bumpkins", genre: "Bluegrass")
      venue1 = Venue.create(description: "Super Awesome Venue", address: "111 Edmond Rd. Portland, OR 90210", band_ids: [band1.id(), band2.id()])
    end
  end

  it("converts a venue name to begin with a capital letter") do
    venue1 = Venue.create(description: "super Awesome Venue", address: "111 Edmond Rd. Portland, OR 90210")
    expect(venue1.description).to(eq("Super awesome venue"))
  end
end
