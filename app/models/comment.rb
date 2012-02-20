class Comment < ActiveRecord::Base
  validates :text, :presence => true
  belongs_to :user
  belongs_to :state
end
