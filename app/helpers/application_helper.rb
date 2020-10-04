module ApplicationHelper
  def hide_if_not_login
    return 'd-none' if current_user.nil?
  end

  def customized_navbar
    if !current_user.nil?
      (render partial: 'user_navbar').html_safe
    else
      (render partial: 'general_navbar').html_safe
    end
  end
end
