require('spec_helper')

describe(Tag) do
  it("ensures the tag has text and album_id") do
    tag = Tag.create({:text => ""})
    expect(Tag.any?()).to(eq(false))
  end
  it {should have_and_belong_to_many :albums}
end
