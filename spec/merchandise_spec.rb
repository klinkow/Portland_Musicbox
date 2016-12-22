require('spec_helper')

describe Merchandise do
  it {should belong_to :album}
  it {should belong_to :format}
end
