module UsersHelper

  def me?
    @user.id == current_user.id unless current_user.blank?
  end

  def user_is_me? id
    id == current_user.id unless current_user.blank?
  end

  def subscribed_to_user? id
    not current_user.subscriptions.find_by_subscribee_id(id).blank? unless current_user.blank?
  end

end
