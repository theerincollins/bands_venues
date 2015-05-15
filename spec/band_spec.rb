require('spec_helper')

describe Band do
  describe('#venues') do
    it('returns all venues at which the a band will play') do
      venue1 = Venue.create(description: "Super Awesome Venue", address: "111 Edmond Rd. Portland, OR 90210")
      venue2 = Venue.create(description: "The Other Super Awesome Venue", address: "222 Edmond Rd. Lookout, WV 90210")
      band = Band.create(name: "The Fairy Fun Fits", genre: "Screamo", venue_ids: [venue1.id(), venue2.id()])
    end
  end

  it("validates presence of a band name") do
    band = Band.new(name: "")
    expect(band.save()).to(eq(false))
  end

  it("converts a band name to begin with a capital letter") do
    band = Band.create(name: "the Fairy Fun Fits", genre: "Screamo")
    expect(band.name).to(eq("The fairy fun fits"))
  end

end
