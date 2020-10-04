module EventsHelper
  def display_check(event)
    return 'd-none' if current_user.nil? || !event.attendees.where(id: current_user.id).exists?
  end

  def display_attendee(event)
    return 'd-none' if current_user.nil? || event.attendees.where(id: current_user.id).exists?
  end
end
