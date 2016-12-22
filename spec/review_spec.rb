require('spec_helper')

describe(Review) do
  it("ensures the review has text, album_id, and author") do
    review = Review.create({:text => ""})
    expect(Review.any?()).to(eq(false))
  end
end
