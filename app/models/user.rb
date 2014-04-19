class User < ActiveRecord::Base
  validates_uniqueness_of :twitter_handle
  validates_presence_of :twitter_handle
  validates :twitter_handle, format: {with: /\A@(\w){1,15}\z/}
end
