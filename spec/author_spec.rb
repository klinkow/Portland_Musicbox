require('spec_helper')

describe(Author) do
  it("ensures the author has name") do
    comment = Author.create({:text => ""})
    expect(Author.any?()).to(eq(false))
  end
end
