require('spec_helper')

describe(Album) do
  it {should belong_to :artist}
  it {should belong_to :label}

  it {should have_and_belong_to_many :tracks}
end
