require('bundler/setup')
Bundler.require(:default)

Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

get('/') do
  @bands = Band.all()
  @venues = Venue.all()
  erb(:index)
end

get('/bands/:id') do
  @band = Band.find(params.fetch("id").to_i())
  @venues = Venue.all()
  erb(:band)
end

post('/bands') do
  name = params.fetch('name')
  @band = Band.create({:name => name})
  @bands = Band.all()
  @venues = Venue.all()
  redirect('/')
end

post('/bands/:id') do
  venue = params.fetch("venue")
  @venue = Venue.find(venue)
  band_id = params.fetch("id").to_i()
  @band = Band.find(band_id)
  @band.venues.push(@venue)
  @venues = Venue.all()
  erb(:band)
end

delete("/bands/:id") do
  @band = Band.find(params.fetch("id").to_i())
  @band.delete()
  @bands = Band.all()
  @venues = Venue.all()
  redirect("/")
end

patch("/bands/:id") do
  name = params.fetch("name")
  @band = Band.find(params.fetch("id").to_i())
  @band.update({:name => name})
  @venues = Venue.all()
  erb(:band)
end

post('/venues') do
  name = params.fetch('name')
  @venue = Venue.create({:name => name})
  @venues = Venue.all()
  @bands = Band.all()
  redirect('/')
end

get('/venues/:id') do
  @venue = Venue.find(params.fetch("id").to_i())
  @bands = Band.all()
  erb(:venue)
end

post('/venues/:id') do
  band = params.fetch("band")
  @band = Band.find(band)
  venue_id = params.fetch("id").to_i()
  @venue = Venue.find(venue_id)
  @venue.bands.push(@band)
  @bands = Band.all()
  erb(:venue)
end

delete("/venues/:id") do
  @venue = Venue.find(params.fetch("id").to_i())
  @venue.delete()
  @bands = Band.all()
  @venues = Venue.all()
  redirect("/")
end

patch("/venues/:id") do
  name = params.fetch("name")
  @venue = Venue.find(params.fetch("id").to_i())
  @venue.update({:name => name})
  @bands = Band.all()
  erb(:venue)
end
