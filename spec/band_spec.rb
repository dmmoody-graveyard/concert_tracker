require('spec_helper')
require('shoulda-matchers')

describe(Band) do

  it { should have_and_belong_to_many(:venues) }

  it('validates presence of name') do
    band = Band.new({:name => ""})
    expect(band.save()).to(eq(false))
  end

  it('takes a name and makes it titlecase') do
    band = Band.create({:name => 'dolly parton', :id => nil})
    expect(band.name()).to(eq('Dolly Parton'))
  end

  it('takes a name and if upcase returns name') do
    band = Band.create({:name => 'ACDC', :id => nil})
    expect(band.name()).to(eq('ACDC'))
  end
end
