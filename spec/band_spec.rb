require('spec_helper')

describe(Band) do
  it('validates presence of name') do
    band = Band.new({:name => ""})
    expect(band.save()).to(eq(false))
  end
end
