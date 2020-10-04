class User < ApplicationRecord
  validates :name, uniqueness: true, presence: true
  has_many :events, class_name: 'Event', foreign_key: 'creator_id', dependent: :delete_all
  has_many :event_attendings, foreign_key: 'attendee_id'
  has_many :attended_events, through: :event_attendings
end
