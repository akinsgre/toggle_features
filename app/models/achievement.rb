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
