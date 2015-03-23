class Admin::DashboardController < AdminsController
  def home

  end

  def subscribers
    @subscribers = PrelaunchSubscriber.all
  end
end
