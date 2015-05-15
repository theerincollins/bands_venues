require('spec_helper')

describe Band do
  describe('#venues') do
    it('returns all venues at which the a band will play') do
      venue1 = Venue.create(description: "Super Awesome Venue", address: "111 Edmond Rd. Portland, OR 90210")
      venue2 = Venue.create(description: "The Other Super Awesome Venue", address: "222 Edmond Rd. Lookout, WV 90210")
      band = Band.create(name: "The Fairy Fun Fits", genre: "Screamo", venue_ids: [venue1.id(), venue2.id()])
    end
  end
end
