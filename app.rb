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
  @band = Band.new({:name => name})
  @band.save()
  @bands = Band.all()
  erb(:index)
end

post('/venues') do
  name = params.fetch('name')
  @venue = Venue.new({:name => name})
  @venue.save()
  @venues = Venue.all()
  erb(:index)
end
