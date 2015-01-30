require('bundler/setup')
Bundler.require(:default)

Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

get('/') do
  @bands = Band.all()
  @venues = Venue.all()
  erb(:index)
end

post('/bands') do
  name = params.fetch('name')
  @band = Band.create({:name => name})
  @bands = Band.all()
  @venues = Venue.all()
  erb(:index)
end

post('/venues') do
  name = params.fetch('name')
  @venue = Venue.create({:name => name})
  @venues = Venue.all()
  @bands = Band.all()
  erb(:index)
end
