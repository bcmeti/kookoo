module UsersHelper

  def me?
    @user.id == current_user.id
  end

  def subscribed?
    not current_user.subscriptions.find_by_subscribee_id(@user.id).blank?
  end

end
