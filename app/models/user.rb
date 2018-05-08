class User < ApplicationRecord
  has_many :event_times
  has_many :events, through: :event_times
end
