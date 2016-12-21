require "spec_helper"

describe Track do
  it{should belong_to :artist}
  it{should have_and_belong_to_many :albums}
end
