class PrelaunchSubscribersController < ApplicationController
  def new
    @prelaunch_subscriber = PrelaunchSubscriber.new
  end

  def create
    @prelaunch_subscriber = PrelaunchSubscriber.new(params[:prelaunch_subscriber].permit(:email))

    if @prelaunch_subscriber.save
      flash[:success] = "You have been subscribed"
      redirect_to new_prelaunch_subscriber_path
    else
      flash[:error] = "You have entered an invalid email"
      redirect_to new_prelaunch_subscriber_path
    end
  end
end
