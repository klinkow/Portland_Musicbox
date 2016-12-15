require('spec_helper')

describe(Artist) do
  it {should have_many :albums}
  it {should have_many :tracks}
  it {should have_and_belong_to_many :labels}
end
