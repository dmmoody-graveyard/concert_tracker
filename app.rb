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
  venue = params.fetch("venue").to_i()
  @venue = Venue.find(venue)
  band_id = params.fetch("id").to_i()
  @band = Band.find(band_id)
  @band.venues.push(@venue)
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
