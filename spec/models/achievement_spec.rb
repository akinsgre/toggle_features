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
    @codeAchievementDetail = Factory(:code_achievement_detail)
    @codeAchievement = Factory(:code_achievement, :achievement_detail => @codeAchievementDetail)
    
  end

  it "should be found" do
    codeAchievement = Achievement.find(@codeAchievement.id)
  end

  it "should have a Detail" do
    code = CodeAchievement.find(@codeAchievement.id)
    code.achievement_detail.should_not be_nil

    code.achievement_detail.destroy
    code.save

    code = CodeAchievement.find(@codeAchievement.id)
    code.achievement_detail.should be_nil


  end
end
