class AddIndexesToEventAttending < ActiveRecord::Migration[6.0]
  def change
    add_index :event_attendings, :attendee_id
    add_index :event_attendings, :attended_event_id
  end
end
