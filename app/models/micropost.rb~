class Micropost < ActiveRecord::Base
  attr_accessible :content, :user_id
 belongs_to :user
validates :content, :length => { :maximum => 6 }
 validates_numericality_of :user_id,
                              :only_integer => true,
                              :allow_nil => false,
                              :if => Proc.new{|user| !user.user_id.blank?}




end
