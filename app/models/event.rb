class Event < ApplicationRecord
  validates :title, length: { minimum: 5 }, presence: true
  validates :date, presence: true

  belongs_to :creator, class_name: 'User', foreign_key: 'creator_id'
  has_many :event_attendings, foreign_key: 'attended_event_id'
  has_many :attendees, through: :event_attendings, source: :attendee

  scope :upcoming, -> { where('date > ? ', Time.now) }
  scope :previous, -> { where('date < ? ', Time.now) }
end
