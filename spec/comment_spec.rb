require('spec_helper')

describe(Comment) do
  it("ensures the comment has text, album_id, and user_id") do
    comment = Comment.create({:text => ""})
    expect(Comment.any?()).to(eq(false))
  end
end
