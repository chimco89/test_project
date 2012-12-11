class User < ActiveRecord::Base
  attr_accessible :email, :name
validates_uniqueness_of :name,
                           :message => "Already registered name"
                           
   validates_presence_of :name,
                         :message => "name is required"

validates_format_of :email,
                       :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i,
                       :message => "Invalid email",
                       :if => Proc.new{|user| !user.email.blank?}



has_many :microposts
end
