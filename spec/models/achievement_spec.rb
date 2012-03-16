require 'spec_helper'

describe Achievement do
  it "should be valid" do
    achieve = Achievement.new({})
    achieve.should_not be_valid
  end
end

describe CodeAchievement do
  it "should have an attribute" do
    code = CodeAchievement.new({:name => "Test", :description => "This is a test"})
    code.should be_valid
    code.type.should == "CodeAchievement"
    code.achievement_detail = CodeAchievementDetail.new
    code.achievement_detail.should_not be_nil
    
    
  end
end

describe CodeAchievement do
  before :each do
    @codeAchievement = Factory(:code_achievement)
  end

  it "should be found" do
    codeAchievement = Achievement.find(@codeAchievement.id)
  end

  it "should have a Detail" do
    codeAchievement = CodeAchievement.new({:name => "Code1", :description => "Code Description"})
  end
end
