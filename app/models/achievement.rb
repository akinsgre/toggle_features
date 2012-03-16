class Achievement < ActiveRecord::Base
  validates_presence_of :name, :description
  def self.relate_to_details
    class_eval <<-EOF
       has_one :achievement_detail, :class_name => "#{self.name}Detail"
       accepts_nested_attributes_for :achievement_detail
       default_scope :include => :achievement_detail
    EOF
  end
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

