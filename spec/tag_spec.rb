describe(Tag) do
  it("ensures the tag has text and album_id") do
    tag = Tag.create({:text => ""})
    expect(Tag.any?()).to(eq(false))
  end
end
