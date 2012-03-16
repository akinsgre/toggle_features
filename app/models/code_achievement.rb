class CodeAchievement < Achievement
  relate_to_details
end
# == Schema Information
#
# Table name: achievements
#
#  id          :integer         not null, primary key
#  name        :string(255)
#  description :text
#  created_at  :datetime        not null
#  updated_at  :datetime        not null
#  type        :string(255)
#

