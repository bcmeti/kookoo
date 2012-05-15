class SubscriptionsController < ApplicationController

  def create
    @sub = Subscription.create({:subscriber_id => params[:subscriber_id], :subscribee_id => params[:subscribee_id]})
    redirect_to :back
  end

  def destroy
    @sub = Subscription.find_by_subscriber_id_and_subscribee_id(params[:subscriber_id], params[:subscribee_id])
    @sub.destroy
    redirect_to :back
  end

end
