require("bundler/setup")
Bundler.require(:default)

Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file}

get('/') do
  erb(:index)
end

get('/bands/add') do
  erb(:band_form)
end

post('/bands/add') do
 name = params.fetch("name")
 genre = params.fetch("genre")
 @new_band = Band.new(name: name, genre: genre)
 if @new_band.save()
   redirect("/bands")
 else
   erb(:errors1)
 end
end

get('/bands') do
  @bands = Band.all
  erb(:bands)
end

get('/bands/:id') do
  @band = Band.find(params.fetch("id").to_i)
  @venues = Venue.all
  erb(:band)
end

get('/bands/:id/edit') do
  @band = Band.find(params.fetch("id").to_i)
  erb(:band_form_update)
end

patch('/bands/update/:id') do
  band_id = params.fetch("id").to_i()
  @band = Band.find(band_id)
  if params.fetch("name") == ""
    name = @band.name
  else
    name = params.fetch("")
  end

  if params.fetch("genre") == ""
    genre = @band.genre
  else
    genre = params.fetch("genre")
  end

  @band.update(name: name, genre: genre)
  redirect("/bands/".concat(band_id.to_s))
end

patch('/bands/gigs/:id') do
  @band = Band.find(params.fetch("id").to_i)
  if params.fetch("venue") == ""
    description = params.fetch("description")
    address = params.fetch("address")
    new_venue = Venue.create(description: description, address: address, band_ids: [@band.id])
  else
    venue_id = params.fetch("venue").to_i
    venue = Venue.find(venue_id)
    @band.venues.push(venue)
  end
  redirect("/bands/".concat(@band.id.to_s))
end

patch('/venues/gigs/:id') do
  @venue = Venue.find(params.fetch("id").to_i)
  if params.fetch("band") == ""
    name = params.fetch("name")
    genre = params.fetch("genre")
    new_band = Band.create(name: name, genre: genre, venue_ids: [@venue.id])
  else
    band_id = params.fetch("band").to_i
    band = Band.find(band_id)
    @venue.bands.push(band)
  end
  redirect("/venues/".concat(@venue.id.to_s))
end

delete('/bands/:id/delete') do
  band = Band.find(params.fetch("id").to_i)
  band.delete()
  @bands = Band.all
  erb(:bands)
end

get('/venues/add') do
  erb(:venue_form)
end

post('/venues/add') do
 description = params.fetch("description")
 address = params.fetch("address")
 @new_venue = Venue.new(description: description, address: address)
 if @new_venue.save()
   redirect("/venues")
 else
   erb(:errors2)
 end
end

get ('/venues') do
  @venues = Venue.all
  erb(:venues)
end

get('/venues/:id') do
  @venue = Venue.find(params.fetch("id").to_i)
  @bands = Band.all
  erb(:venue)
end
