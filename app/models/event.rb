class Event < ApplicationRecord
  has_many :users, through: :event_times
  has_many :event_times
end
