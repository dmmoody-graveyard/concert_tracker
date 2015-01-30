require('spec_helper')

describe(Venue) do

  it { should have_and_belong_to_many(:bands) }

  it('validates presence of name') do
    venue = Venue.new(:name => "")
    expect(venue.save()).to(eq(false))
  end

  it('takes a name and makes it titlecase') do
    venue = Venue.create({:name => 'dolly parton', :id => nil})
    expect(venue.name()).to(eq('Dolly Parton'))
  end

  it('takes a name and if upcase returns name') do
    venue = Venue.create({:name => 'ACDC', :id => nil})
    expect(venue.name()).to(eq('ACDC'))
  end

end
