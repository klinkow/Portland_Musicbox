require('spec_helper')

describe(Format) do
  it {should have_many :merchandises}
  it {should have_many :albums}
end
