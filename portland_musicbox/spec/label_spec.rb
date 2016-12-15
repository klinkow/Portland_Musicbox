require "spec_helper"

describe Label do
  it {should have_and_belong_to_many :artists}
end
