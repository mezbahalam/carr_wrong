class Feedback < ActiveRecord::Base
  validates :email_address, :email => true
end
