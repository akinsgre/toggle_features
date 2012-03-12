require 'spec_helper'

describe Achievement do
  it "should be valid" do
    achieve = Achievement.new({})
    achieve.should_not be_valid
  end
end
