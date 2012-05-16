class SubscriptionsController < ApplicationController

  def create

    Rails.logger.info "Got into the create method"
    
    @sub = Subscription.create(params[:subscription])

    Rails.logger.info "Trying to read sub #{@sub}"

    respond_to do |format|
      format.html { redirect_to :back, notice: "Subscription successfully created" }
    end
  end

  def destroy
    Subscription.destroy(params[:id])

    respond_to do |format|
      format.html { redirect_to :back, notice: "Subscription successfully removed" }
    end
  end

end
