require('spec_helper')

describe(Album) do
  it {should belong_to :artist}
  it {should belong_to :label}
  it {should have_many :formats}
  it {should have_and_belong_to_many :tracks}
  it {should have_and_belong_to_many :tags}
  it {should validate_uniqueness_of :name}
end
